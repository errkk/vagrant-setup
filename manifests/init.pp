import "sql.pp"

class general{
  
    exec { "apt-update":
      command => "/usr/bin/sudo apt-get -y update"
    }
  
    package { 
      [ "vim", "git-core", "python", "python-setuptools", "python-dev", "python-pip", "build-essential", "libevent-dev"]:
        ensure => ["installed"],
        require => Exec['apt-update']    
    }

    exec {
      "bpython":
      command => "/usr/bin/sudo pip install bpython",
      require => Package["python-dev", "python-pip"]
    }    

    exec {
      "virtualenv":
      command => "/usr/bin/sudo apt-get install python-virtualenv",
      require => Exec['apt-update']  
    }

    exec {
      "screen":
      command => "/usr/bin/sudo apt-get install screen",
      require => Exec['apt-update']  
    }

    exec {
      "fabric":
      command => "/usr/bin/sudo apt-get install fabric",
      require => Exec['apt-update']  
    }
   
}


include general
include sql