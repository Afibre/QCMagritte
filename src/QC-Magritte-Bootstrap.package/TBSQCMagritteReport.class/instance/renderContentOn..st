rendering
renderContentOn: canvas
	canvas table
		id: self ajaxId; 
		class: self tableClass;
		with: [ self renderTableOn: canvas ]