rendering
renderEditorOn: html
	| passwordInput verifiedPasswordInput |
	passwordInput := html passwordInput.
	description placeholder notNil ifTrue: [ 
		passwordInput placeholder: description placeholder ].
	passwordInput
		id: self labelId;
		on: #string of: self.
		
	html break.
	
	verifiedPasswordInput := html passwordInput.
	
	description placeholder notNil ifTrue: [ 
		verifiedPasswordInput twbsPlaceholderText: 'verify password' ].
	
	verifiedPasswordInput
		class: 'verification';
		on: #verificationString of: self