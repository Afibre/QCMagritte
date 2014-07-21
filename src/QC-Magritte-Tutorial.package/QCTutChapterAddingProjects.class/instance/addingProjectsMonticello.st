addingProjects
addingProjectsMonticello
	<tutorial>
	^QCTutorial new
		priority:90;
		title: 'Monticello';
		chapter: 'Adding projects';
		description: 'Untill now we have only saved our work in our image. This is perfectly fine to start with, but when you want to be able to deploy your application you need to export your code outside of your image. This is a good time to start doing so.';
		addExplanation: 'For exporting code we our going to use a tool called Monticello. There is a manual on Monticello in Pharo by example (http://pharobyexample.org). I will limit my explanation to your task at hand: save your tutorial application. Open a Monticello browser from the world menu. Since we are only interested in Tutorial, we are going to type this in the top left input screen. Now you should see the two packages you created here: "Tutorial-Model" and "Tutorial-Web". The "*" before the text indicates there are unsaved changes.';
		addExplanation: 'Select one of the package and then press the button: "+Repository". Now you can select where you want to save it.  We will select a directory (local folder) for now. Select the folder on your system where you want to save it and press ok. Now we still need to save the package, so press the button "Save" to actually save the package. You get a dialog requesting a comment for this save. We our going to put in "initial version" and then press accept.';
		addExplanation: 'We need to repeat this process for the second package. Add a repository, then press save. Now in the dialog you also have the option "old log messages...". Use this button to enter the same comment, then press accept to commit this package to. Look at the folder you selected and see that there are two files created here, both with the extension ".mcz" These files can be loaded into any smalltalk image.';
		addExplanation: 'Now save your image and proceed with the next chapter';
		yourself