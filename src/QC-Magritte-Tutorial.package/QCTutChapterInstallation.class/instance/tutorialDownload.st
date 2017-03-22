installation
tutorialDownload
	<tutorial>
	^QCTutorial new
		priority: 10;
		title: 'Download';
		chapter: 'Installation';
		description: 'This tutorial is a work in progress. When this tutorial is complete it is to include a link that gives a "one-click" image with QCMagritte installed. The first item should contain a link where you can download the "packed" one-click image. Please click on details for further info.';
		addExplanation: 'For now we will summarize the chapter "installation" as follows: download a QCMagritte image and make sure you can launch it.';
		addExplanation: 'Also at some points there are references to images. The images are not yet included in the tutorial and should be added.';
		addExplanation: 'Finally, as this is work in progress, you might need to "reset" this tutorial to get a new version. I included a button here to do so.';
		addCommand: (QCCommand on: 'Reset' condition: nil action: [ :row :component | QCTutorialModel default resetTutorialOn: component ]);
		" add a picture of the webpage with a red circle around the link."
		yourself
		