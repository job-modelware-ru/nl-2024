pub fn example_memory_1() {
    let s = String::from("Привет");
    takes_ownership(s);
    // println!("{}", s); // Ошибка: владение передано

    let x = 5;
    makes_copy(x);
    println!("{}", x); // x доступен, так как i32 копируется
}

fn takes_ownership(some_string: String) {
    println!("{}", some_string);
}

fn makes_copy(some_integer: i32) {
    println!("{}", some_integer);
}

pub fn example_memory_2() {
    let s = String::from("Привет");
    let len = calculate_length(&s);
    println!("Длина '{}': {}", s, len);
}

fn calculate_length(s: &String) -> usize {
    s.len()
}
