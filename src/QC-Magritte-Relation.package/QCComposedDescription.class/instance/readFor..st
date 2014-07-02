accessing
readFor: aMemento 
	^(aMemento readUsing: self relativeTo) readUsing: self wrappedDescription