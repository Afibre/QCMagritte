as yet unclassified
renderEditorAvailableOn: html
	html select
		size: 6; 
		style: 'span3';
		list: self availableList;
		selected: self availableSelected;
		callback: [ :value | self availableSelected: value ];
		labels: [ :value | self labelForOption: value ]