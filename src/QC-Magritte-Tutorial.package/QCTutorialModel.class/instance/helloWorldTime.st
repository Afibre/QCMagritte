hello-world
helloWorldTime
	<tutorial>
	^QCTutorial new
		priority: 140;
		title: 'Time';
		chapter: 'Hello world';
		description: 'Creating a model will not give much of a difference, since our model is still empty. We will now add a method in our model, that will return the current time, and a description that points to this method. First the method that returns the current date and time:';
		code: 'now
	^DateAndTime now';
		explanation: 'Our description is more complex, as it has a few elements. We will first give the method then explain it.';
		code: 'descriptionNow
		<magritteDescription>
		^MADateAndTimeDescription new
			label: ''Now'';
			accessor: #now;
			beReadonly;
			yourself';
		explanation: 'This code introduces some new syntax. The second line is a "pragma" that allows our application to find this method and use it build the description for the model.
	Lines 3-7 are a single expression. Since the extra extra whitespace is ignored in Smalltalk you can add new lines and tabs for cosmetic styling. Next, recall that expressions are made up of receivers and messages and that there are three types of messages: unary, binary, and keyword (evaluated in that order). The first line creates a new object, of the type MADateAndTimeDescription. To this object first the binary message "label:" is send, and the message ends with a semicolon.
This semicolon indicates a ‘message cascade,’ meaning that that what follows is not a full expression (which would require an object reference to designate the receiver), but another message to the receiver of the most recent message. The receiver of the last message was the newly created object, so the next message will be sent to the same object. The next message is also a keyword message, ‘accessor:’ that takes one arguments, and then follows a unary message that is also sent to this object.
Finally, we have the ‘yourself’ message that is sent to the receiver of the most recent message. The ‘yourself’ message calls a method that simply returns the receiver. In our case this message is making sure that the newly created object is returned, and not some other return value of a previous message. This programming style allows you to come back later and add another line or rearrange the lines without having to change the line ending character.';
		yourself
		