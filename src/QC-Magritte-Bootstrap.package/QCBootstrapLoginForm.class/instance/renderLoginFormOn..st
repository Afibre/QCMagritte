rendering
renderLoginFormOn: canvas
	canvas tbsForm beInline; with: [ 
		self renderLoginOn: canvas ].
		self errorText ifNotNil: [ canvas span
			class: 'errorText';
			with: self errorText ]