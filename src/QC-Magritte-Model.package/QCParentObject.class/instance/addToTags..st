accessing
addToTags: aNewTag
	| tagThere |
	tagThere	:= self tags includes:  aNewTag.
	tagThere ifFalse: [ self tags add: aNewTag].
		