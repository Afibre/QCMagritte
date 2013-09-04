magritte-description
descriptionValue
	^MAStringDescription new
		label: self label;
		accessor: (MAPluggableAccessor read: [ :row | self valueFor: row ] write: [ :row :newValue | ]);
		priority: 1000;
		origin: self copy;
		reportColumnClass: QCDescribedColumn;
		beReadonly;
		beRequired;
		yourself