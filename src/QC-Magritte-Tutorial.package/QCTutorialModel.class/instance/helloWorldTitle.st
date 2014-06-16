hello-world
helloWorldTitle
	<tutorial>
	^QCTutorial new
		priority: 80;
		title: 'Title';
		chapter: 'Hello world';
		description: 'For all QCMagritte applications, there are 2 required fields that need to be filled out. First we need to give our application a title by implementing the method "title".
		To add an instance method to our HelloWorld class, ensure that the instance side of the class is selected (click the instance button), then click in the third column (the method categories list) on "no messages". This will change the text area from a description of the class to a method template.';
		addCode: 'title
	^''Hello world!''';
		addExplanation: 'In Smalltalk, methods start with the name of the method (the message selector) and the name of any arguments. The remainder of a method consists of Smalltalk expressions that are evaluated when the method is called. Just as all expressions return an object, all methods return an object (which, of course, the caller is free to ignore). By default, the method returns the receiver, but any expression following the ‘circumflex accent’, usually referred to as ‘up arrow’ or ‘caret’ (^), will be returned as the expression’s result. (This up arrow is one of Smalltalk’s two operators. See step "Assignment" for the assignment operator.)';
		yourself
		