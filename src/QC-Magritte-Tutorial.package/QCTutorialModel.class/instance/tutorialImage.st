installation
tutorialImage
	<tutorial>
	^QCTutorial new
		priority: 40;
		title: 'Pharo image';
		chapter: 'Installation';
		description: 'When you launch the executable, you are actually starting a web server in Pharo Smalltalk. (Currently, do-it ZnZincServerAdaptor startOn: 8080). As we continue through this tutorial, we will refer to this executable as “Pharo” to distinguish it from the Seaside code framework that Pharo contains. Like most Smalltalk dialects, Pharo runs as a “virtual machine” on your host operating system. You should see a new main window containing three smaller windows. This main window gives you a graphical user interface into an object space loaded into memory from the file ‘seaside.image’ that was part of the earlier download. This ‘image’ is a copy of one with QCMagritte and a simple web server already loaded. The inner windows will be the same on all three platforms and will not look like windows created by other applications on your platform. One of the windows, labeled “QCMagritte 1.x.y” contains a comment telling you that a web server is already running and you can point your web browser to http://localhost:8080/ to give it a try.';
		" add a picture of the webpage with a red circle around the link."
		yourself
		