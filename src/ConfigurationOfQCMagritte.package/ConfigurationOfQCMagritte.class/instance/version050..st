versions
version050: spec
	<version: '0.5.0' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		
		spec description: '0.4.1:
- Latest changes:
	updated Magritte to development, as we are porting some stuff there.
	'.
		spec author: 'DiegoLont'.
		spec 
			project: 'NeoCSV' with: #'stable';
			project: 'Magritte3' with: #'development';
			project: 'Seaside3' with: #'release3.1'.
		" For now we want bleeding edge
		"  ]
