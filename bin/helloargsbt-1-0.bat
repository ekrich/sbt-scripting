::#!
@echo off
call sbt -Dsbt.version=1.0.1 -Dsbt.main.class=sbt.ScriptMain -error %~nx0 %*
goto :eof
::!#

/***
name := """sbt-test"""
version := "1.0"
scalaVersion := "2.12.3"
libraryDependencies += "org.example" %% "sbt-scripting-lib" % "1.0"
//logLevel in Global := Level.Debug
*/

import org.example._

Args.main(args)