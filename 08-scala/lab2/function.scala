object FunctionDemo {
  def greet(name: String): String = {
    s"Hello, $name!"
  }

  val square: Int => Int = (x: Int) => x * x

  def applyToList(lst: List[Int], f: Int => Int): List[Int] = {
    lst.map(f)
  }

  def main(args: Array[String]): Unit = {
    println(greet("Scala"))

    println(s"Квадрат числа 5: ${square(5)}")

    val numbers = List(1, 2, 3, 4)
    val squaredNumbers = applyToList(numbers, square)
    println(s"Квадраты списка чисел: $squaredNumbers")
  }
}





