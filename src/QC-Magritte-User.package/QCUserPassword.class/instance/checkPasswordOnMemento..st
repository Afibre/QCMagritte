accessing-magritte
checkPasswordOnMemento: aMemento
	^(aMemento readUsing: self descriptionPassword) = (aMemento readUsing: self descriptionPasswordVerify)