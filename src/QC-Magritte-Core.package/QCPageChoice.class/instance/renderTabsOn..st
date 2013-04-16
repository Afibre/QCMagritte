rendering
renderTabsOn: canvas
	canvas div
		id: self menuId;
		class: self menuClass;
		with: [
			canvas unorderedList
				class: self tabClass;
				with: [ self tabPages do: [ :each | self renderTabFor: each on: canvas ] ].
			self renderSeparatorOn: canvas ]