rendering
renderErrorsOn: html
	html break.
		
	html tbsAlert
		beDanger;
		with: [
			html anchor 
				class: 'close';
				attributeAt: 'data-dismiss' put: 'alert';
				with: [ html html: '&#215;' ].

			html strong: 'Please correct the following issues:'.
			html unorderedList
				class: 'errors';
				list: self errors;
				with: nil ]