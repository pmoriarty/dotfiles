# fix sqlplus
alias sqlplus="rlwrap sqlplus"

########### dev shortcuts ############
# gradle
alias gr="gradle"
alias grd="gradle rebuildDatabases"
alias gide="gradle idea"

# maven
alias minstall="mvn -DskipTests -Dmaven.test.skip=true clean install"
alias mdeploy="mvn deploy:deploy-file -DrepositoryId=annadale-repository -Durl=scpexe://s2/var/www/localhost/htdocs/maven2 -Dpackaging=jar -DuniqueVersion=false -DgroupId= -DartifactId= -Dfile="
alias mdeploydatomic="/usr/share/maven2/bin/mvn deploy:deploy-file -DrepositoryId=annadale-repository -Durl=scpexe://s2/var/www/localhost/htdocs/maven2 -Dpackaging=jar -DuniqueVersion=false -DgroupId=com.datomic -DartifactId=datomic-free -DpomFile=pom.xml -Dfile= datomic-free.jar"

# nexus
alias krem="pkill -f com.annadaletech.nexus.harness.service.remote"

# ssh
alias bamboo="ssh bamboo@bamboo-agent1"

