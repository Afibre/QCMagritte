as yet unclassified
testCopyContainer
	|container copy  |
	container := MAPriorityContainer new.
	container add: (MAStringDescription new
		label: 'Original';
		accessor: #original;
		yourself).
	copy := container copy.
	copy removeAll.	
	self assert: container children size equals: 1.