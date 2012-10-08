
Vagrant::Config.run do |config|
  
  config.vm.forward_port 8000, 8000
  config.vm.share_folder "VM", "/vm/", "/Users/eric/vm/"

  config.vm.box = "PythonDevBootstrap"
  config.ssh.guest_port = 22

   config.vm.provision :puppet do |puppet|
     puppet.manifests_path = "manifests"
     puppet.manifest_file  = "init.pp"
     puppet.module_path = "modules"
     puppet.options = "--verbose --debug"
     #puppet.options = "--verbose --noop"
   end
   
end
