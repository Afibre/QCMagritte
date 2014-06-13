hello-world
helloWorldMainClass
	<tutorial>
	^QCTutorial new
		priority: 70;
		title: 'MainClass';
		chapter: 'Hello world';
		description: 'In QCMagritte, the basic application class is a subclass of QCApplication. We will start with a bootstrap template, and subclass from QCBootstrapApplication, so we have decent layout and do not have to focus on that. In the System Browser, click on any line in the first column to get a new class-creation template. In the text area replace the existing text (beginning with ‘Object subclass: #NameOfSubclass’) with the following and save it (<Ctrl>+<S>).';
		addCode: 'QCBootstrapApplication subclass: #HelloWorldApplication
	instanceVariableNames: ''''
	classVariableNames: ''''
	category: ''Hello-World-Web''';
		explanation: 'Unfortunately, copying from this document and pasting into Pharo will likely not preserve the formatting. If you want to copy/paste, you should use a simple text editor (such as Notepad on Windows, TextEdit on the Mac, or MousePad on Linux) as an intermediate paste/copy location.
Depending on your environment, you might find that <Alt>+<S> (or <Apple>+<S> on the Mac) can be used instead of <Ctrl>+<S>. This should result in a new line with ‘Hello-World’ alphabetically inserted into the class category list (the first column) and the single line ‘HelloWorld’ in the second column.';
		" add a picture of the system browser "
		explanation: 'The first thing to note here is that we have created a subclass of QCBootstrapApplication by sending a message to the class QCBootstrapApplication, not by editing a text file and then sending it through a compiler and then starting an application. In Smalltalk we do not ‘program’ by editing text files, but by interacting with existing objects in an existing, active, object-based environment using tools that are in that environment. If we save this modified object space as an image, and then restart from that image, the class would still exist.';
		yourself
		