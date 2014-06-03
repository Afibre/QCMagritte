A QCFormComponent is Magritte Container, that displays a form, with all its subforms. Instead of creating a component on the description of the object, it creates a component on a seperate build description, called a form. This form can be dynamically created, i.e. made by a user based on the magritte descriptions. This form has a list of form items that should be shown. These items can be:
	- form properties (a "normal" magritte-description)
	- from groups (a group of form items)
	- sub forms

Instance Variables
	children:	a Dictionary with the components build from the form items
	errors:		The errors from validation
	form:		The form that describes what should be shown
	memento:	a FormMemento that hold the actual values
	parent:		If set the parent of this container
	readonly:	Flag that indicates if this component should be readonly

children
	- xxxxx

errors
	- xxxxx

form
	- xxxxx

memento
	- xxxxx

parent
	- xxxxx

readonly
	- xxxxx
