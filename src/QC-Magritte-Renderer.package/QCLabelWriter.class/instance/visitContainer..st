visiting
visitContainer: aDescription
	" here we have to write our custom method to format the objects the way we want.
	By default, this takes the first description and writes it
		... but we want to extend this and  use separators  "
	| sep |
	sep := nil.
	self object isCollection ifTrue: [ 
		stream nextPutAll: '#( '.
		self object do: [ :each | self object: each during: [ self visitContainer: aDescription ] ] separatedBy: [ stream nextPutAll: ', ' ].
		stream nextPutAll: ' )'.
		^self ].
	aDescription do: [ :each |
		each visibleInLabel ifTrue: [
			sep ifNotNil: [
				sep ifEmpty: [ sep := each separatorBefore ].
				stream nextPutAll: sep ].
			each stringWriter
				write: (self object readUsing: each) description: each to: stream.
			sep := each separatorAfter ] ]