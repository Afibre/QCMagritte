hello-world
helloWorldAddTime
	<tutorial>
	^QCTutorial new
		priority: 130;
		title: 'Add Time';
		chapter: 'Hello world';
		description: 'The QCMagritte application framwork is that it is data driven. This means the our application needs to have a model, to actually do something. We will start making a model in chapter 4: "TodoList".';
		addExplanation: 'For now we will override the "renderCurrentPageOn:" method as follows:';
		addCode: 'renderCurrentPageOn: html
		| now |
		now := DateAndTime now.
		html
			heading: ''Demo'';
			heading: now level: 3;
			yourself';
		addExplanation: 'This code introduces some new syntax. Line 2 defines a method temporary variable, ‘now,’ that is declared by placing it between vertical bars (or pipe characters). In Smalltalk (like Perl, Python, PHP, and others), variables are dynamically typed (as opposed to the static typing of languages like C and Java where types must be declared at compile time). This means that all we need to do is specify the name and this will reserve space for the object reference.';
		addExplanation: 'Line 3 is an expression that introduces the second of Smalltalk’s two operators (the return operator was mentioned in step #8). The assignment operator or colon-equals (:=) is used to take the object returned by the expression on the right and place a reference to it in the variable defined on the left.';
		addExplanation: 'Lines 4-7 are a single expression. Since extra whitespace is ignored in Smalltalk you can add new lines and tabs for cosmetic styling. Next, recall that expressions are made up of receivers and messages and that there are three types of messages: unary, binary, and keyword (evaluated in that order). On line 5 the keyword message ‘heading:’ that is sent to ‘html’ with a String as an argument. Normally this line would en with a period (which would indicate the end of an expression), but this message ends with a semicolon.';
		addExplanation: 'This semicolon indicates a ‘message cascade,’ meaning that that what follows is not a full expression (which would require an object reference to designate the receiver), but another message to the receiver of the most recent message. The receiver of the last message was the object referenced by the method argument ‘html’, so the next message will be sent to the same object. The next message is also a keyword message, ‘heading:level:’ that takes two arguments, first is the variable ‘now’ and the second is the SmallInteger ‘3.’';
		addExplanation: 'Finally, we have the ‘yourself’ message that is sent to the receiver of the most recent message. The ‘yourself’ message calls a method that simply returns the receiver. In our case, since we ignore the returned object, this message send is nothing more than (a slightly inefficient) cosmetic filler so that the previous line can end with a semicolon rather than a period (which would probably be the more common approach by most Smalltalkers). This programming style allows you to come back later and add another line or rearrange the lines without having to change the line ending character.';
		yourself
		