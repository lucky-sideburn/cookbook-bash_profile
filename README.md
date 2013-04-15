# bash_profile cookbook

# Requirements

# Usage

1. set the target users:
default['bash_profile']['users'] = ["foo","bar"]

2. set the hash of vars
default['bash_profile']['vars'] = { 
                                "JBOSS_LOG" => "/usr/local/jboss/standalone/log",
                                "JBOSS_HOME" => "/usr/local/jboss"
  						   			}
                       

