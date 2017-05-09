versions
version040: spec
	<version: '0.4' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		
		spec description: '0.4:
- Latest changes:
	Added Application
	More Demos
	Bugfixes and other improvements
	Uses seaside release 3.1 as base. Other than that it is the same as 0.3.
	Updated to use Magritte release 3.2.
	'.
		spec author: 'DiegoLont'.
		spec 
			project: 'NeoCSV' with: '10';
			project: 'Magritte3' with: #'release3.2';
			project: 'Seaside3' with: #'release3.1'.
			
		  ]
