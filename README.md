eRegister
=========

I am attempting to develop an electronic attendance register that I am developing as part of a Web Architectures 
module I am studying at Sheffield Hallam University as part of my BSc Computing Degree. I am trying to develop this 
exploring the aspects of MVC modelling and web services and to build a web based portfolio for future references.

To install this project you must have installed grails previously (can be found at http://grails.org/). 
It is reccomended you run this using a Linux operating system and use the terminal application to clone this project. 
If you would like to clone or run this on Windows/Mac please view the following pages:

Windows - http://windows.github.com/help.html
Mac - http://mac.github.com/help.html

Here's the git checkout link: git://github.com/b1018001/eRegister.git, you can use the command without the speech marks 
to clone the repository in a terminal "git clone git://github.com/b1018001/eRegister.git". This is the read only version of my project.

Once you have cloned my repository then execute in a terminal the grails run-app command, this will launch my application and you can 
then view it at the given URL the terminal responds to.

The database setup is a MySQL database, this is incorporated in the Git Hub package.

The way you interact with the service is that when the application is running that you open an internet browser and navigate
to the where it is being hosted (mostly localhost). This then will take you to the main page in which you can select 
an option from the menu to create, view or edit some data, for example in the course table there will already be a 
course that is created at the initial BootStrap. 

This architechture is a RESTful service, this is beneficial as the application based on the systems resources providing 
this to be stateless. Also the system enables the data to be easily transferable, for example swtiching between XML, HTML 
and JSON is very easy.

I hope you enjoy my application.
