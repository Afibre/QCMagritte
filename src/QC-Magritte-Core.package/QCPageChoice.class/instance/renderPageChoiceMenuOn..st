rendering
renderPageChoiceMenuOn: canvas
	self isInDiv
		ifTrue: [
			canvas div
				id: self menuId;
				class: self menuClass;
				with: [
					self renderMenuChoicesOn: canvas.
					self renderSeparatorOn: canvas ] ]
		ifFalse: [
			self renderMenuChoicesOn: canvas.
			self renderSeparatorOn: canvas ]