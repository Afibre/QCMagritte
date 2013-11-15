rendering
renderMenuChoicesOn: canvas
	canvas unorderedList
		class: self menuListClass;
		with: [ self menuChoices do: [ :each | self renderMenuChoiceFor: each on: canvas ] ]