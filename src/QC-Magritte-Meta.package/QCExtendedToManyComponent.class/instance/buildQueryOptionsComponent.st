initialization
buildQueryOptionsComponent
	| retVal |
	retVal := QCAccordionComponent new.
	retVal addPage: (QCSearchForm onParent: self) label: (QCSearchLabel onParent: self).
	retVal addPage: (self columnChooserFor: self) label: (QCMultilanguageString on: 'Choose columns').
	retVal addPage: (self reportOptionsFor: self) label: (QCMultilanguageString on: 'Report options').
	self addCustomOptionsTo: retVal.
	^retVal