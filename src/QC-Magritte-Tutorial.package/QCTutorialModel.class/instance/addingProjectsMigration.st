addingProjects
addingProjectsMigration
	<tutorial>
	^QCTutorial new
		priority: 30;
		title: 'Migration';
		chapter: 'Adding projects';
		description: 'We are now going to extend our todo items with a project. Since the project comes from the model, we also going to need a backlink to the model.';
		addExplanation: 'We are going to add the following accessor to TodoItem. When you try to save this method, it automatically gives you a few suggestions what to do with project. Select it to be an instance variable. Also add an accessor.';
		addCode: 'project
	^project';
		addExplanation: 'Now we are going to change the object definition to have a different supperclass: QCParentObject. QCParentObject knows its parent, and the QC Magritte framework make sure that new items are created with a backlink,';
		addCode: 'QCParentObject subclass: #TodoItem
	instanceVariableNames: ''title description completed project''
	classVariableNames: ''''
	category: ''Tutorial-Model''';
		addExplanation: 'Before we proceed we have to realize that our current todo items do not yet know their parent. We can solve this in two ways. First we could simply throw away our current data by performing "TodoListModel reset" in a workspace. But we are going to take a more complex method, since this is a tutorial. We are going to migrate our todo items. Since this is a common theme when maintaining an application, we have also put some support in the framework for this. We add the following method to TodoListModel:';
		addCode: 'sanitizeForUpgrade
	self todoItems do: [ :each | each parent: self ].
	super sanitizeForUpgrade';
		addExplanation: 'Now if we call the method "TodoListModel sanitizeForUpgrade" the framework will follow the magritte descriptions and execute on all objects this method. Note that we call our super after we do our own sanitize code, because the ApplicationModel will walk the entire tree. Why don''t you take a look how this is implemented.';
		addCode: 'TodoListModel sanitizeForUpgrade.';
		addExplanation: 'When you have looked at the code, you will have seen, that there was a visitor called. In Magritte a lot of things are solved with visitors. For more information on visitors look up the visitor pattern (http://en.wikipedia.org/wiki/Visitor_pattern).';
		yourself