rendering
renderContentOn: canvas
	canvas div
		script: canvas jQuery new accordion;
		with: [
			self labels do: [ :label |
				canvas div: [ canvas anchor: label ].
				canvas div: (self pageDictionary at: label) ] ]