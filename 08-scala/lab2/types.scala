object TypesDemo {
  def main(args: Array[String]): Unit = {
    // Примитивные типы
    val x: Int = 10                     // Целое число
    val y: Double = 3.14                // Число с плавающей запятой
    val isScalaFun: Boolean = true      // Логическое значение
    val letter: Char = 'A'              // Символ

    println(s"Целое число: $x")
    println(s"Число с плавающей запятой: $y")
    println(s"Логическое значение: $isScalaFun")
    println(s"Символ: $letter")

    // Ссылочные типы
    val greeting: String = "Hello!"     // Строка текста
    val fruits: List[String] = List("apple", "banana", "cherry")  // Неизменяемый список

    println(s"Строка: $greeting")
    println("Список фруктов:")
    for (fruit <- fruits) {
      println(fruit)
    }
  }
}





