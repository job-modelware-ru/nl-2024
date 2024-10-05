class Person(val name: String, var age: Int) {
  def greet(): String = s"Привет, меня зовут $name, и мне $age лет."
}

object ClassDemo {
  def main(args: Array[String]): Unit = {
    val john = new Person("John", 30)
    println(john.greet())

    john.age = 31
    println(s"${john.name} теперь ${john.age} лет.")

    case class Book(title: String, author: String)

    val book1 = Book("Scala Programming", "Martin Odersky")
    val book2 = Book("Functional Programming in Scala", "Paul Chiusano")

    println(book1)
    println(book1 == book2)

    book1 match {
      case Book("Scala Programming", _) => println("Это книга про Scala!")
      case _ => println("Неизвестная книга")
    }
  }
}




