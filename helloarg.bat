::#!
@echo off
call scala %~nx0 %*
goto :eof
::!#
object HelloWorld extends App {
  println("Hello, world! " + args.mkString(","))
}

