rendering
renderSelectedColumnsOn: canvas
	canvas div
		class: 'columns';
		with: [
			canvas heading
				level: 2;
				with: self selectedHeading.
			canvas div
				class: 'column-data';
				class: 'visible'; 
				script: (canvas jQuery new sortable
					connectWith: '.visible';
					dropOnEmpty: true;
					onUpdate: (canvas jQuery ajax
						callback: [ :values | self setSelected: values ]
						passengers: (canvas jQuery this find: 'div');
					script: [:s | s add: ((s jQuery: self linkId) html: [ :h | self reRenderReportOn:  h ])]));
				with: [ self selectedColumns do: [ :each | self renderColumn: each on: canvas ] ] ].