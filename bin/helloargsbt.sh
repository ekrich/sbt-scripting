#!/usr/bin/env sbt -Dsbt.version=0.13.15 -Dsbt.main.class=sbt.ScriptMain -error

/***
name := """sbt-script-app"""
version := "1.0"
scalaVersion := "2.12.3"
//logLevel in Global := Level.Debug
libraryDependencies += "org.example" %% "sbt-scripting-lib" % "1.0"
*/

import org.example._

Args.main(args)
