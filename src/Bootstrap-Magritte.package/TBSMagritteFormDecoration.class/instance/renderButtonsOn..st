rendering
renderButtonsOn: html
	html div 
		class: 'form-actions'; 
		class: self formCss;
		with: [
			self buttons 
				do: [ :each |
					html button
						accessKey: each value first;
						class: 'btn';
						class: 'btn-primary' if: (each = buttons first);
						callback: [ self execute: each key ];
						text: each value ]
				separatedBy: [ html text: ' ' ] ]