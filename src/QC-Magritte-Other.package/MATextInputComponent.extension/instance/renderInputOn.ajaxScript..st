*QC-Magritte-Other
renderInputOn: html ajaxScript: aScript
	html textInput
		id: self labelId;
		onChange: aScript;
		on: #string of: self