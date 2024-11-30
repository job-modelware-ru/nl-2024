fn massive()
{
    let arr_1 = [1, 2, 3, 4, 5];
    println!("First element: {}", arr_1[0]);

    let mut arr_2 = [9, 8, 7];
    //arr_1[0] = 10
    arr_2[0] = 10;
    println!("{:?}", arr_2);

}

fn vectors()
{
    let mut vec = Vec::new();
    vec.push(1);
    vec.push(2);
    vec.push(3);
    println!("{:?}", vec);


    let vec = vec![10, 20, 30];
    let first = vec[0];
    println!("First element: {}", first);
}


use std::collections::HashMap;
fn hashmap()
{
    let mut scores = HashMap::new();
    scores.insert(String::from("Blue"), 10);
    scores.insert(String::from("Yellow"), 50);
    
    println!("{:?}", scores);

    // доступ по ключу
    if let Some(score) = scores.get("Blue") {
        println!("Score for Blue: {}", score);
    }

    // длина хэш-карты
    println!("Length of hashmap {}", scores.len())

}


use std::collections::HashSet;
fn set()
{
    let mut set = HashSet::new();
    set.insert(1);
    set.insert(2);
    set.insert(2);  // Второй раз не добавится

    println!("{:?}", set);

    // проверка наличия элемента в множестве
    if set.contains(&5) {
        println!("Set contains 5");
    }
    else {
        println!("Set not contains 5");
    }

    // длина множества
    println!("Length of set {}", set.len());

    // цикл по элементам множества
    for item in &set {
        println!("{item}");
    }

}

fn main() {

    massive();
    vectors();
    hashmap();
    set();

    //обобщённые типы
    // пример 1
    let int_max = max(10, 20);
    let float_max = max(10.5, 7.3);
    println!("Max int: {}", int_max);
    println!("Max float: {}", float_max);

    // пример 2
    let int_point = Point { x: 5, y: 10 };
    let float_point = Point { x: 1.0, y: 4.5 };
    println!("Int Point: ({}, {})", int_point.x, int_point.y);
    println!("Float Point: ({}, {})", float_point.x, float_point.y);

    let point = Point { x: 5, y: 10 };
    println!("x: {}", point.get_x());

    // пример 3
    let some_number = Option::Some(42);
    let some_string = Option::Some("Hello");
    let none_value: Option<i32> = Option::None;

    // пример 4
    print_value(10); // Для типа i32
    print_value("Hello, Rust!"); // Для типа &str
    // пример 5
    compare_and_display(10, 20);
    compare_and_display(3.14, 2.71);

    // пример 6
    let pair = Pair { first: 10, second: "Rust" };
    println!("Pair: ({}, {})", pair.first, pair.second);



}



// обобщённые типы 
fn max<T: PartialOrd>(a: T, b: T) -> T {
    if a > b {
        a
    } else {
        b
    }
}


struct Point<T> {
    x: T,
    y: T,
}

impl<T> Point<T> {
    fn get_x(&self) -> &T {
        &self.x
    }
}


enum Option<T> {
    Some(T),
    None,
}

use std::fmt::Display;
fn print_value<T: Display>(value: T) {
    println!("{}", value);
}


fn compare_and_display<T: PartialOrd + Display>(a: T, b: T) {
    if a > b {
        println!("{} is greater", a);
    } else {
        println!("{} is greater", b);
    }
}

fn compare_and_display_2<T>(a: T, b: T) 
where 
    T: PartialOrd + Display
{
    if a > b {
        println!("{} is greater", a);
    } else {
        println!("{} is greater", b);
    }
}


struct Pair<T, U> {
    first: T,
    second: U,
}

