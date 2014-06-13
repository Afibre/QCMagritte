accessing
nextItem: aChapter 
	^self chapters at: ((self chapters indexOf: aChapter) +1) ifAbsent: [ nil ]