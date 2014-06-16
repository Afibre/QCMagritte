todo-list
todoListAccessors
	<tutorial>
	^QCTutorial new
		priority: 20;
		title: 'Accessors';
		chapter: 'Todo List';
		description: 'Next we will define a couple ‘accessor’ (or ‘getter’) methods that simply return the value of the instance variable. (The method return is signaled by the up arrow or caret at the beginning of an expression.) These methods are necessary because in proper Smalltalk there is no direct structural access to the instance variables (or properties or fields) of an object. This language design enforces encapsulation and allows the implementation of an object to change (perhaps the ‘price’ is calculated every time it is requested rather than saved with the object). Note that these are two separate methods.';
		addExplanation: 'To get to a method creation template, click on ‘Todo-List-Model’ in the first column, click on ‘TodoItem’ in the second column, click on ‘-- all --‘ in the third column, click in the text area at the bottom of the system browser, and finally select all using <Ctrl>+<A> (or click in the text area after the end of the last line). Enter the first method (two lines), save (using <Ctrl>+<S>), and then select all, delete, and enter the second method (two lines), and save.';
		addCode: 'title
		^title';
		addCode: 'description
		^description';
		addCode: 'completed
		^completed ifNil: [ false ]';
		addExplanation: 'When an instance variable is not initialized it is nil by default. We send the message "ifNil:" to this variable, and if this variable is nil the block that is passed is evaluated. Evaluation gives the result false. If the variable is something else, we the message "ifNil:" returns the variable itself.';
		yourself