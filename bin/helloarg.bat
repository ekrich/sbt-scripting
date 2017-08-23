::#!
@echo off
call scala %~nx0 %*
goto :eof
::!#
object HelloWorld extends App {
  println("Hello, " + args.headOption.getOrElse("World") + "!")
  println("Args: " + args.toList)
}

