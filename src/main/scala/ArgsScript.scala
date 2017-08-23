
object Args {
  def main(args: Array[String]) {
    println("Hello, " + args.headOption.getOrElse("World") + "!")
    println("Args: " + args.toList)
  }
}
