dummy
parties
	^parties ifNil: [
		parties := OrderedCollection new
			add: self party1;
			add: self party2;
			yourself ]