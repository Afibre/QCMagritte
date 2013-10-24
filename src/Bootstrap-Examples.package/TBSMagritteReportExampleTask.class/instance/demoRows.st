private
demoRows

	| rows |
	
	rows := OrderedCollection new.
	Collection withAllSubclasses doWithIndex: [ :each :index |
		rows add: (TBSMagritteExampleFormDescription new
			name: each name;
			number: index ;
			bePositive: index odd ;
			yourself ) ].
	^ rows

