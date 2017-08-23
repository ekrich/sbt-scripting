#!/usr/bin/env xsbt -Dsbt.version=1.0.0 -Dsbt.main.class=sbt.ScriptMain -error

/***
name := """sbt-test"""
version := "1.0"
scalaVersion := "2.12.3"
libraryDependencies += "org.example" %% "sbt-scripting-lib" % "1.0"
//logLevel in Global := Level.Debug
*/

import org.example._

Args.main(args)