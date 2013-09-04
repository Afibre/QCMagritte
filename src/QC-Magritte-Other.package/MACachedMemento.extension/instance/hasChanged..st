*QC-Magritte-Other
hasChanged: aDescription 
	^(self model readUsing: aDescription) ~= (self cache at: aDescription)