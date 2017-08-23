@echo off
call sbt -Dsbt.version=0.13.16 -Dsbt.main.class=sbt.ScriptMain -error %~nx0 %*
goto :eof
::!#

/***
name := """sbt-script-app"""
version := "1.0"
scalaVersion := "2.12.3"
*/

println("Hello, " + args.headOption.getOrElse("World") + "!")
println("Args: " + args.toList)