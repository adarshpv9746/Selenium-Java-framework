sudo apt-get update
#java
java -version
sudo apt install default-jdk
sudo apt install default-jre
java -version
update-alternatives --config java
#copy the java locn from here to the JAVA_HOME variable in /etc/environment
sudo nano /etc/environment
#JAVA_HOME="JAVA_HOME="/lib/jvm/java-11-openjdk-amd64/bin/java"
source /etc/environment
echo $JAVA_HOME

#maven
wget -c https://dlcdn.apache.org/maven/maven-3/3.8.6/source/apache-maven-3.8.6-src.tar.gz -P /tmp
sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.6.0 /opt/maven
sudo cp maven.sh -v /etc/profile.d/
sudo chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
mvn -version

