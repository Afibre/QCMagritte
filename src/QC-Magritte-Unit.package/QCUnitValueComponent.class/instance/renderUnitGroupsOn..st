rendering
renderUnitGroupsOn: html
	^ self unitGroups do: [ :association |
		html optionGroup
			label: association key;
			with: [ 
				association value
					do: [ :option | self renderOption: option on: html ] ] ]