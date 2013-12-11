*qc-magritte-ajax
renderEditorOn: html ajaxScript: aScript
	html textArea
		id: self labelId;
		onChange: aScript;
		rows: self magritteDescription lineCount;
		on: #string of: self