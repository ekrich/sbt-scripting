# Scripting using sbt, a build tool for Scala
## Introduction

I have been interested in Scala since just prior to attending Scala Days 2011 at Stanford. The job I had at the time was doing enterprise Java and I knew there was little hope for using Scala there but I really liked the job and projects we were working on so I started to write more functional code in Java while learning Scala on the side. Eventually I moved to another job and started to use Scala for Gatling as nobody cares what you use for testing. I got introduced to [sbt](http://www.scala-sbt.org/) to build the testing code. I was really impressed with the tool so I bought **sbt in Action** and started the slow process of learning about sbt. I started to look at the product we had and all the scripting was in bash and we developed on Windows so to test anything with scripting meant you had to push your code to a server to run your code. I wrote scripts using Java in the past so I thought it would be great to write them in Scala. Scala scripting in good and you can deploy jars with your script and add them to the classpath to use them. Being spoiled by dependency management in sbt lead me to sbt scripting. I also had run across [Ammonite Ops](http://ammonite.io/#Ammonite-Ops) since my mind was focused on shell scripting so I thought it would be nifty to add this dependency in a sbt script so I could use the library. The first thing I found was that scripting was not supported on Windows and using Linux your file needed to end in .scala rather than .sh or without an extension. Needless to say I was disappointed.

Since I never had contributed to Open Source, was a novice at GitHub, and intermediate level in Scala, why not contribute to sbt? What could go wrong? Actually, both [Eugene Yokota](https://github.com/eed3si9n) and [Dale Wijnand](https://github.com/dwijnand) were super helpful and I was able to get everything running and debugging locally and I did my first Pull Request (PR) before Scala Days 2016 last year. Eugene was kind enough to help me get my PR ready for merging at the conference and shortly after that the support for sbt scripting for Windows was supported using .bat files and Unix/Linux added support for .sh or no extension. See the release notes for sbt [v0.13.12](https://github.com/sbt/sbt/releases/v0.13.12). During this development I found that quoted arguments were not passed correctly to scripts but the developers wanted this to be a separate Issue so they could keep track of it in GitHub. This would have to wait for another PR. This fix was released in April 2017 in sbt [v0.13.15](https://github.com/sbt/sbt/releases/tag/v0.13.15).

## Script Tutorial

``` script
Erics-MBP:sbt-scripting eric$ scala -version
Scala code runner version 2.12.1 -- Copyright 2002-2016, LAMP/EPFL and Lightbend, Inc.
```

Script file names may not have spaces in the file name or embedded periods except for the file extension. The periods get interpreted later downstream as a package name. Unix or Linux script files name can have no extension or `.sh` which are the normal conventions for sh and bash scripts. The file should be made executable via `chmod u+x <filename>` so it can be executed by the filename. Prior to the change I made sbt scripts only ran on Unix and they had to be named with a `.scala` extension. Now, any file extension or none is valid for Unix scripts so it is backward compatible.

Windows scripts must end in `.cmd` or in `.bat`. Batch files, can be executed with or without the extension. If executed without an extension the script must pass the full file name to sbt. In order to make surethis happens we use the following symbol for the file name argument `%~nx0` and pass that to sbt first and then pass the additional arguments via `%*`.

### Prerequisite for sbt Scripts

The first thing you should do is download and install **sbt** using the following link. [http://www.scala-sbt.org/download.html](http://www.scala-sbt.org/download.html). The tutorial uses versions `0.13.16` and `1.0.0` so the latest download may be necessary. **sbt** uses a launcher to start and this launcher has been changed in newer versions so a recent download is recommended.

Default logLevel in sbt is as follows: `logLevel in Global := Level.Warn`

## Appendix 1: Scala Scripts

Although this tutorial is about sbt scripts this section talks a little about Scala scripts. Scala Scripts allow much of the same functionality as sbt scripts but you do not get the power of sbt and dependency management. This means that when you go to update/upgrade your script you must download the dependent jars and then package them with your script.

### Prerequisite for Scala Scripts
To run a Scala script you must first download [Scala] and install it on your machine. Your can test as follows:

```
Erics-MBP:sbt-scripting eric$ scala -version
Scala code runner version 2.12.1 -- Copyright 2002-2016, LAMP/EPFL and Lightbend, Inc.
```


