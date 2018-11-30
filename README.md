# Infinite Adaptive Mario

Maven-ized version of Infinite Adaptive Mario.

-----------------------------------------------
**COMPILING AND USING Infinite Adaptive Mario**
-----------------------------------------------

To compile, make sure that a java sdk version of at least 1.6 is installed<br>
and that the jar archive tool is installed.<br>

You can check by typing<br> 
```bash
javac -version
```
you should see something like<br>

```bash
javac 1.6.0_65
```

Type "jar" and your screen should scroll with many jar options.<br>


-----------------
-Compile library-
-----------------

If using Windows run makeit.bat. If using linux/unix run makeit.sh .<br>
In linux/unix you will have to make makeit.sh executable.<br>
To make it executable type<br>
```bash
chmod +x makeit.sh
```
If using maven to compile, infinite-adaptive-mario-1.0.jar will be created<br>
If using makeit.bat or makeit.sh to compile, iam.jar will be created.<br>

## Quick start
```
mvn package
java -jar target/infinite-adaptive-mario-1.0.jar
```	
or
	
```bash
makeit.sh
java -jar iam.jar
```

or

```batch
makeit.bat
java -jar iam.jar
```

Use the arrow keys to move left and right. Hold the "c" button to run faster and press "v" to jump.

## Home page

http://users.soe.ucsc.edu/~bweber/dokuwiki/doku.php?id=infinite_adaptive_mario
