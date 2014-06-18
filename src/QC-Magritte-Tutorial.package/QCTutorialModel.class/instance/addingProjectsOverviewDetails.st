addingProjects
addingProjectsOverviewDetails
	<tutorial>
	^QCTutorial new
		priority: 60;
		title: 'Overview and details';
		chapter: 'Adding projects';
		description: 'Currently a new menu item is added for each detail view that is opened. Since a detailview does not need the width of the entire screen, we want to change that. We want to display the detailview next to the overview. And if we have a smaller screen-size, we want to display it below the overview.';
		addExplanation: 'First we are going to take a look where the detailview is created. We have to look at QCApplication initialize for this.';
		addCode: 'initialize
	super initialize.
	self initializeMenu.
	" subscribe to events to display details "
	self on: QCShowDetails do: [ :ann | self showDetails: ann ].
	self on: QCShowQuery do: [ :ann | self showQuery: ann ]';
		addExplanation: 'We see that we are registering to 2 announcements (events): QCShowDetails and QCShowQuery. We are currently interested in the first QCShowDetails. When the announcement is fired, we call the "showDetails:" method with the announcement that is fired. First we are going to put a halt in between there to see what is happening. Add the following method to your TodoApplication.';
		addCode: 'showDetails: anAnnouncement
	self halt.
	^super showDetails: anAnnouncement';
		addExplanation: 'Now go back to the website and click on "details" for an item. Then go back to the image, and you should have a debugger that stopped on the halt we just added. Explore the announcement. You can see that there is one parameter, the object that we need to display. Let the code continue for now.';
		addExplanation: 'First we are going to make some room for the page. Since an QCApplication is a QCPageChoice, at some point the "renderCurrentPageOn:" is called to render the current page. We override this method as follows:';
		addCode: 'renderCurrentPageOn: canvas
	canvas tbsRow: [ 
		canvas tbsColumn
			mediumSize: 6;
			with: [ super renderCurrentPageOn: canvas ].
		canvas tbsColumn
			mediumSize: 6;
			with: [ self renderDetailPageOn: canvas ] ]';
		addCode: 'renderDetailPageOn: canvas
	canvas heading: ''Details''';
		addExplanation: 'Go back to the website and see how it looks.';
		addExplanation: 'Now we need to replace the showDetails: method. First look at the code what is done by default. Now we are going to store a details page ourself, instead of adding it (that adds it as a child of the current page. Edit the showDetails: as follows:';
		addCode: 'showDetails: anAnnouncement 
	detailsPage := self createPageFor: anAnnouncement target';
		addExplanation: 'Now we have 3 things left to do before this works. We need an accessor for the details page, and we have to actually show the page, by modifying the renderDetailPageOn: canvas. We leave this up to you. Finally we need to change the "children" method, as we have to tell seaside we have an extra child page. Modify the children page as follows:';
		addCode: 'children
	^self detailsPage
		ifNil: [ super children ]
		ifNotNil: [ super children copyWith: self detailsPage ]';
		yourself