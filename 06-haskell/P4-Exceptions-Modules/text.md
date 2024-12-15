# Haskell. Обработка исключений. Модули
Презентацию выполнили студенты гр. 5030102/10201:
- Костюхин Алексей
- Тасаков Антон
- Теплов Андрей

## Содержание
- [Тип Maybe в Haskell](#тип-maybe-в-haskell)
  - [Описание](#описание)
  - [Использование в качестве исключений (Nothing)](#использование-в-качестве-исключений-nothing)
- [Тип Either в Haskell](#тип-either-в-haskell)
  - [Описание](#описание-1)
  - [Использование в качестве исключений (Left)](#использование-в-качестве-исключений-left)
- [Класс монад в Haskell](#класс-монад-в-haskell)
  - [Описание монад](#описание-монад)
  - [Законы монад](#законы-монад)
  - [Maybe как монада](#maybe-как-монада)
  - [Either как монада](#either-как-монада)
  - [do-нотация](#do-нотация)
- [Модуль Control.Monad.Except в Haskell](#модуль-controlmonadexcept-в-haskell)
  - [ExceptT и runExceptT](#exceptt-и-runexceptt)
  - [MonadError](#monaderror)
    - [throwError](#throwerror)
    - [catchError](#catcherror)
  - [lift](#lift)
  - [Пример использования модуля Control.Monad.Except](#пример-использования-модуля-controlmonadexcept)
  - [Особенности Control.Monad.Except](#особенности-controlmonadexcept)
- [Модуль Control.Exception](#модуль-controlexception)
  - [Иерархия исключений](#иерархия-исключений)
  - [Пользовательский тип исключений](#пользовательский-тип-исключений)
  - [throw и throwIO](#throw-и-throwio)
  - [try, catch, finally](#try-catch-finally)
  - [bracket и evaluate](#bracket-и-evaluate)
  - [Пример использования модуля Control.Exception](#пример-использования-модуля-controlmonadexception)
- [Модули в Haskell](#модули-в-haskell)
  - [Создание модуля (module ... where)](#создание-модуля-module--where)
  - [Включение модуля (import)](#включение-модуля-import)
  - [Иерархия модулей](#иерархия-модулей)
  - [Cabal](#cabal)

## Тип Maybe в Haskell

### Описание

**Maybe** — это параметризованный тип данных в Haskell, используемый для представления значения, которое может отсутствовать. Это один из наиболее распространенных типов в Haskell, который помогает избегать ошибок, связанных с отсутствующими данными (например, `null` в других языках).

**Пример определения типа Maybe:**
```haskell
data Maybe a = Nothing | Just a
```
- `Nothing` — указывает на отсутствие значения;
- `Just a` — содержит значение типа a.


### Использование в качестве исключений (Nothing)

**Maybe** — это безопасный способ обработки потенциально отсутствующих значений без использования исключений, как в других языках. Вместо того чтобы выбрасывать ошибку, можно вернуть Nothing.

**Пример обработки ошибок с `Nothing`**
```haskell
safeDivide :: Double -> Double -> Maybe Double
safeDivide _ 0 = Nothing
safeDivide x y = Just (x / y)

-- Пример вызова
safeDivide 10 2   -- Результат: Just 5.0
safeDivide 10 0   -- Результат: Nothing
```

**Преимущества использования Maybe:**
- Использование **Maybe** вместо работы с `null` предотвращает распространённые ошибки, связанные с отсутствующими значениями.
- Если функция возвращает **Maybe**, это явно сигнализирует о том, что результат может отсутствовать.


## Тип Either в Haskell

### Описание

**Either** — это параметризованный тип данных в Haskell, который используется для представления двух альтернативных результатов:
- успешный результат (обычно с помощью конструктора **Right**);
- ошибка или исключение (с помощью конструктора **Left**).

**Пример определения типа Either:**
```haskell
data Either a b = Left a | Right b
```
- `Left a` — содержит значение типа a, обычно используется для представления ошибок;
- `Right b` — содержит значение типа b, обычно представляет успешный результат.

### Использование в качестве исключений (Left)

Конструктор **Left** часто используется для представления ошибок или исключительных ситуаций. В отличие от механизма исключений в других языках, в Haskell ошибки обрабатываются явно через тип **Either**.

**Пример обработки ошибок с Either**
```haskell
safeDivide :: Double -> Double -> Either String Double
safeDivide _ 0 = Left "Division by zero!"
safeDivide x y = Right (x / y)

-- Пример вызова
safeDivide 10 2   -- Результат: Right 5.0
safeDivide 10 0   -- Результат: Left 'Division by zero!'
```

**Преимущества использования Either**
- Возврат **Either** вместо вызова исключений делает код более предсказуемым, так как ошибки обрабатываются явно.
- **Either** поддерживает разные типы для ошибок (**Left**) и успешных результатов (**Right**), что делает его универсальным.

## Класс монад в Haskell

### Описание монад

**Монада** — это абстракция в Haskell, которая позволяет последовательно комбинировать вычисления, включая обработку контекста (например, возможные ошибки, состояние, асинхронность и т.д.). Монада является частью системы классов типов и предоставляет стандартный интерфейс для работы с такими типами.

Класс монад определяется следующим образом:
```haskell
type Monad :: (* -> *) -> Constraint
class Applicative m => Monad m where
    (>>=) :: m a -> (a -> m b) -> m b
    (>>) :: m a -> m b -> m b
    return :: a -> m a
    {- # MINIMAL (>>=) # -}
```
- `return` - вводит значение в монаду.
- `\>>=` ("bind") - используется для последовательного применения функций к значениям в монадическом контексте.
- `\>>` - игнорирует результат первого действия, выполняя только эффекты.

**Монады как концепция:**
1.	Монады обрабатывают контекст. Вычисления могут быть обёрнуты в дополнительную информацию, например:
    - Maybe — вычисление может закончиться без результата.
    - Either — вычисление может завершиться ошибкой с сообщением.
    - IO — выполнение связано с побочными эффектами.
2.	Монада позволяет выстраивать последовательные вычисления.

### Законы монад

Монады должны удовлетворять трём законам:
1.	**Закон левосторонней единицы** (`return` является левым элементом для `>>=`):
```haskell
return a >>= f  ==  f a
```
Обёртывание значения в монаду через `return` не влияет на дальнейшее вычисление.

2.	**Закон правосторонней единицы** (применение `return` в конце не изменяет вычисление):
```haskell
m >>= return  ==  m
```

3.	**Закон ассоциативности** (>>= можно группировать любым способом):
```haskell
(m >>= k) >>= h  ==  m >>= (\x -> k x >>= h)
```

### Maybe как монада

Тип Maybe является монадой, потому что он поддерживает последовательные вычисления с возможностью отсутствия результата.

**Определение монад для Maybe:**
```haskell
instance Monad Maybe where
    return = Just
    Nothing >>= _ = Nothing
    (Just x) >>= f = f x
```

### Either как монада

Тип Either также является монадой. Он используется для последовательных вычислений с возможностью представления ошибок (Left).

**Определение монад для Either:**
```haskell
instance Monad (Either e) where
    return = Right
    (Left e) >>= _ = Left e
    (Right x) >>= f = f x
```

### do-нотация

**do-нотация** — это синтаксический сахар для упрощения работы с монадическими вычислениями. Она позволяет писать последовательные операции в стиле императивного программирования.

**Пример:**
```haskell
exampleMaybe :: Maybe Int
exampleMaybe = do
    x <- Just 10    -- Получить значение из Just
    y <- Just 20    -- Получить значение из Just
    return (x + y)  -- Вернуть результат

-- Эквивалентное выражение без do:
exampleMaybe' :: Maybe Int
exampleMaybe' = Just 10 >>= (\x -> Just 20 >>= (\y -> return (x + y)))
```

**Преимущества do-нотации:**
- Упрощение чтения и написания монадических цепочек.
- Возможность комбинировать вычисления, явно указывая на последовательность.
- Более естественный синтаксис для работы с монадическими типами, такими как Maybe, Either, IO.


## Модуль Control.Monad.Except в Haskell

Модуль Control.Monad.Except предоставляет инструменты для обработки ошибок в монадическом контексте, включая трансформер монады **ExceptT** и класс **MonadError**. Он позволяет управлять ошибками в стиле исключений, но с явным контролем через монады.

### ExceptT и runExceptT

**ExceptT** — это трансформер монады, который добавляет обработку ошибок (контекст типа Either) к другой монаде.

**Определение:**
```haskell
newtype ExceptT e m a = ExceptT { runExceptT :: m (Either e a) }
```
- e — тип ошибок;
- m — базовая монада;
- a — тип значения в случае успеха.

### MonadError

**MonadError** — это класс типов, который предоставляет стандартный интерфейс для работы с ошибками в монадическом контексте. Он тесно связан с ExceptT.

**Определение класса MonadError**
```haskell
class Monad m => MonadError e m | m -> e where
    throwError :: e -> m a
    catchError :: m a -> (e -> m a) -> m a
```
`throwError` используется для генерации ошибок внутри монады и создаёт значение типа Left в контексте ExceptT. Пример:
```haskell
example :: ExceptT String IO Int
example = do
    throwError "This is an error"
    return 42  -- Это не выполнится из-за throwError
```

`catchError` позволяет обработать ошибку (Left) и продолжить выполнение с другим значением или результатом. Пример:
```haskell
example :: ExceptT String IO Int
example = do
    x <- catchError (throwError "Something went wrong") (\err -> return 42)
    return (x + 1)
```
В данном примере вместо ошибки будет возвращено значение `42 + 1 = 43`.

### lift

**lift** — это функция, позволяющая "поднять" действие из базовой монады в трансформированную (ExceptT в данном случае).

**Пример:**
```haskell
example :: ExceptT String IO Int
example = do
    lift $ putStrLn "Enter a number:"
    input <- lift getLine
    return (read input)
```
**lift** позволяет использовать действия из базовой монады **IO** внутри **ExceptT**.

### Пример использования модуля Control.Monad.Except
```haskell
import Control.Monad.Except

type App = ExceptT String IO

divide :: Double -> Double -> App Double
divide _ 0 = throwError "Division by zero"
divide x y = return (x / y)

runApp :: App () -> IO ()
runApp app = do
    result <- runExceptT app
    case result of
        Left err  -> putStrLn $ "Error: " ++ err
        Right val -> putStrLn "Success!"

main :: IO ()
main = runApp $ do
    res <- divide 10 2
    lift $ putStrLn $ "Result: " ++ show res
```

### Особенности Control.Monad.Except
- Модуль позволяет работать с различными типами ошибок и легко добавляет их обработку в любые монады.
- Работает со всеми базовыми монадическими функциями, такими как **lift**, `>>=`, **do-нотация**.
- Ошибки обрабатываются явно, что упрощает отладку.

## Модуль Control.Exception

В Haskell система обработки исключений позволяет работать с ошибками и неожиданными состояниями. Она предоставляет средства для явного управления исключениями через механизмы стандартной библиотеки, особенно в контексте **IO**.

### Иерархия исключений

В Haskell исключения представляют собой значения типов, относящихся к классу Exception, определённому в модуле Control.Exception.

**Иерархия Exception:**
```haskell
class (Show e, Typeable e) => Exception e where
    toException   :: e -> SomeException
    fromException :: SomeException -> Maybe e
```
Исключения могут быть системными (IOError, ArithException) или пользовательскими.

Примеры стандартных исключений:
- **SomeException** - базовый тип для всех исключений.
- **ArithException** - исключения арифметики (деление на ноль и т.д.).
- **IOException** - ошибки ввода-вывода.
- **AsyncException** - асинхронные исключения (например, прерывание программы).

### Пользовательский тип исключений

В Haskell можно определить свои собственные типы исключений, реализовав **Exception**.

**Пример:**
```haskell
import Control.Exception

-- Определение пользовательского исключения
data MyException = MyException String
    deriving (Show)

instance Exception MyException
```
### throw и throwIO

`throw` - используется для генерации исключений в чистых функциях. Тип: `Exception e => e -> a`.

**Пример:**
```haskell
throw (MyException "Something went wrong!")
```

`throwIO` - используется для генерации исключений в контексте IO. Тип: `Exception e => e -> IO a`.

**Пример:**
```haskell
main :: IO ()
main = throwIO (MyException "Error in IO!")
```
**Разница между `throw` и `throwIO`:**
- `throw` выбрасывает исключение в чистом коде, но может быть отложено из-за ленивого вычисления. Используется для значений любого типа.
- `throwIO` выбрасывает исключение в контексте IO с немедленным эффектом. Гарантирует правильный порядок действий в IO.


### try, catch, finally
**Пример использования `try`:**
```haskell
import Control.Exception

main :: IO ()
main = do
    result <- try (readFile "nonexistent.txt") :: IO (Either IOException String)
    case result of
        Left err  -> putStrLn $ "Caught exception: " ++ show err
        Right val -> putStrLn val
```

1.	Назначение `try`:
- Оборачивает выполнение действия (в данном случае чтение файла `readFile "nonexistent.txt"`) и перехватывает исключения.
- Возвращает результат в виде значения типа Either.
  - Left содержит исключение.
  - Right содержит результат успешного выполнения действия.

2.	Тип возвращаемого результата:
- В данном примере тип: IO (`Either IOException String`).
- Указывает, что действие может либо завершиться с исключением (`IOException`), либо вернуть строку (`String`).

3.	Обработка результата:
- Конструкцию `case`:
  - Если результат — `Left err`, выводится сообщение об ошибке с описанием исключения.
  - Если результат — `Right val`, выводится содержимое файла.

4.	В примере: файл `nonexistent.txt` не существует, поэтому будет выброшено исключение `IOException`, и программа выведет сообщение:
```
Caught exception: nonexistent.txt: openFile: does not exist (No such file or directory)
```

**Пример использования catch**
```haskell
import Control.Exception

main :: IO ()
main = do
    content <- catch (readFile "nonexistent.txt") handler
    putStrLn content
  where
    handler :: IOException -> IO String
    handler e = return "File not found!"
```

1.	Назначение `catch`:
- Перехватывает исключения во время выполнения действия.
- Позволяет обработать исключение определённого типа (в данном случае IOException) и выполнить альтернативное действие.

2.	Тип `catch`:
```haskell
catch :: Exception e => IO a -> (e -> IO a) -> IO a
```
- Первый аргумент: действие, которое может выбросить исключение (в данном примере `readFile "nonexistent.txt"`).
- Второй аргумент: обработчик исключений (`handler`), который принимает исключение (`IOException`) и возвращает значение того же типа, что и действие (в данном примере `IO String`).

3.	Работа обработчика (`handler`):
- Если исключение выброшено, управление передаётся функции `handler`. В данном примере, если файл не существует, `handler` возвращает строку "File not found!".

4.	В примере произойдёт следующее:
- Поскольку файл `nonexistent.txt` отсутствует, `readFile` выбросит исключение `IOException`.
- `handler` обработает его и вернёт строку `"File not found!"`, которая затем будет выведена на экран.

**Пример использования finally**
```haskell
import Control.Exception

main :: IO ()
main = do
    result <- (readFile "example.txt" `finally` putStrLn "Cleanup!")
    putStrLn result
```

1.	Назначение `finally`:
- Гарантирует выполнение указанного действия (в данном случае `putStrLn "Cleanup!"`) независимо от того, завершилось ли основное действие успешно или с исключением.

2.	Тип finally:
```haskell
finally :: IO a -> IO b -> IO a
```
- Первый аргумент: основное действие (`readFile "example.txt"`).
- Второй аргумент: завершающее действие (`putStrLn "Cleanup!"`).

3.	Принцип действия:
- Выполняет основное действие.
- После завершения основного действия (независимо от его успеха или ошибки) выполняет завершающее действие.

4.	В примере произойдёт следующее:
- Если файл `example.txt` существует, то программа:
  - Считает содержимое файла.
  - Выведет сообщение `"Cleanup!"`.
  - Напечатает содержимое файла.
- Если файл отсутствует, то:
  - Исключение прервёт чтение файла.
  - Сообщение `"Cleanup!"` всё равно будет напечатано.
  - Затем программа завершится с ошибкой.

Вывод для **успешного случая** (если файл существует):
```
Cleanup!
<содержимое файла>
```
Вывод для **случая с исключением** (если файл отсутствует):
```
Cleanup!
example.txt: openFile: does not exist (No such file or directory)
```

### bracket и evaluate

**bracket** используется для безопасного управления ресурсами и гарантирует освобождение ресурсов (например, закрытие файлов) даже при возникновении исключений.
Тип:
```haskell
bracket :: IO a -> (a -> IO b) -> (a -> IO c) -> IO c
```
- Первый аргумент: действие для выделения ресурса.
- Второй аргумент: действие для освобождения ресурса.
- Третий аргумент: основное действие.

**Пример:**
```haskell
import Control.Exception
import System.IO

main :: IO ()
main = bracket
    (openFile "example.txt" ReadMode)  -- Выделение ресурса
    hClose                             -- Освобождение ресурса
    (\handle -> do                     -- Основное действие
        content <- hGetContents handle
        putStrLn content)
```


**evaluate** используется для немедленной оценки ленивого выражения, что позволяет исключениям проявляться в предсказуемый момент.
Тип:
```haskell
evaluate :: a -> IO a
```
**Пример:**
```haskell
import Control.Exception

main :: IO ()
main = do
    result <- try (evaluate (5 `div` 0)) :: IO (Either SomeException Int)
    case result of
        Left err  -> putStrLn $ "Caught exception: " ++ show err
        Right val -> print val
```
### Пример использования модуля Control.Monad.Exception
```haskell
riskyAction :: IO ()
riskyAction = do
    putStrLn "Performing risky action..."
    throwIO (MyException "Something went wrong!")

main :: IO ()
main = do
    result <- try riskyAction -- `try` возвращает Either
    case result of
        Left (ex :: MyException) -> putStrLn $ "Caught exception: " ++ show ex
        Right _ -> putStrLn "Risky action completed successfully."

    putStrLn "This will run regardless of exceptions."

    -- Пример с `catch` и `finally`
    (riskyAction
        `catch` \(ex :: MyException) -> putStrLn $ "Handled exception: " ++ show ex)
        `finally` putStrLn "Cleanup: This always runs."
```

## Модули в Haskell

Модули в Haskell позволяют организовать код, разделять функциональность на части и управлять областью видимости функций. Каждый модуль - это файл с кодом, и его функции могут быть экспортированы или скрыты от других частей программы.

### Создание модуля (module ... where)

Модуль создаётся с помощью ключевого слова `module`, после которого указывается `имя модуля` и ключевое слово `where`, которое указывает на начало тела модуля.

Заголовок модуля может быть более детализированным. В нём можно указать, какие функции экспортируются. В примере ниже функции `hello` и `double` будут доступны для других модулей, а `privateFunction` будет скрытой.

**Пример:**
```haskell
module MyModule (hello, double) where

{-   Функции, которые будут экспортированы    -}
hello :: String
hello = "Hello, World!"

double :: Int -> Int
double x = x * 2

{-  Функция, которая не будет экспортирована  -}
privateFunction :: Int -> Int
privateFunction x = x + 1
```
- Экспортируемые функции, указанные в заголовке модуля, могут быть использованы в других частях программы.
- Неэкспортируемые функции, которые не указаны в заголовке, будут скрыты от других модулей.


### Включение модуля (`import`)

Модуль можно включать в другие модули с помощью ключевого слова `import`.

Варианты импорта:
1.	Импорт всего модуля (всех его функций):
```haskell
import Data.List
```

2.	Импорт конкретных функций (`sort` и `nub`):
```haskell
import Data.List (sort, nub)
```

3.	Импорт всего, кроме конкретных функций (`nub`):
```haskell
import Data.List hiding (nub)
```

4.	Импорт с префиксом (алиас). Он даёт возможность использовать функции с префиксом, например, L.sort.:
```haskell
import qualified Data.List as L
```


### Иерархия модулей

Haskell поддерживает иерархию модулей, где они могут быть организованы в каталоги, а имена модулей отражают структуру директорий.

**Пример:**
- Файл `Data/Char.hs` будет представлен модулем `Data.Char`.
- Пример кода в модуле `Data.Char`:
    ```haskell
    module Data.Char (isDigit, toUpper) where

    isDigit :: Char -> Bool
    isDigit c = c `elem` ['0'..'9']

    toUpper :: Char -> Char
    toUpper c = ...  -- Реализация
    ```
- Включение этого модуля в другой файл будет выглядеть как:
    ```haskell
    import Data.Char (isDigit)
    ```
### Cabal

**Cabal** — это инструмент для управления проектами в Haskell, который позволяет управлять зависимостями, настройками и сборкой проектов.

**Описание**

Он использует файлы конфигурации `.cabal`, где описываются метаданные проекта, его зависимости и настройки сборки.

Пример `.cabal` файла:
```cabal
name:                myproject
version:             0.1.0.0
build-type:          Simple
cabal-version:       >= 1.10

executable myproject
  main-is:           Main.hs
  hs-source-dirs:    src
  build-depends:     base >= 4.7 && < 5
  default-language:   Haskell2010
```
- `name` - имя проекта;
- `version` - его версия;
- `build-type` - тип сборки (чаще всего используется Simple);
- `cabal-version` - версия Cabal;
- `executable` - это описание исполнимого файла проекта;
- `main-is` - главный модуль;
- `hs-source-dirs` - директория исходных файлов;
- `build-depends` - список зависимостей;
- `default-language` - используемый язык программирования.

**Настройка проекта**

Настройка проекта с помощью Cabal происходит при помощи команд, представленных в таблице:
| **Команда**            | **Описание**                                                                                           |
|------------------------|-------------------------------------------------------------------------------------------------------|
| `cabal init`           | Инициализация нового проекта. Создаёт файл `.cabal`, который описывает проект.                        |
| `cabal build`          | Сборка проекта. Компилирует исходный код и генерирует исполнимый файл.                                 |
| `cabal run`            | Запуск исполнимого файла после сборки.                                                                |
| `cabal install`        | Установка зависимостей, указанных в файле `.cabal`.                                                     |
| `cabal test`           | Запуск тестов, если они настроены в проекте.                                                           |
| `cabal update`         | Обновление списка доступных пакетов из репозитория.                                                   |
| `cabal clean`          | Очистка промежуточных файлов и каталогов, созданных при сборке (например, скомпилированных файлов).   |
| `cabal configure`      | Настройка конфигурации проекта, особенно если проект зависит от внешних библиотек.                    |
| `cabal new-build`      | Использование новой системы сборки, более быстрая и более современная.                               |
| `cabal new-install`    | Установка пакетов с использованием новой системы установки.                                          |
| `cabal repl`           | Открытие интерактивной сессии GHCi с возможностью загрузить проект и его зависимости.                |
