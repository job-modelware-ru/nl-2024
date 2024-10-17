package com.spbpu.file

import scala.io.Source

object File {

    def main(args: Array[String]): Unit = {
        // OS library
        val etc: os.Path = os.pwd
        println(etc)

        val entries: Seq[os.Path] = os.list(os.root / "etc")
        println(entries)


        // Reading from file
        val filePath = os.pwd / "test.txt"

        var content: String = os.read(filePath)
        println(content)
        

        // Writing to file
        // Overwriting
        os.write.over(filePath, "Test text")

        content = os.read(filePath)
        println(content)

        // Appending
        os.write.append(filePath, "Hello, world!\n My name is Scala.")

        content = os.read(filePath)
        println(content)

    }
    
}

