# Useful shortcuts
alias mcd="mount /mnt/cdrom"
alias mflash="mount /mnt/usb"
alias ucd="umount /mnt/cdrom"
alias uflash="umount /mnt/usb"
alias xterm="xterm -sb -sl 10000 -ls +vb -fg white -bg black"

# sudo aliases
alias halt="sudo halt"
alias reboot="sudo reboot"
alias updated="sudo updatedb"

# fix sqlplus
alias sqlplus="rlwrap sqlplus"

########### dev shortcuts ############
# maven
alias mvn="mvn3"
alias minstall="mvn -DskipTests -Dmaven.test.skip=true clean install"
alias mselenium="mvn -Pselenium clean selenium:start-server jetty:run-exploded"
alias massembly="mvn -DskipTests clean assembly:assembly"
alias magentappwithchip="mvn clean jetty:run -Puse-chip"
alias magentapp="mvn clean jetty:run"
alias mdeployselenium="mvn deploy:deploy-file -DgroupId=org.openqa.selenium.server -DartifactId=selenium-server-standalone -Dversion=0.9.3-ANNADALE -DrepositoryId=annadale-repository -Durl=scpexe://server2/var/www/localhost/htdocs/maven2 -Dpackaging=jar -Dfile=selenium-server/target/selenium-server-0.9.3-ANNADALE-standalone.jar -DuniqueVersion=false"

# rake
alias rclone="rake db:test:clone_structure"

# nexus
alias nexus="cd /home/pmoriarty/projects/internal/nexus"
alias hsrc="cd /home/pmoriarty/projects/internal/nexus/harness/src/main/clojure/com/annadaletech/nexus/harness"
alias ssrc="cd /home/pmoriarty/projects/internal/nexus/switch/src/main/clojure/com/annadaletech/nexus/core"
alias wcli="cd /home/pmoriarty/projects/internal/nexus/client/web-client"
alias mnail="mvn clojure:nailgun"
