mod parallelism;
mod error_handling;
mod memory_management;

fn main()
{
    // параллелизм
    /*  
    parallelism::using_threads();
    parallelism::using_channel();
    parallelism::using_mutex();
    parallelism::high_level_library();*/

    // ооп
    /* 
    // инкапсуляция
    let rect = Rectangle::new(10.0, 20.0);
    println!("Периметр: {}", rect.perimeter());

    // наследование
    let circle = Circle { radius: 5.0 };
    println!("Площадь круга: {}", circle.area());
    println!("Площадь периметра: {}", rect.area());

    // полиморфизм
    print_area(&circle);
    print_area(&rect);

    // абстракция 
    let dog = Dog;
    let cat = Cat;

    dog.speak();
    cat.speak();*/

    //обработка ошибок
    /* 
    error_handling::using_panic();

    match error_handling::divide(10, 2) {
        Ok(result) => println!("Результат: {}", result),
        Err(e) => println!("Ошибка: {}", e),
    }
    
    let _ = error_handling::call_read();*/


    // управление памятью
    /*
    memory_management::example_memory_1();
    memory_management::example_memory_2();
    */


    // пример для специфической конструкции match
    let num = Some(5);
    match num {
        Some(x) => println!("Число: {}", x),
        None => println!("Нет числа"),
    }
}


// инкапсуляция
struct Rectangle {
    width: f64,
    height: f64,
}

impl Rectangle {
    fn new(width: f64, height: f64) -> Self {
        Self { width, height }
    }

    fn perimeter(&self) -> f64 {
        2.0 * (self.width + self.height)
    }
}

// наследование
trait Shape {
    fn area(&self) -> f64;
}

struct Circle {
    radius: f64,
}

impl Shape for Circle {
    fn area(&self) -> f64 {
        3.14 * self.radius * self.radius
    }
}

impl Shape for Rectangle{
    fn area(&self) -> f64 {
        self.width * self.height
    }   
}


// полиморфизм
fn print_area(shape: &dyn Shape) {
    println!("Площадь: {}", shape.area());
}


// абстракция
trait Animal {
    fn speak(&self);
}

struct Dog;

impl Animal for Dog {
    fn speak(&self) {
        println!("Гав!");
    }
}

struct Cat;

impl Animal for Cat {
    fn speak(&self) {
        println!("Мяу!");
    }
}

