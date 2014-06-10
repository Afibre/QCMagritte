private
demoRows

	| rows |
	
	rows := OrderedCollection new.
	Collection withAllSubclasses doWithIndex: [ :each :index |
		rows add: (QCBReportValue new
			firstName: each name;
			number: index ;
			odd: index odd ;
			yourself ) ].
	^ rows

