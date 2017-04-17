#!/bin/sh
exec scala "$0" "$@"
!#
object HelloWorld extends App {
  println("Hello, world! " + args.mkString(","))
}
HelloWorld.main(args)

