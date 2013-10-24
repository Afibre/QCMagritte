private
reportChooser
	^ (TBSMagritteReportChooser new asComponent)
		addDecoration: ((TBSMagritteFormDecoration buttons: (Array with: #save -> 'Create a new report'))
			legend: 'Select a report style';
			formCss: 'form-horizontal' ;
			yourself );
		yourself