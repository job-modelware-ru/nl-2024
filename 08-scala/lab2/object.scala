class Person(private val name: String, private var age: Int) {
  def greet(): String = s"Привет, меня зовут $name, и мне $age лет."
}

object Person {
  def createChild(name: String): Person = new Person(name, 0)
}

object Singleton {
  def sayHello(): Unit = {
    println("Привет из объекта-синглтона!")
  }
}

object ObjectDemo {
  def main(args: Array[String]): Unit = {
    Singleton.sayHello()

    val adult = new Person("John", 30)
    println(adult.greet())

    val child = Person.createChild("Emily")
    println(child.greet())
  }
}
