#!/usr/bin/env sbt -Dsbt.version=0.13.15 -Dsbt.main.class=sbt.ScriptMain -error

/***
name := """sbt-test"""
version := "1.0"
scalaVersion := "2.11.8"
//logLevel in Global := Level.Debug
libraryDependencies += "com.lihaoyi" %% "ammonite-ops" % "0.8.2"
// adding these will make the script fail if using a deprecated method
scalacOptions ++= Seq("-deprecation", "-unchecked", "-feature", "-Xfatal-warnings")
*/

import ammonite.ops._

// Working directory
//val wd = cwd // this is deprecated - uncomment to try
val wd = pwd
// List the working directory
val listed = ls! wd

println("Using AmmoniteOps to list the current directory")
println(listed)
