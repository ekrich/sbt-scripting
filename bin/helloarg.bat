::#!
@echo off
call scala %~nx0 %*
goto :eof
::!#
object HelloWorld {
  def main(args: Array[String]): Unit = {
  	println("Hello, " + args.headOption.getOrElse("World") + "!")
    println("Args: " + args.toList)
  }
}

