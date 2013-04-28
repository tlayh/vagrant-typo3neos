TYPO3 Neos Vagrant Box
==============================

Copyright 2013, Thomas Layh // http://layh.com

Description:
--------------

Will install TYPO3 Neos including all required setups for the server environment.


Installation:
--------------

1. Download the Vagrant installer from:
    http://downloads.vagrantup.com

2. Install Librarian and librarian-chef and vagrant-vbguest
::
   vagrant plugin install librarian
   vagrant plugin install librarian-chef
   vagrant plugin install vagrant-vbguest

3. Install required cookbooks
::
   librarian-chef install

4. Add to your host file
::
   192.168.23.4 typo3.neos

5. Run "vagrant up"
	Will take about 10 Minutes, depending on your system speed and download rate

6. Setup TYPO3.Neos
	After the setup is complete, open http://typo3.neos/setup and follow the instructions

7. Database
	Username/Password: root/root

8. Shutdown with "vagrant suspend" and restart with "vagrant resume"
	This will save the state of the virtual machine. Make sure all your developed stuff is saved somewhere, because if the box crashes for some reaseon, everything will be gone.
