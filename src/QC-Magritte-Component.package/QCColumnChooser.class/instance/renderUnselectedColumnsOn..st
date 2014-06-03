rendering
renderUnselectedColumnsOn: canvas
	canvas div
		class: 'columns';
		with: [
			canvas heading
				level: 2;
				with: self unselectedHeading.
			canvas div
				class: 'column-data';
				class: 'visible'; 
				script: (canvas jQuery new sortable
					connectWith: '.visible';
					dropOnEmpty: true;
					onUpdate: (canvas jQuery ajax
						callback: [ :values | self setUnselected: values ]
						passengers: (canvas jQuery this find: 'div');
					script: [:s | s add: ((s jQuery: self linkId) html: [ :h | self reRenderReportOn:  h ])]));
				with: [ self unselectedColumns do: [ :each | self renderColumn: each on: canvas ] ] ].