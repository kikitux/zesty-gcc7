Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox"
  config.vm.box = "zesty"
  config.vm.box_url = "https://cloud-images.ubuntu.com/zesty/current/zesty-server-cloudimg-amd64-vagrant.box"
  config.vm.provision "shell", path: "scripts/provision.sh" , privileged: false
end
