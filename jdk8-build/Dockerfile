FROM	slieb/archlinux

RUN	pacman -S jdk8-openjdk maven gradle --noconfirm --needed && pacman -Scc --noconfirm 
ENV     M2_HOME=/opt/maven
ENV     GRADLE_USER_HOME=/var/cache/gradle-repo
ENV     GRADLE_OPTS="-Dfile.encoding=UTF-8"
COPY	maven/settings.xml /opt/maven/conf/settings.xml
COPY	maven/settings.xml /root/.m2/settings.xml
