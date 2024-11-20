# Haskell. Первое знакомство
Презентацию выполнели студенты гр. 5030102/10201:
- Костюхин Алексей
- Тасаков Антон
- Теплов Андрей

## Содержание

- [История Haskell](#история-haskell)
- [Характеристика Haskell](#характеристика-haskell)
  - [Часть семейства функциональных языков](#часть-семейства-функциональных-языков)
  - [Модель вычислений, основанная на концепции лени (ленивые вычисления)](#модель-вычислений-основанная-на-концепции-лени-ленивые-вычисления)
  - [Полиморфизм, основанный на параметричности и классах типов](#полиморфизм-основанный-на-параметричности-и-классах-типов)
  - [Воплощение понятия чистоты](#воплощение-понятия-чистоты)
  - [Строгая статическая типизация с автоматическим выводом типов](#строгая-статическая-типизация-с-автоматическим-выводом-типов)
- [Применение Haskell](#применение-haskell)
  1. [Научные исследования  и образование](#1-научные-исследования--и-образование)
  2. [Блокчейн, криптовалюта  и финансовые системы](#2-блокчейн-криптовалюта--и-финансовые-системы)
  3. [Backend-разработка и разработка ПО](#3-backend-разработка-и-разработка-по)
- [Запуск Haskell в Docker](#запуск-haskell-в-docker)
- [Редактор Кода](#редактор-кода)
  - [Основные особенности VS Code](#основные-особенности-vs-code)
  - [Расширения VS Code для Haskell](#расширения-vs-code-для-haskell)
    - [1. Haskell Syntax Highlighting](#1-haskell-syntax-highlighting)
      - [Основные функции](#основные-функции)
      - [Преимущества](#преимущества)
    - [2. Haskell](#2-haskell)
      - [Основные функции](#основные-функции-1)
      - [Преимущества](#преимущества-1)
- [Hello World на Haskell](#hello-world-на-haskell)
  - [Файл `Main.hs`](#файл-mainhs)
  - [Компиляция и выполение программы](#компиляция-и-выполение-программы)

## История Haskell
Haskell принадлежит к семейству языков ML. Непосредственно на него оказал большое влияние язык Миранда, разработанный в 1985 году Дэвидом Тёрнером. Миранда был первым чистым функциональным языком, имевшим коммерческую поддержку, и был относительно популярен в 1980-х годах, но оставался собственническим программным обеспечением. Это затрудняло развитие и исследования возможностей ленивого функционального программирования, поэтому буквально за пару лет появилось более десятка схожих языков. Чтобы объединить усилия разных разработчиков в 1987 году на конференции по функциональным языкам программирования и компьютерной архитектуре в Орегоне (FPCA’87) было решено создать комитет для разработки открытого стандарта.

В 1990 году была предложена первая версия языка, Haskell 1.0. В дальнейшем работа комитета продолжилась, и в 1999 году был опубликован «The Haskell 98 Report», который стал стабильным стандартом языка на много лет.

Версия языка Haskell 2010 — была объявлена в конце 2009 года, но последней «значительной» версией (стандартом) остаётся Haskell 98.

## Характеристика Haskell

### Часть семейства функциональных языков
Haskell принадлежит к семейству функциональных языков программирования, основным принципом которых является использование функций как первоклассных объектов и акцент на декларативном подходе к решению задач. В отличие от императивных языков, которые фокусируются на изменении состояния и последовательности операций, функциональные языки, такие как Haskell, описывают вычисления как применение функций к значениям. В Haskell функции — это не просто процедуры, но фундаментальные строительные блоки программы, поддерживающие **высшие функции**, **частичное применение** и **композицию функций**.

### Модель вычислений, основанная на концепции лени (ленивые вычисления)
Haskell реализует ленивые вычисления, что означает, что выражения не вычисляются до тех пор, пока результат их вычисления не станет необходимым. Это позволяет значительно оптимизировать производительность, особенно при работе с бесконечными структурами данных (например, бесконечными списками) или при необходимости пропускать часть вычислений, если результат уже известен. Такая модель вычислений помогает избегать ненужных операций и предоставляет гибкость в работе с потоками данных, которые могут быть бесконечными или вычисляемыми частями.

### Полиморфизм, основанный на параметричности и классах типов
Haskell поддерживает полиморфизм, позволяющий функциям и структурам данных быть обобщёнными и работать с любыми типами. Важную роль здесь играют классы типов, которые позволяют задавать ограничения на типы. Это сочетание **параметрического полиморфизма** (когда функции могут быть параметризованы типами) и **ad-hoc полиморфизма** (через классы типов) делает Haskell чрезвычайно гибким и мощным в работе с типами. Классы типов, такие как **Eq**, **Ord**, и **Show**, позволяют создавать интерфейсы, которые могут быть реализованы для разных типов, сохраняя при этом строгую типовую безопасность.

### Воплощение понятия чистоты
Одним из фундаментальных принципов Haskell является концепция чистоты — все функции в языке чисты, что означает, что они не имеют побочных эффектов и всегда возвращают одно и то же значение для одних и тех же аргументов. Это свойство значительно упрощает рассуждения о программах, делает код предсказуемым и легко тестируемым, а также поддерживает высокоуровневую оптимизацию компилятором. Для работы с эффектами, такими как ввод-вывод или состояние, Haskell использует **монадический подход**, позволяющий явно изолировать и управлять побочными эффектами.

### Строгая статическая типизация с автоматическим выводом типов
Haskell имеет строгую систему статической типизации, что означает, что типы проверяются на этапе компиляции, гарантируя отсутствие ошибок типов в момент выполнения программы. Статическая типизация помогает избежать многих ошибок и делает программы более надёжными. Важной особенностью Haskell является поддержка автоматического вывода типов: программист не обязан явно указывать типы переменных или функций, поскольку компилятор Haskell способен автоматически вывести их на основе структуры программы. Это уменьшает необходимость в явной аннотации типов, при этом сохраняя безопасность типов на высоком уровне.

## Применение Haskell

### 1. Научные исследования  и образование
Haskell благодаря своей чистоте и строгой математической основе часто используется в академической среде. Это язык, который активно применяется для изучения функционального программирования и связанных с ним концепций в университетах. Его мощная система типов и выраженная поддержка абстракций делают его отличным инструментом для преподавания и исследований в области теории языков программирования, семантики и компиляторов. Помимо этого, Haskell используется в научных исследованиях, требующих точности вычислений, и при построении симуляций, особенно в областях, где математическая корректность и предсказуемость являются критически важными.

### 2. Блокчейн, криптовалюта  и финансовые системы
Хотя Haskell не так широко используется в веб-разработке, как другие языки, его преимущества проявляются в backend-разработке сложных систем. Haskell может обеспечить высокую производительность, особенно при работе с параллелизмом и асинхронными операциями, что делает его подходящим для масштабируемых и надёжных серверных решений.

### 3. Backend-разработка и разработка ПО
Haskell активно используется в разработке блокчейн-платформ и финансовых систем, благодаря строгой системе типов и чистоте функций. В этой области критически важно избежать ошибок, и строгая типизация Haskell обеспечивает высокую надёжность кода.

## Запуск Haskell в Docker

Официальный Docker образ для Haskell предоставляет готовую среду для разработки и запуска приложений на Haskell, упрощая установку и настройку необходимых инструментов. Этот образ базируется на Linux и включает в себя Haskell Toolchain (**GHCi** — интерпретатор Haskell, **GHC** — компилятор Haskell, **Stack** — система управления проектами и зависимостями, и **Cabal** — система сборки), что позволяет быстро начать разработку, компиляцию и выполнение программ на Haskell в изолированной среде.

Запуск интерпретатора Haskell в интерактивном режиме:
```sh
sudo docker run --rm -it haskell
```
Запуск компилятора Haskell с монтированием томов:
```sh
sudo docker run --rm -v $(pwd):/app -w /app haskell ghc Source.hs
```
- `docker run` — запускает докер-контейнер (в данном случае `haskell:latest`), при необходимости скачивает образ.
- флаг `--rm` — контейнер будет автоматически удалён после завершения.
- флаг `-i` — оставляет стандартный ввод контейнера открытым, что позволяет взаимодействовать с контейнером в интерактивном режиме.
- флаг `-t` — cоздаёт псевдотерминал (TTY) для контейнера, что нужно для работы с интерактивными приложениями.
- флаг `-v` — связывает папку на хосте с папкой в контейнере (в данном случае `$(pwd)` (текущее расположение) и `/app`).
- флаг `-w` — устанавливает рабочую директорию контейнера  (в данном случае `/app`). Все команды, выполняемые внутри контейнера, будут выполняться относительно этой директории.
- `ghc Source.hs` — запускает компилятор haskell для файла `Source.hs`.

## Редактор Кода

[**Visual Studio Code (VS Code)**](https://code.visualstudio.com/download) — это популярный бесплатный редактор исходного кода, разработанный корпорацией Microsoft. Он предназначен для разработки на различных языках программирования и платформ, сочетая в себе лёгкость текстового редактора и мощь полнофункциональной интегрированной среды разработки (IDE). VS Code поддерживает широкий спектр расширений, что делает его одним из наиболее гибких инструментов для разработчиков.

### Основные особенности VS Code

1. **Лёгкость и быстрота**
   VS Code разработан как лёгкий редактор, который загружается и работает быстро, в отличие от традиционных IDE. Он оптимизирован для запуска даже на относительно слабых системах, что делает его удобным для повседневного использования.

2. **Кроссплатформенность**
   VS Code поддерживает работу на разных операционных системах, включая **Windows**, **macOS** и **Linux**. Независимо от платформы, разработчики получают одинаковый интерфейс и набор функций.

3. **Поддержка множества языков программирования**
   По умолчанию редактор поддерживает большое количество языков программирования, включая **Haskell**.

4. **Мощная система расширений**
   Одной из ключевых особенностей VS Code является богатая экосистема расширений, которые можно устанавливать через **Marketplace**. Эти расширения позволяют добавлять поддержку новых языков, фреймворков и инструментов.

5. **Интеграция с Git**
   VS Code предоставляет встроенную поддержку систем контроля версий, таких как **Git**, позволяя выполнять команды вроде `commit`, `push`, `pull` и отслеживать изменения прямо из редактора. Система контроля версий визуализируется в виде удобного интерфейса, что упрощает работу с репозиториями и ветками.

6. **Редактирование с подсветкой синтаксиса и IntelliSense**
   Поддержка подсветки синтаксиса и автозавершение кода (**IntelliSense**) — одна из самых полезных функций для ускорения написания и чтения кода. IntelliSense предоставляет подсказки по методам, функциям и параметрам, что помогает сократить количество ошибок и улучшить качество кода.

7. **Отладка (Debugging)**
   Встроенный отладчик позволяет запускать и проверять код прямо в редакторе. Он поддерживает точки останова, просмотр переменных, стек вызовов и многое другое. Для большинства популярных языков программирования и фреймворков доступны плагины, расширяющие возможности отладки.

8. **Терминал внутри редактора**
   VS Code предоставляет встроенный терминал, который можно использовать параллельно с работой в редакторе. Это позволяет разработчикам выполнять команды оболочки, не переключаясь между приложениями, что повышает продуктивность.

9. **Поддержка контейнеров и удалённой разработки**
   С помощью расширений для **Docker**, **Remote Development** и **WSL (Windows Subsystem for Linux)**, VS Code позволяет работать с кодом внутри контейнеров или на удалённых серверах, что значительно расширяет возможности разработки.

### Расширения VS Code для Haskell

VS Code поддерживает расширения, которые улучшают работу с различными языками программирования, и для Haskell есть несколько полезных дополнений. Давайте рассмотрим два популярных расширения для работы с Haskell:

#### 1. [Haskell Syntax Highlighting](https://marketplace.visualstudio.com/items?itemName=justusadam.language-haskell)

**Haskell Syntax Highlighting** — это расширение для подсветки синтаксиса Haskell в Visual Studio Code. Оно облегчает чтение и редактирование кода на Haskell за счёт визуального выделения различных элементов кода.

##### Основные функции:
- **Подсветка синтаксиса**: Расширение выделяет ключевые элементы Haskell-кода, такие как ключевые слова (`let`, `in`, `data`, `module`), типы, функции, переменные и операторы. Это помогает разработчикам легко распознавать структуру программы и улучшает читаемость.
- **Совместимость с файлами `.hs`, `.lhs`, `.cabal`**: Расширение автоматически активируется при открытии файлов Haskell и `.cabal` (файлов конфигурации для системы сборки Cabal).

Это расширение предоставляет базовые возможности для разработчиков, которые только начинают работу с Haskell в VS Code, или для тех, кто предпочитает использовать минимум инструментов для простого редактирования кода.

##### Преимущества:
- Лёгкое и не требует больших ресурсов.
- Быстрая установка и мгновенная активация.
- Улучшенная читабельность Haskell-кода в редакторе.

#### 2. [Haskell](https://marketplace.visualstudio.com/items?itemName=haskell.haskell)

**Haskell** — это более мощное расширение для работы с Haskell, предоставляющее комплексные функции для разработки, такие как автодополнение, отладка и интеграция с инструментами сборки (Stack и Cabal). Оно основано на **Haskell Language Server (HLS)**, который обеспечивает богатый функционал для редактирования кода, проверки типов и отладки.

##### Основные функции:
- **Автодополнение (IntelliSense)**: Расширение предоставляет интеллектуальные подсказки и автозавершение для Haskell, основываясь на типах и функциях, доступных в вашем коде. Это помогает разработчикам быстрее писать код и снижает вероятность ошибок.
- **Проверка типов и диагностика**: Используя Haskell Language Server, расширение проверяет код на наличие ошибок в реальном времени. Оно показывает ошибки компиляции, предупреждения и типовые несоответствия прямо в редакторе.
- **Поддержка Stack и Cabal**: Расширение автоматически интегрируется с проектами, использующими **Stack** и **Cabal**. Оно может автоматически находить зависимости, компилировать проект и запускать тесты прямо из VS Code.
- **Поддержка GHCi**: Разработчики могут запускать интерактивную сессию **GHCi** (интерпретатор Haskell) прямо из редактора. Это удобно для быстрого тестирования кода и отладки.
- **Форматирование кода**: Расширение поддерживает инструменты форматирования кода, такие как **Brittany** и **Ormolu**, для приведения кода к общим стандартам стиля.
- **Jump to Definition и Hover Info**: Можно быстро перейти к определению функции или переменной, а также получить информацию о типе при наведении курсора на элемент кода.

Это мощное расширение превращает VS Code в полноценную IDE для разработки на Haskell.

##### Преимущества:
- Полноценная среда для разработки на Haskell, обеспечивающая не только подсветку синтаксиса, но и мощные функции автозавершения, диагностики и отладки.
- Поддержка проектов с использованием популярных инструментов сборки (Stack, Cabal).
- Лёгкая интеграция с существующими проектами Haskell.

## Hello World на Haskell

### Файл `Main.hs`

```haskell
-- Main.hs
main = putStrLn "Hello, World!"
```

- `main` — это главная функция программы в Haskell. Она всегда должна быть определена, так как с неё начинается выполнение программы.
- `putStrLn` — это стандартная функция в Haskell, которая принимает строку (`String`) и выводит её на экран, добавляя символ новой строки (`\n`) в конце.
- `"Hello, World!"` — строковый литерал, который будет передан в `putStrLn`, чтобы быть напечатанным в консоль.

### Компиляция и выполение программы

Компилируем программу с помощью `docker` и `ghc`:
```sh
$ sudo docker run --rm -v $(pwd):/app -w /app haskell ghc Main.hs
```
В текущей директории должны появиться файлы `Main.hi`, `Main.o`, `Main`. Результат запуска исполняемого файла `Main`:
```sh
$ ./Main
Hello, World!
```