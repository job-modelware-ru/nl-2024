package com.spbpu.stack

import scala.collection.View.FlatMap

class Stack[A] {
  private var elements: List[A] = Nil
  def push(x: A): Unit =
    elements = x :: elements
  def peek: A = elements.head
  def pop(): A = {
    val currentTop = peek
    elements = elements.tail
    currentTop
  }
}

object Stack {
    def main(args: Array[String]): Unit = {
        
        val stackInt = new Stack[Int]
        stackInt.push(1)
        stackInt.push(2)
        println(stackInt.pop())  // Out: 2
        println(stackInt.pop()) // Out: 1

        val stackFloat = new Stack[Float]
        stackFloat.push(0.5)
        stackFloat.push(1.3)
        println(stackInt.pop())  // Out: 1.3
        println(stackInt.pop()) // Out: 0.5


        class Fruit
        class Apple extends Fruit
        class Banana extends Fruit

        val stack_fruits = new Stack[Fruit]
        val apple = new Apple
        val banana = new Banana

        stack_fruits.push(apple)
        stack_fruits.push(banana)
    }
}


