tutorials
tutorialRestart
	<tutorial>
	^QCTutorial new
		priority: 100;
		title: 'Restart';
		chapter: 'Other';
		description: 'Since editing might corrupt the tutorial, there is also a reset button. Go to the details and press the reset button. Then continue with the next chapter.';
		addCommand: (QCCommand on: 'Reset' condition: nil action: [ :row :component | self resetTutorialOn: component ]);
		yourself
		