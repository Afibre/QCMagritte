rendering
renderItems: aList on: canvas heading: aHeading symbol: aSymbol
	canvas heading
		level: 2;
		class: 'columnSelectionHeading';
		with: aHeading.
	canvas div
		class: 'column-data';
		class: (self linkId asString);
		script: (canvas jQuery new sortable
			connectWith: '.', (self linkId asString);
			dropOnEmpty: true;
			onUpdate: (canvas jQuery ajax
				callback: [ :values | self perform: aSymbol with: values ]
				passengers: (canvas jQuery this find: 'div');
			script: [:s | s add: ((s jQuery: self linkId) html: [ :h | self reRenderEditorOn:  h ])]));
		with: [ aList do: [ :each | self renderItem: each on: canvas ] ]