# Ensure that the following directory was built:
# baseball/src/baseball
# Create a Main.java in baseball/src/baseball
# in Main.java, package as so: package baseball
# Then run these lines in the root baseball directory
javac -sourcepath src src/baseball/Main.java
java -cp src baseball.Main
