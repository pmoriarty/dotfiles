# fix sqlplus
alias sqlplus="rlwrap sqlplus"

########### dev shortcuts ############
# lein
alias lein="nocorrect lein"
# gradle
alias gr="nocorrect gradle"
alias grd="gr rebuildDatabases"
alias gide="gr idea"
alias grb="gr build -x test --parallel"
alias grt="grb && gr test"
alias grcb="gr clean build -x test --parallel"
alias grct="grcb && gr test"

# maven
alias minstall="mvn -DskipTests -Dmaven.test.skip=true clean install"
alias mdeploy="mvn deploy:deploy-file -DrepositoryId=annadale-repository -Durl=scpexe://s2/var/www/localhost/htdocs/maven2 -Dpackaging=jar -DuniqueVersion=false -DgroupId= -DartifactId= -Dfile="
alias mdeploydatomic="/usr/share/maven2/bin/mvn deploy:deploy-file -DrepositoryId=annadale-repository -Durl=scpexe://s2/var/www/localhost/htdocs/maven2 -Dpackaging=jar -DuniqueVersion=false -DgroupId=com.datomic -DartifactId=datomic-free -DpomFile=pom.xml -Dfile= datomic-free.jar"

# nexus
alias krem="pkill -f com.annadaletech.nexus.harness.service.remote"

# ssh
alias bamboo1="ssh bamboo@bamboo-agent1"
alias bamboo2="ssh bamboo@bamboo-agent2"
alias bamboo3="ssh bamboo@bamboo-agent3"
alias bamboo4="ssh bamboo@bamboo-agent4"

alias schemaspy="java -jar schemaSpy_5.0.0.jar -t pgsql -host localhost -db switch -s switch -u switch -o /tmp -dp /home/pmoriarty/projects/lib/postgresql-9.2-1002.jdbc4.jar -noads -nologo"


alias setjdk16='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias setjdk17='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setjdk18='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

alias listening='lsof -sTCP:LISTEN -iTCP:$PORT'
