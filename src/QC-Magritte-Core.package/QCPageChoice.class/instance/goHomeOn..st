pages
goHomeOn: announcement 
	self announcer 
		on: announcement
		do: [ :ann | self currentPage: self homePage ]