class Person(private val name: String, protected var age: Int) {
  def greet(): String = s"Привет, меня зовут $name, и мне $age лет."

  def haveBirthday(): Unit = {
    age += 1
  }
}

object ScopeDemo {
  def main(args: Array[String]): Unit = {
    val john = new Person("John", 30)
    println(john.greet())
    john.haveBirthday()
    println(john.greet())

    def localScopeDemo(): Unit = {
      val localVar = "Локальная переменная"
      println(localVar)
    }

    localScopeDemo()
    // println(localVar) // Ошибка: localVar не доступна за пределами функции
  }
}



