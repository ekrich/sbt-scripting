@echo off
call sbt -Dsbt.version=0.13.16 -Dsbt.main.class=sbt.ScriptMain -error %~nx0 %*
goto :eof
::!#

/***
name := """sbt-script-app"""
version := "1.0"
scalaVersion := "2.12.3"
//logLevel in Global := Level.Debug
libraryDependencies += "org.example" %% "sbt-scripting-lib" % "1.0"
*/
import org.example._

println("Hello, " + args.headOption.getOrElse("World") + "!")
println(args.toList)
Args.main(args)