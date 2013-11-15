rendering
renderSubMenuOn: canvas withActivePage: aBoolean 
	self subMenuPage renderSubMenuOn: canvas withActivePage: (aBoolean and: [ self isRootSelected not ])