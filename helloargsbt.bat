@echo off
call sbt -Dsbt.version=0.13.15 -Dsbt.main.class=sbt.ScriptMain -error %~nx0 %*
goto :eof
::!#

/***
name := """sbt-script-app"""
version := "1.0"
scalaVersion := "2.11.8"
//logLevel in Global := Level.Debug
libraryDependencies += "org.example" %% "sbt-scripting-lib" % "1.0"
*/

println("Hello, " + args.headOption.getOrElse("World") + "!")
println(args.toList)