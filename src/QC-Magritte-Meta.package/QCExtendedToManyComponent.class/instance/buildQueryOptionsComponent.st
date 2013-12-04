initialization
buildQueryOptionsComponent
	| retVal |
	retVal := QCAccordionComponent new.
	retVal addPage: (QCSearchForm onParent: self) label: (QCSearchLabel onParent: self).
	retVal addPage: (self columnChooserFor: self) label: (QCMultilanguageString on: 'Choose columns').
	self addCustomOptionsTo: retVal.
	^retVal