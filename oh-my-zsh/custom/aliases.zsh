# fix sqlplus
alias sqlplus="rlwrap sqlplus"

########### dev shortcuts ############
# gradle
alias gr="nocorrect gradle"
alias grd="gr rebuildDatabases"
alias gide="gr idea"

# maven
alias minstall="mvn -DskipTests -Dmaven.test.skip=true clean install"
alias mdeploy="mvn deploy:deploy-file -DrepositoryId=annadale-repository -Durl=scpexe://s2/var/www/localhost/htdocs/maven2 -Dpackaging=jar -DuniqueVersion=false -DgroupId= -DartifactId= -Dfile="
alias mdeploydatomic="/usr/share/maven2/bin/mvn deploy:deploy-file -DrepositoryId=annadale-repository -Durl=scpexe://s2/var/www/localhost/htdocs/maven2 -Dpackaging=jar -DuniqueVersion=false -DgroupId=com.datomic -DartifactId=datomic-free -DpomFile=pom.xml -Dfile= datomic-free.jar"

# nexus
alias krem="pkill -f com.annadaletech.nexus.harness.service.remote"

# ssh
alias bamboo="ssh bamboo@bamboo-agent2"

alias schemaspy="java -jar schemaSpy_5.0.0.jar -t pgsql -host localhost -db switch -s switch -u switch -o /tmp -dp /home/pmoriarty/projects/lib/postgresql-9.2-1002.jdbc4.jar -noads -nologo"
