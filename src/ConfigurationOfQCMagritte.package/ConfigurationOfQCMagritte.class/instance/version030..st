versions
version030: spec
	<version: '0.3' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		
		spec description: '0.3:
- Latest changes:
	Uses seaside release 3.0 as base.
	'.
		spec author: 'DiegoLont'.
		spec 
			project: 'Magritte3' with: #'release3.0';
			project: 'Seaside3' with: #'release3.0.'.
		" For now we want bleeding edge
		"  ]
