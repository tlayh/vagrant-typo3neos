TYPO3 Neos Vagrant Box
==============================

Copyright 2013, Thomas Layh <thomas@layh.com>

Description:
--------------

Will install TYPO3 Neos including all required setups for the server environment.


Installation:
--------------

1. Setup Ruby and RubyGems on your system.

2. Install Vagrant and Librarian
   *gem install vagrant*
   *gem install librarian*

3. Install required cookbooks
   *librarian-chef install*

4. Add to your host file
   *192.168.23.4 typo3.neos*

5. Run "vagrant up"

6. After the setup is complete, open http://typo3.neos/setup and follow the instructions

7. Database user and password are "root"

8. Shutdown with "vagrant suspend" and restart with "vagrant resume"