#!/bin/sh
exec scala "$0" "$@"
!#
object HelloWorld {
  def main(args: Array[String]): Unit = {
  	println("Hello, " + args.headOption.getOrElse("World") + "!")
    println("Args: " + args.toList)
  }
}

