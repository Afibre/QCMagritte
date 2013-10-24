as yet unclassified
renderEditorSelectedOn: html
	html select
		size: 6; 
		style: 'span3';
		list: self selectedList;
		selected: self selectedSelected;
		callback: [ :value | self selectedSelected: value ];
		labels: [ :value | self labelForOption: value ]