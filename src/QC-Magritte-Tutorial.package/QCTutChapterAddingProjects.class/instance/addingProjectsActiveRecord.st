addingProjects
addingProjectsActiveRecord
	<tutorial>
	^QCTutorial new
		priority: 80;
		title: 'Active record';
		chapter: 'Adding projects';
		description: 'We are not completely satisfied with the result. First of all, it is a waste of space when the details are not shown. Secondly, the user can and should be helped more, to make it more visible for the user what record is shown. And have you tried pressing cancel or save? It does not do what the user would expect.';
		addExplanation: 'The first one is easy. We simply need to check in the overview if the details page exists, and if not revert to the original "renderContentOn:". This will change our rendering code into:';
		addCode: 'renderContentOn: canvas
	canvas tbsRow: [ 
		self detailsPage ifNil: [ ^super renderContentOn: canvas ].
		canvas tbsColumn
			mediumSize: 6;
			with: [ super renderContentOn: canvas ].
		canvas tbsColumn
			mediumSize: 6;
			with: [ self renderDetailPageOn: canvas ] ]';
		addExplanation: 'The second line tests if the detailsPage is nil, and if so it calls the super. But here we put in a trick: we return the value of the super, causing the rest of the method not to be processed any more.';
		addExplanation: 'The second thing we are going to do, is to fix the "close". When you look at the code of the QCAppComponent, there is a "closeOn:" implemented. This methods checks if its parent exists, and if so, it asks its parent to close itself. Here we created the details component with as parent the overview. So we should simply implement on the TodoOverview the method "close:" as follows:';
		addCode: 'close: aPage
	(self detailsPage = aPage) ifTrue: [ detailsPage := nil ]';
		addExplanation: 'To be certain it is the right page we are closing, we check if it is indeed our details page. It should not occur for any other pages, but for robustness we ignore this error.';
		addExplanation: 'If you look at the implementors of "close:" you see that there are three implementors of this method in the QCMagritte framework. The methods all three work the same: find the page, and if found close this page. But because all three classes have a different structure for the pages they store, the implementations are all different.';
		addExplanation: 'Now we want to add one more detail to make the user interface better. We want to make the row that is shown in details active. Since we have a link to our report in our overview, we add the code for this here. This makes the new implementation of the "showDetail" in TodoOverview:';
		addCode: 'showDetails: anAnnouncement
	(self isShown: anAnnouncement target)
		ifTrue: [ 
			detailsPage := self createPageFor: anAnnouncement target.
			self report setActive: anAnnouncement target ]';
		yourself