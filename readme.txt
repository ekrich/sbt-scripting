https://gist.github.com/SethTisue/3a5a04e5054fc5b75011

Should be able to be foo.sh or foo.bat not foo.scala - could generate foo.scala though.

https://github.com/sbt/sbt/blob/1.0.x/main/src/main/scala/sbt/Script.scala

helloargsbt.bat

::#!
@echo off
call sbt -Dsbt.version=0.13.9 -Dsbt.main.class=sbt.ScriptMain -error %0
goto :eof
::!#

/***
name := "sbt embed"
version := "1.0"
scalaVersion := "2.11.7"
*/

println("Hello, "+ args(0) +"!")

helloarg.bat

::#!
@echo off
call scala %0 %*
goto :eof
::!#
// Say hello to the first argument
println("Hello, "+ args(0) +"!") 