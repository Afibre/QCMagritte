tutorials
tutorialMenu
	<tutorial>
	^QCTutorial new
		priority: 40;
		title: 'Menu';
		chapter: 'User experience';
		description: 'The menu shows all pages. When you open the details, it adds a subpage as a child of the current page. In bootstrap this is shown as a pulldown menu.';
		explanation: 'The menu is rendered as an ordered list by the QCTreePageChoice and subclasses. The new child is added with an announcement.';
		yourself
		