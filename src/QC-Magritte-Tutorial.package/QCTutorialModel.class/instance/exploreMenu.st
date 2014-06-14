explore
exploreMenu
	<tutorial>
	^QCTutorial new
		priority: 50;
		title: 'Menu';
		chapter: 'Exploring QCMagritte';
		description: 'The menu shows all pages. When you open the details, it adds a "subpage" as a child of the current page.';
		addExplanation: 'The menu is rendered as an ordered list by the QCTreePageChoice and subclasses. The new child is added with an announcement (QCShowDetails). In the QCApplication this announcement is handled and here the new page is added. Opening the same object twice, will select that object and not open the same object again.';
		yourself
		