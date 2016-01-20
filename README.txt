This repository contains of two cookbooks.

apache: It contains the recipe to install apache httpd-tools-2.2.31-1.el6.x86_64.rpm and its dependent softwares YUM respository.
It will create-
1) A YUM Repository Configuration file which is pointing to one of the server in network
2) Virtual Host with template 3) Ddocument root direcory
4) A static page 
5) Add service to the chkconfig
6) Start the service.

apache-upg: It contains the recipe to upgrade httpd-2.2.31-1.el6.x86_64.rpm if this version is not present.

1) It will stop the service
2) Upgrade the version, if required from YUM repository
3) Start the service again.