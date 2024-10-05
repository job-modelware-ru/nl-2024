object PatternMatchingDemo {
  def describe(x: Any): String = x match {
    case 0 => "ноль"
    case 1 => "один"
    case "Scala" => "язык программирования Scala"
    case _: Int => "какое-то целое число"
    case _ => "неизвестное значение"
  }

  def main(args: Array[String]): Unit = {
    println(describe(0))
    println(describe(1))
    println(describe("Scala"))
    println(describe(42))
    println(describe(true))
  }
}

