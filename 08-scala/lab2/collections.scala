import scala.collection.mutable.{ArrayBuffer, HashSet, HashMap}

object CollectionsDemo {
  def main(args: Array[String]): Unit = {
    // Неизменяемая коллекция List
    val numbers = List(1, 2, 3, 4, 5)
    val doubledNumbers = numbers.map(_ * 2)
    println(s"Исходный список: $numbers")
    println(s"Удвоенные значения: $doubledNumbers")

    // Неизменяемая коллекция Set
    val fruits = Set("apple", "banana", "cherry")
    val moreFruits = fruits + "orange"
    println(s"Исходный Set: $fruits")
    println(s"Добавленный элемент в Set: $moreFruits")

    // Неизменяемая коллекция Map
    val capitals = Map("France" -> "Paris", "Germany" -> "Berlin")
    val updatedCapitals = capitals + ("Italy" -> "Rome")
    println(s"Исходная Map: $capitals")
    println(s"Обновленная Map: $updatedCapitals")

    // Изменяемая коллекция ArrayBuffer
    val arrayBuffer = ArrayBuffer(1, 2, 3)
    arrayBuffer += 4
    println(s"Массив после добавления элемента: $arrayBuffer")

    // Изменяемая коллекция HashSet
    val hashSet = HashSet("apple", "banana")
    hashSet += "cherry"
    println(s"HashSet после добавления элемента: $hashSet")

    // Изменяемая коллекция HashMap
    val hashMap = HashMap("France" -> "Paris")
    hashMap("Germany") = "Berlin"
    println(s"HashMap после добавления элемента: $hashMap")

    // Использование функций для работы с коллекциями: map, filter, reduce
    val evenNumbers = numbers.filter(_ % 2 == 0)
    val sum = numbers.reduce(_ + _)
    val foldedSum = numbers.fold(0)(_ + _)
    
    println(s"Четные числа: $evenNumbers")
    println(s"Сумма элементов (reduce): $sum")
    println(s"Сумма элементов (fold): $foldedSum")
  }
}


