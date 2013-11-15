rendering
renderButtonsOn: html
	self buttons 
		do: [ :each |
			| tag |
			tag := html tbsButton
				accessKey: each value first;
				callback: [ self execute: each key ];
				text: each value.
			(each = buttons first) ifTrue: [ tag bePrimary ] ] separatedBy: [ html space ]
