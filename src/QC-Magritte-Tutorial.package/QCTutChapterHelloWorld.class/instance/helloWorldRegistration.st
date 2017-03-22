hello-world
helloWorldRegistration
	<tutorial>
	^QCTutorial new
		priority: 100;
		title: 'Registration';
		chapter: 'Hello world';
		description: 'Now we need to inform Seaside that this new component can be used as a root component. In order to do this we need to tell the class what name to use when it registers itself as an application. Switch to the Playground and evaluate the following text by clicking anywhere in the line and typing <Ctrl>+<D> (for ‘do-it’). If you have trouble, go back to the beginning of this chapter.';
		addCode: 'HelloWorldApplication registerForDevelopmentAt: ''HelloWorld''.';
		yourself
		