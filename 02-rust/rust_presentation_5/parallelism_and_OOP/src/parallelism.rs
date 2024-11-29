//использование потоков
use std::thread;

pub fn using_threads() {
    let handle = thread::spawn(|| 
        {
        for i in 1..5 {
            println!("Поток: {}", i);
        }
    });

    for i in 1..5 {
        println!("Главный поток: {}", i);
    }

    handle.join().unwrap();
}


//обмен с помощью каналов
use std::sync::mpsc;

pub fn using_channel() {
    let (tx, rx) = mpsc::channel();

    thread::spawn(move || {
        let message = String::from("Привет из потока!");
        tx.send(message).unwrap();
    });

    let received = rx.recv().unwrap();
    println!("Получено: {}", received);
}


// Мьютексы для совместного доступа
use std::sync::{Arc, Mutex};

pub fn using_mutex() {
    let counter = Arc::new(Mutex::new(0));
    let mut handles = vec![];

    for _ in 0..10 {
        let counter = Arc::clone(&counter);
        let handle = thread::spawn(move || {
            let mut num = counter.lock().unwrap();
            *num += 1;
        });
        handles.push(handle);
    }

    for handle in handles 
    {
        handle.join().unwrap();
    }

    println!("Результат: {}", *counter.lock().unwrap());
}


// Высокоуровневые библиотеки, такие как rayon:  
use rayon::prelude::*;

pub fn high_level_library() 
{
    let numbers: Vec<i32> = (1..10).collect();
    let squares: Vec<i32> = numbers.par_iter()
                                    .map(|x| x * x)
                                    .collect();

    println!("Квадраты: {:?}", squares);
}
