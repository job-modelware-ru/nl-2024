object ClosureDemo {
  def createCounter(): () => Int = {
    var count = 0
    () => {
      count += 1
      count
    }
  }

  def main(args: Array[String]): Unit = {
    val counter = createCounter()

    println(counter())
    println(counter())
    println(counter())
  }
}