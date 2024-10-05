# Используем официальный образ Rust
FROM rust:latest

# Устанавливаем рабочую директорию
WORKDIR /app

# Создаём новый проект на Rust
RUN cargo new app-rust

# Копируем файл Cargo.toml 
# (если он отличается от исходного)
# COPY Cargo.toml ./app-rust

# Копируем исходный код
COPY main.rs ./app-rust/src

# Переходим в папку проекта и собираем его
RUN cd app-rust && cargo build --release

# Определяем команду для запуска
CMD ["./app-rust/target/release/app-rust"]
