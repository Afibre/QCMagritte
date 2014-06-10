initialization
createTutorials
	^((Pragma 
		allNamed: self class tutorialPragma 
		from: self class to: Object) collect: [ :each | self perform: each method selector ])
			sort: [ :a :b | a priority < b priority ]		
