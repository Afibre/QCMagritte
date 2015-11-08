versions
version041: spec
	<version: '0.4.1' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		
		spec description: '0.4.1:
- Latest changes:
	updated NeoCSV and Magritte versions
	'.
		spec author: 'StephanEggermont'.
		spec 
			project: 'NeoCSV' with: #'stable';
			project: 'Magritte3' with: #'release3.5';
			project: 'Seaside3' with: #'release3.1'.
		" For now we want bleeding edge
		"  ]
