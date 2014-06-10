rendering
renderContentOn: canvas
	" we override this, to do this in bootstrap style "
	self hasKeepAlive
		ifTrue: [ self renderKeepAliveOn: canvas ].
	canvas div
		class: 'container';
		with: [ 
			self renderHeaderOn: canvas.
			self renderCurrentPageOn: canvas ]