# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
	config.vm.box = "quantal"
	config.vm.box_url = "https://github.com/downloads/roderik/VagrantQuantal64Box/quantal64.box"

	config.ssh.forward_agent = true

	config.vm.network :hostonly, "192.168.23.4"

	config.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = [ "cookbooks", "site-cookbooks" ]

		#chef.log_level = :debug

		chef.add_recipe "typo3-neos"
		#chef.add_recipe "chef-oh-my-zsh"

		chef.json = {
			#'php' => {
			#	'directives' => {
			#		'date.timezone' => 'Europe/Berlin'
			#	}
			#}
			#:oh_my_zsh => {
			#	:users => ['vagrant']
			#}
		}
	end

	config.vm.customize ["modifyvm", :id,"--memory", "2048"]
end