::#!
@echo off
call sbt -Dsbt.version=0.13.16 -Dsbt.main.class=sbt.ScriptMain -error %~nx0 %*
goto :eof
::!#

/***
name := """ammonitesbt"""
version := "1.0"
scalaVersion := "2.12.3"
// uncomment to see what is going on
//logLevel in Global := Level.Debug
libraryDependencies += "com.lihaoyi" %% "ammonite-ops" % "1.0.2"
// adding these will make the script fail if using a deprecated method
scalacOptions ++= Seq("-deprecation", "-unchecked", "-feature", "-Xfatal-warnings")
*/

import ammonite.ops._

// Working directory
//val wd = cwd // this is deprecated - uncomment to try - remember to comment out next line
val wd = pwd
// List the working directory
val listed = ls! wd

println("Using AmmoniteOps to list the current directory")
println(listed)