# Java setup
set -Ux JAVA_HOME /usr/lib/jvm/java-25-openjdk
set -Ux MAVEN_HOME /opt/maven/

# Path configuration
fish_add_path ~/.local/bin
fish_add_path ~/.node_modules/bin
fish_add_path $JAVA_HOME/bin $PATH
fish_add_path $MAVEN_HOME/bin $PATH
fish_add_path ~/.pyenv/bin
pyenv init - | source
