hello-world
helloWorldSaveMethod
	<tutorial>
	^QCTutorial new
		priority: 90;
		title: 'Save method';
		chapter: 'Hello world';
		description: 'When you save your first method (using <Ctrl>+<S>), Pharo asks for your name so it can keep a timestamp of who and when the method was last edited. In the following dialog box enter your name (with no punctuation characters) and press <Enter> or click the OK button:';
	" add picture "
		addExplanation: 'The result should be a System Browser that has a method category of ‘as yet unclassified’ and lists your method as ‘title’. The green arrow pointing up next to the method name in the fourth column is an indicator that you have overridden a superclass method.';
	" add picture "
		yourself
		