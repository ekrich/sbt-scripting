#!/usr/bin/env sbt -Dsbt.version=0.13.15 -Dsbt.main.class=sbt.ScriptMain -error

/***
name := """sbt-script-app"""
version := "1.0"
scalaVersion := "2.12.3"
*/

println("Hello, " + args.headOption.getOrElse("World") + "!")
println("Args: " + args.toList)