private
demoRows

	| rows |
	
	rows := OrderedCollection new.
	Collection withAllSubclasses doWithIndex: [ :each :index |
		rows add: (TWBSQCReportValue new
			name: each name;
			number: index ;
			odd: index odd ;
			yourself ) ].
	^ rows

