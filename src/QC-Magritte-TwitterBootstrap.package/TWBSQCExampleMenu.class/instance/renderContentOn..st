rendering
renderContentOn: html
	html div
		class: 'page-header';
		with: [ 
			html heading level3; with:  'Twitter Bootstrap Seaside examples' ].
		
	html table
		class: 'table table-striped table-bordered';
		with: [
			html tableHead: [
				html tableRow: [
					html tableHeading: 'Example' ] ].
			html tableBody: [
				self examples do: [ :each | 
					html tableRow: [
						html tableData: [ 
							html anchor 
								callback: [ self show: each new ];
								with: each label  ] ] ] ] ].
				
	html div: [
		html text: 'You can load this code with: '.
		html div: [ 
			html preformatted: [ 
				html code: 'Gofer it
    url: ''http://ss3.gemstone.com/ss/TwitterBootstrap'';
    package: ''ConfigurationOfTwitterBootstrap'';
    load.

ConfigurationOfTwitterBootstrap project stableVersion load: #(''Examples'').' ] ] ].

	html div: [
		html text: 'For more information see the '.
		html anchor url: 'http://twitter.github.com/bootstrap/'; with: 'Twitter Bootstrap documentation' ]