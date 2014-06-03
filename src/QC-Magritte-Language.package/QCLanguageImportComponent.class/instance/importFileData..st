actions
importFileData: aFile
	self messages
		addAll:
			(QCMultilanguageString loadFromString: (aFile contentsDecodedUsing: self encoding asString) separator: self separator)