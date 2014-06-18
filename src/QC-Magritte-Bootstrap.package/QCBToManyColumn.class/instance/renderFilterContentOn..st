rendering
renderFilterContentOn: html
	self isFiltered 
		ifFalse: [ ^ self ].
	" ok, here we render our smart filter: "
	html textInput tbsFormControl
		class: 'filter-input';
		id: html nextId;
		value: (self propertyAt: #filterValue ifAbsent: [ '' ]);
		script: (html jQuery this autocomplete
			sourceCallback: [ :term | self valuesFor: term ];
			onChange: ((((html jQuery: self linkId) find: 'tbody') load serialize: (html jQuery id: html lastId))
				html: [ :h | self renderReportBodyOn: h ]));
		callback: [ :value | (self setFilterValue: value) ifTrue: [ self report refresh ] ]