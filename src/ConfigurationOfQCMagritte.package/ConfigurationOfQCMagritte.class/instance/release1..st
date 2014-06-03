symbolic versions
release1: spec 
	<symbolicVersion: #'release1'>
	" Different for gemstone and pharo... so this will have to do for now "
	spec for: #'common' version: #'release1.0'.
	spec for: #'pharo' version: #'release1.1'
