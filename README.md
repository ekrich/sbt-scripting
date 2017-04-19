# Getting started tutorial for scripting using sbt
## Introduction
I have been interested in Scala since just prior to Scala Days 2011 at Stanford.
The job I had at the time was doing enterprise Java and I knew there was little hope 
for using Scala there but I really liked the job and projects we were working on so 
I started to write more functional code in Java learning Scala on the side. Eventually 
I moved to another job and started to use Scala for Gatling and so I got introduced 
to sbt to build the testing scripts. I was really impressed with the tool so I bought 
sbt in Action and started the slow process of learning about sbt. I started to look 
at the product we had and all the scripting was in bash and we had Windows so to 
test anything with scripting involved you had to use a server. This brought me to 
sbt scripting. The first thing I found was that scripting was not supported on Windows 
and on Linux your file needed to end in .scala rather than .sh or without an extension.

Since I never had contributed to Open Source, was a novice at GitHub, and intermediate
level in Scala, why not contribute to sbt? What could go wrong? Actually, both [Eugene
Yokota](https://github.com/eed3si9n) and [Dale Wijnand](https://github.com/dwijnand) were
super helpful and I was able to get everything running and debugging locally and I 
did my first Pull Request (PR) before Scala Days 2016 last year. Eugene was kind 
enough to help me get my PR ready for merging at the conference and shortly after that 
the support for sbt scripting for Windows was supported using .bat files and Unix/Linux 
added support for .sh or no extension. See the release notes: 
(https://github.com/sbt/sbt/releases/v0.13.12). During this development I found that 
quoted arguments were not passed correctly to scripts but this would have to wait 
for another PR.
