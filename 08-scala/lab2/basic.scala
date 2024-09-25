object DemoApp {
  def main(args: Array[String]): Unit = {
    // Пример использования конструкции if-else для принятия решения
    val number = 10
    val result = if (number > 0) "Положительное" else "Отрицательное"
    println(s"Число $number: $result")

    // Пример использования цикла for для итерации
    println("Цикл for:")
    for (i <- 1 to 5) {
      println(s"Итерация $i")
    }

    // Пример использования цикла while
    println("Цикл while:")
    var counter = 0
    while (counter < 3) {
      println(s"Счётчик: $counter")
      counter += 1
    }
  }
}






