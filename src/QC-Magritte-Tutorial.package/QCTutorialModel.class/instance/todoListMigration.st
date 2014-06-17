addingProjects
todoListMigration
	<tutorial>
	^QCTutorial new
		priority: 20;
		title: 'Migration';
		chapter: 'Adding projects';
		description: 'We are now going to extend our todo items with a project. Since the project comes from the model, we also going to need a backlink to the model.';
		addExplanation: 'We are going to change the class definition of TodoItem as follows:';
		addCode: 'QCParentObject subclass: #TodoItem
	instanceVariableNames: ''title description completed project''
	classVariableNames: ''''
	category: ''Tutorial-Model''';
		addExplanation: 'We have added the variable project (add accessors for this), and also, we have changed the superclass of the todoitem into QCParentObject. QCParentObject knows its parent, and in QC Magritte framework we make sure that it is created with a backlink,';
		addExplanation: 'Before we proceed we have to realize that our current todo items do not yet know their parent. We can solve this in two ways. First we could simply throw away our current data by performing the following statement in a workspace.';
		addCode: 'TodoListModel reset.';
		addExplanation: 'But we are going to take a more complex method, since this is a tutorial. We are going to migrate our todo items. Since this is a common theme when maintaining an application, we have also put some support in the framework for this. We add the following method to TodoListModel:';
		addCode: 'sanitizeForUpgrade
	self todoItems do: [ :each | each parent: self ].
	super sanitizeForUpgrade';
		addExplanation: 'Now if we call the method "TodoListModel sanitizeForUpgrade" the framework will follow the magritte descriptions and execute on all objects this method. Note that we call our super after we do our own sanitize code, because the super will walk the entire tree.';
		yourself