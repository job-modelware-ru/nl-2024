object ExceptionHandlingDemo {
  def divide(a: Int, b: Int): Int = {
    try {
      a / b
    } catch {
      case e: ArithmeticException =>
        println("Ошибка: деление на ноль.")
        0
    } finally {
      println("Операция деления завершена.")
    }
  }

  def main(args: Array[String]): Unit = {
    val result1 = divide(10, 2)
    println(s"Результат деления: $result1")

    val result2 = divide(10, 0)
    println(s"Результат деления: $result2")
  }
}

