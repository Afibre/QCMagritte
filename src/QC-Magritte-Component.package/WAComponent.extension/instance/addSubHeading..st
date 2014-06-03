*qc-magritte-component
addSubHeading: aHeadingText
	"Add a decoration that displays a level 2 heading with aString around the receiver. Answer the decoration, so don't forget #yourself."
	
	^ self addDecoration: (QCSubHeadingDecoration new message: aHeadingText; yourself)