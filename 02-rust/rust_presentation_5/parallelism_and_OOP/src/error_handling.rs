// обработка ошибок

pub fn using_panic()
{
    panic!("Что-то пошло не так!");
}

pub fn divide(a: i32, b: i32) -> Result<i32, String> {
    if b == 0 {
        Err(String::from("Деление на ноль"))
    } else {
        Ok(a / b)
    }
}

pub fn read_file() -> Result<String, std::io::Error> {
    std::fs::read_to_string("example.txt")
}

pub fn call_read() -> Result<(), std::io::Error> 
{
    let content = read_file()?;
    println!("{}", content);
    Ok(())
}
