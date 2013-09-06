magritteDescription
descriptionDemoRows
	<magritteDescription>
	^MAToManyRelationDescription new 
		label: 'DemoRows';
		accessor: #demoRows;
		classes: (Array with: TWBSMagritteExampleFormDescription);
		beDefinitive;
		beReadonly;
		yourself