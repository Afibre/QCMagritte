rendering
renderMenuChoicesOn: canvas
	canvas unorderedList
		class: self menuListClass;
		with: [ self pages do: [ :each | self renderMenuChoiceFor: each on: canvas ] ]