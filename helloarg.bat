::#!
@echo off
call scala %0 %*
goto :eof
::!#
object HelloWorld extends App {
  println("Hello, world! " + args.mkString(","))
}
HelloWorld.main(args)

