rendering
renderErrorOn: html
	| now |
	now := DateAndTime now.
	html
		heading: 'Current time';
		text: now;
		yourself