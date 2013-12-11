*qc-magritte-component
hasChanged: aDescription 
	^(self model readUsing: aDescription) ~= (self cache at: aDescription)