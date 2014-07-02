private
uniqueBuilderSelectors: anObject
	| builderPragmas selectors |
	
	builderPragmas := Pragma 
		allNamed: self class builderPragma 
		from: anObject class to: Object.
		
	selectors := builderPragmas collect: [ :each | each method selector ].
	
	^ Set withAll: selectors