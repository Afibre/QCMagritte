rendering
renderSearchContentOn: canvas
	self selectQuery isSimple ifFalse: [ 
		canvas tbsFormGroup: [ canvas label: self selectQuery queryDescription ] ].
	self selectQuery hasSearchValue
		ifTrue: [ 
			canvas tbsFormGroup: [
				canvas label for: 'searchValue'; class: 'sr-only'; with: 'Search value'.
				canvas textInput
					tbsFormControl;
					id: 'searchValue';
					placeholder: 'Search on';
					on: #searchValue of: self.
				canvas space ] ].
		canvas tbsFormGroup: [
			canvas tbsButtonGroup: [ 
				self selectQuery hasSearchValue
					ifTrue: [ 
						canvas tbsButton
							beDefault;
							callback: [ self search ];
							with: 'Search' ].
				canvas tbsButton 
					beDefault;
					callback: [ self clear ];
					with: 'Clear' ] ]