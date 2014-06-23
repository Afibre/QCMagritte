addingProjects
addingProjectsAnnouncements
	<tutorial>
	^QCTutorial new
		priority: 70;
		title: 'Announcements';
		chapter: 'Adding projects';
		description: 'When we look at the result, we see that there are several problems with our current implementation.';
		addExplanation: 'First of all, we see that the details should not be used for all objects. We can open projects in the todo-list, and that might not be such a good idea. Also changing the menu will change the left page, but will leave the details page as is. So we have implemented this in the wrong place. We are going to redirect this to the overview.';
		addExplanation: 'First we need our own overview class, so we can add the code for the columns and render the detail view here. Add the class TodoOverview as a subclass of QCBootstrapOverview in the category Tutorial-Web. We need to link this class to the TodoApplication. We do this by overriding the overview class:';
		addCode: 'overviewClass
	^TodoOverview';
		addExplanation: 'Now we are going to move all methods with our modifications. Simply use drag and drop to move the following methods: "renderDetailPageOn:", "detailsPage" and "children". The "renderCurrentPageOn:" needs a small change after moving, so we copy/paste this method and rename it to "renderContentOn:", and also modify the reference to the super.';
		addExplanation: 'Finally we need to change the "showDetails:". Remove the contents for now in TodoApplication, we will come back to this shortly. We are going to implement a "showDetails:" method on TodoOverview.';
		addCode: 'showDetails: anAnnouncement
	detailsPage := self createPageFor: anAnnouncement target';
		addCode: 'createPageFor: anObject
	^(QCBootstrapDetailView on: self target: anObject)
		canClose: true;
		yourself';
		addCode: 'initialize
	super initialize.
	self on: QCShowDetails do: [ :ann | self showDetails: ann ]';
		addExplanation: 'The last method will subscribe the overview component to the event: "QCShowDetails". Now go back to the website and check the behavior. You will notice that when you press on a details, it still does not work. A details page keeps a reference to the previous page. It does so, by asking the parent for the current page. In the debugger create this method and supply the following answer:';
		addCode: 'currentPage
	^self detailsPage';
		addExplanation: 'We could also have chosen simply to return "nil", but we will use this later in the tutorial. Notice on the website that the behavior has not changed. But now we are nearly there. Instead of creating one details page in the application, we now have 3 details pages, created by the overviews. But instead of creating 3, we should create only a details view, when the overview is displaying the element. So we change the showDetails: method once more:';
		addCode: 'showDetails: anAnnouncement
	(self isShown: anAnnouncement target)
		ifTrue: [ detailsPage := self createPageFor: anAnnouncement target ]';
		addCode: 'isShown: anObject
	^self report rows includes: anObject';
		addExplanation: 'An overview holds a reference to the report that shows the objects.';
		addExplanation: 'Now try to open the details of an open todo item. You can see that it is opened in 2 places: in todo''s and in All items, but no longer in projects. Now when we open the details of a project, by clicking on a project, we still have not the desired result, as the details are opened on an invisible page. So we go back to the showDetails: in the class TodoApplication. Change the code to:';
		addCode: 'showDetails: anAnnouncement 
	(self currentPage showsObject: anAnnouncement target)
		ifFalse: [ 
			super showDetails: anAnnouncement ]';
		addExplanation: 'So we revert to our old "showDetails:", with a modification to test if it is visible on the currentpage, as there may be multiple pages where the object will be shown. Now we are going to add the following method to your new overview, since our overview will now also show the details of the objects:';
		addCode: 'showsObject: anObject
	^(super showsObject: anObject) or: [ self isShown: anObject ]';
		addExplanation: 'Now see how it looks like.';
		yourself