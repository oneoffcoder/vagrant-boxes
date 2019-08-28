Vagrant.require_version ">= 1.7.3"

Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |v, override|
    v.gui = true
    v.memory = "5120"
    v.cpus = 4
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]
    v.customize ["modifyvm", :id, "--vram", "128"]
  end
end
