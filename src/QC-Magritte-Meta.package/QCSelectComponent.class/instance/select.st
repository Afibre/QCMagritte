actions
select
	self validate ifFalse: [ ^self ].
	self commit.
	self answer: self model selectedItems