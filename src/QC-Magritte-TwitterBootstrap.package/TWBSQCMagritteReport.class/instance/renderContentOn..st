rendering
renderContentOn: html
	html table
		id: self ajaxId; 
		class: self tableClass;
		with: [ self renderTableOn: html ]