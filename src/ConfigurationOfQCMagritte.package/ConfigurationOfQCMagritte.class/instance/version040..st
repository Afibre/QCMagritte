versions
version040: spec
	<version: '0.4' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		
		spec description: '0.4:
- Latest changes:
	Uses seaside release 3.1 as base. Other than that it is the same as 0.3
	'.
		spec author: 'DiegoLont'.
		spec 
			project: 'Magritte3' with: #'release3.1';
			project: 'Seaside3' with: #'release3.1.'.
		" For now we want bleeding edge
		"  ]
