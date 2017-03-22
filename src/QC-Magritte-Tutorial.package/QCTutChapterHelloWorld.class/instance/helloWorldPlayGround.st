hello-world
helloWorldPlayGround
	<tutorial>
	^QCTutorial new
		priority: 20;
		title: 'Playground';
		chapter: 'Hello world';
		description: 'A playground provides a text area in which you can evaluate expressions and (optionally) display or inspect the results. Since this might be your first exposure to Smalltalk code, we''ll give a brief introduction to evaluating Smalltalkcode in a Playground. (If you already know Smalltalk or are just impatient, you can skim or skip this part!)';
		addExplanation: 'To open a playground press anywhere in the environment and you should get the world menu. The second option from the top opens a playgound.';
		addExplanation: 'Click in this newly opened window and then type the following:';
		addCode: '5 factorial.';
		addExplanation: 'Press the green arrow (the play button, with mouse over text do it and go) and you should get an inspector on the result, showing that 5 factorial is 120.';
		" add a picture of the image "
		yourself
		