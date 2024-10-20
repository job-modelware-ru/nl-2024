//Объявление переменных
/* const THREE_HOURS_IN_SECONDS: u32 = 60 * 60 * 3;

fn main() {
    //let x = 5;
    let mut x = 5;
    println!("The value of x is: {}", x);
    x = 6;
    println!("The value of x is: {}", x);
} */


// Примитивные типы
/* fn main() {
    let x: i32 = 42;         // 32-битное целое число
    let pi: f64 = 3.1415;    // 64-битное число с плавающей запятой
    let is_active: bool = true;  // Логический тип
    let letter: char = 'A';   // Один символ
    println!(" x = {x}\n pi = {pi}\n is_active = {is_active}\n letter= {letter}\n");

    //Пример, когда нужна анотация типа
    let guess: u32 = "42".parse().expect("Not a number!");
    //let guess = "42".parse().expect("Not a number!");
    println!(" guess {guess}");   
}
 */

// Польсовательские типы. Структуры
/* struct Rectangle {
    width: u32,
    height: u32,
}

fn main() {
    let rect = Rectangle { width: 30, height: 50 };
    println!("Rectangle: {} x {}", rect.width, rect.height);

} */



 // Польсовательские типы. Перечисления
/*  enum Direction {
    Up,
    Down,
    Left,
    Right,
}

fn main() {
    let dir = Direction::Up;
    match dir {
        Direction::Up => println!("Going up"),
        Direction::Down => println!("Going down"),
        Direction::Left => println!("Going left"),
        Direction::Right => println!("Going right"),
    }
}
 */


//Операторы
/* fn main() {
    // Сравнение типов
    let a = 1;
    let b = 2;

    let c = a == b; // false
    let d = a != b; // true
    let e = a < b; // true
    let f = a > b; // false
    let g = a <= a; // true
    let h = a >= a; // true

    let i = true > false; // true
    let j = 'a' > 'A'; // true

    print!(" c = {}\n d = {}\n e = {}\n f = {}\n g = {}\n h = {}\n i = {}\n j = {}",
            c, d, e, f, g, h, i, j);

    // Числовые операции:
    let sum = 5 + 10;

    let difference = 95.5 - 4.3;

    let product = 4 * 30;

    let quotient = 56.7 / 32.2;
    let truncated = -5 / 3; // Results in -1

    let remainder = 43 % 5;

    println!("\n addition={}\n substraction={}\n product={}\n quotient={}\n truncated={}\n remainder={}",
            sum, difference, product, quotient, truncated, remainder);


    //Логические операции:
    let x = true;
    let y = false;
    let mut result = !x;  // result = false
    println!("\nresult !x = {}", result);
    result = !(5>3);
    println!("result !(5>3) = {}", result);

    result = x && y;  // result = false
    println!("result x && y = {}", result);
    result = 10 > 2 && 4 < 5;  // result = true (10> 2 равно true и 4 < 5 равно true)
    println!("result 10 > 2 && 4 < 5 = {}", result);

    result = x || y;  // result = true
    println!("result x || y = {}", result);
    result = 2 > 10 || 5 < 4;  // result = false (2 > 10 равно false и 5 < 4 равно false)
    println!("result 2 > 10 || 5 < 4 = {}", result);

    //Поразрядные 
    //сдвига
    let a = 2 << 2;           // 10  на два разрядов влево = 1000 - 8
    let b = 16 >> 3;          // 10000 на три разряда вправо = 10 - 2

    println!("a = {a}, b = {b}");

    //сдвиг и присваивание
    let mut x = 8;
    println!("x = {}", x);
     
    x <<= 2;  // 8 в двоичной системе 1000, 
            // после сдвига на 2 разряда вправо 10000 или 32 в десятичной системе
    println!("x = {}", x);  // 32
     
    x >>= 3;  // 32 в двоичной системе 100000, 
            // после сдвига на 3 разряда вправо 100 или 4 в десятичной системе
    println!("x = {}", x);  // 4

    //конъюнкция, дизъюнкция исключающее ИЛИ
    let d = 5 | 2;          // 101 | 010 = 111  - 7
    let e = 6 & 2;          // 110 & 010 = 10  - 2
    let f = 5 ^ 2;          // 101 ^ 010 = 111 - 7

    println!("d = {d}, e = {e}, f = {f}");
}
 */


// Преобразование/приведение типов
/* fn main() {
    let x: i32 = 42;
    //let y: f64 = x;  // Неправильно
    //let y: f64 = x as f64;  // Преобразование i32 в f64
    let y: f64 = x.into();  // Преобразование i32 в f64
    println!("x as f64: {}", y);
}
 */

// Области видимости
/* const THREE_HOURS_IN_SECONDS: u32 = 60 * 60 * 3;

fn main() {
    let x = 5;
    println!("x={}", x);

    {
        const SIZE: u32 = 60;
        let y = 10;
        println!("Inside block: {}", y);  // y доступна внутри блока
        println!("const SIZE in Inside block = {}", SIZE);  // SIZE доступна внутри блока
        println!("x in Inside block = {}", x); // доступна так как этот блок находится внутри основного
    }

    println!("const THREE_HOURS_IN_SECONDS = {}", THREE_HOURS_IN_SECONDS);  // верно, так как константа объявлена в глобалтной области видимости

    //println!("const SIZE = {}", SIZE);  // Ошибка: константа вне области видимости
    //println!("{}", y);  // Ошибка: y вне области видимости
} */


// Передача владения
fn main() {
    let s1 = String::from("Hello");
   /*  let s2 = s1;  // s1 передает владение
    //println!("{}", s1);  // Ошибка: s1 больше не доступна
    println!("{}", s2);  // s2 владеет строкой */

    let s2 = &s1;  // s2 заимствует s1
    let s3 = s1.clone();
    println!("s1: {}, s2: {}, s3: {}", s1, s2, s3);  // Оба доступны 
}
