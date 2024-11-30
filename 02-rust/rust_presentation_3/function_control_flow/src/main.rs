use std::io;

fn input_output_text() {
    let mut input = String::new();
    println!("Enter the text: ");

    io::stdin().read_line(&mut input).expect("Не удалось прочитать строку");
    println!("You entered: {}\n", input.trim());
}


use std::env;

fn args_command_line() {
    let args: Vec<String> = env::args().collect();
    for arg in args.iter() {
        println!("Argument = : {}", arg);
    }

    println!("");
    if args.len() >= 2
    {
        let arg_1 = &args[1];
        let arg_2 = &args[2];

        println!("Arg_1 = {arg_1}");
        println!("Arg_2 = {arg_2}\n");
    }

}


use std::fs::File;
use std::io::Read;
use std::io::Write;

fn work_with_file() -> io::Result<()> {
    let mut file = File::open("example.txt")?;
    let mut contents = String::new();
    file.read_to_string(&mut contents)?;
    println!("File contents:\n{}", contents);

    let mut file = File::create("foo.txt")?;
    file.write_all(contents.as_bytes())?;
    Ok(())
}


fn print_sum_integer(x: i32, y: i32) 
{
    println!("Sum of x and y is: {}", x+y);
}

fn five() -> i32 
{
    5
}

fn div_integer(x: i32, y: i32) -> i32
{
    x-y
}

fn sum_integer_return(x: i32, y:i32) -> i32
{
    return x+y;
}

fn rec_fibonacci(n: u64) -> u64
{
    match n {
        0|1 => n,
        _=> rec_fibonacci(n-1) + rec_fibonacci(n-2),
    }
}


fn apply_function(a: i32, b: i32, func: impl Fn(i32, i32) -> i32) -> i32  {
    // применяем переданную функцию к аргументам a и b
    func(a, b)
}

fn main() 
{
    println!("Hello, world!");

    // объявление и параметры функции
    another_function();

    print_sum_integer(52, 86);

    // с возвращаемыми значениями
    let mut result = five();
    println!("result of five function = {}", result);

    result = div_integer(45, 52);
    println!("result of div_integer function = {result}");

    result = sum_integer_return(54, 106);
    println!("result of sum_integer_return finction = {result}");

    let (x_, y_) = func_with_two_return_arg(5);
    println!("{x_}, {y_}");


    //рекурсивные функции
    let n: u64 = 4;
    let result_ = rec_fibonacci(n);
    println!("{n}-th value fibonacci = {result_}\n");
    

    // lambda-функции
    let add = |a, b| a + b;
    result = add(2, 3); 
    println!("result of lambda = {result}");

    println!("result of add = {}", apply_function(5, 6, add));

    // управляющие конструкции
    control_flow_example();
    println!("");

    // ввод/вывод
    input_output_text();
    args_command_line();
    let _ = work_with_file();

}

fn another_function() {
    println!("Another function.");
}

fn func_with_two_return_arg(mut x: i32) -> (i32, i32)
{
    let mut y = 4;
    x += 3;
    y += x;

    return (x, y);
}

fn factorial(n: i32) -> i32
{
    if n <= 1
    {
        1
    }
    else {
        n * factorial(n-1)
    }
}

fn control_flow_example()
{
    let number = 3;

    // Пример на if
    if number < 5 {
        println!("condition was true");
    } else {
        println!("condition was false");
    }

    /* if number {
        println!("number was three");
    } */

    println!("{}", factorial(3));

    // Пример на else if
    if number % 4 == 0 {
        println!("number is divisible by 4");
    } 
    else if number % 3 == 0 {
        println!("number is divisible by 3");
    } 
    else if number % 2 == 0 {
        println!("number is divisible by 2");
    } 
    else {
        println!("number is not divisible by 4, 3, or 2");
    }

    // Пример на присвоение let значение if
    let condition = true;
    let number_1 = if condition { 5 } else { 6 };
    
    //let number_1 = if condition { 5 } else { "six" };

    println!("The value of number is: {number_1}\n");

    // Примеры на match
    let num_1 = 2;
    match num_1
    {
        1=>println! ("one"),
        2=>println! ("two"),
        3=>println! ("three"),
        _=>println! ("unclear")
    }  

    let num_2 = 4;
    let result = match num_2
    {
        1=> "one",
        2=> "two",
        3=> "three",
        _=> "unclear"
    };

    println!("result = {}", result);

    let num_3 = 3;
    match num_3
    {
        1|2=>println! ("one or two\n"),
        3=>{
            println! ("The second branch");
            println! ("three\n");
        }
        _=>println! ("unclear\n")
    }  


    // Пример для loop
    let mut count_1 = 0;

    loop {
        match count_1{
            1 => 
            {
                count_1 += 1;
                continue;
            }
            3 => break,
            _ => (),
        }
        println!("count = {}", count_1);
        count_1 += 1;
    };

    let mut counter = 0;

    let result = loop {
        counter += 1;

        if counter == 10 {
            break counter * 2;
        }
    };

    println!("\nThe result loop is {result}\n");
    

    // Пример остановки с внутренним циклом 
    let mut count = 0;
    'counting_up: loop {
        println!("count = {count}");
        let mut remaining = 10;

        loop {
            println!("remaining = {remaining}");
            if remaining == 9 {
                break;
            }
            if count == 2 {
                break 'counting_up;
            }
            remaining -= 1;
        }

        count += 1;
    }
    println!("End count = {count}\n");


    // Пример для цикла while
    let mut num_ = 3;

    while num_ != 0 {
        println!("number = {num_}");

        num_ -= 1;
    }

    println!("end of while, number = {num_}\n");


    // Пример для цикла for
    for number in 1..4 
    {
        println!("number = {number}");
    }

    println!("end of for\n"); 

}