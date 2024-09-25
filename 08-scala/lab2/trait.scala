trait Greeter {
  def greet(): String = "Привет!"
}

trait Farewell {
  def sayGoodbye(): String = "До свидания!"
}

class Person(val name: String) extends Greeter with Farewell {
  def introduce(): String = s"Меня зовут $name."
}

object TraitDemo {
  def main(args: Array[String]): Unit = {
    val person = new Person("John")
    println(person.greet())
    println(person.introduce())
    println(person.sayGoodbye())
  }
}
