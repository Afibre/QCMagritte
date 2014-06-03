rendering
reRenderEditorOn: canvas
	canvas div
		class: 'selected';
		with: [ self renderItems: self selectedList on: canvas heading: (QCMultilanguageString on: 'Selected columns') symbol: #setSelected: ].
	canvas div
		class: 'unselected';
		with: [ self renderItems: self unselectedList on: canvas heading: (QCMultilanguageString on: 'Not selected columns') symbol: #setUnselected: ]
