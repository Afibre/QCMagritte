versions
version020: spec
	<version: '0.2' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		
		spec description: '0.2:
- Latest changes:
	Uses seaside 3.1 as base. Other than that it is the same as 0.1
	'.
		spec author: 'DiegoLont'.
		spec 
			project: 'TwitterBootstrap' with: '1.1.0';
			project: 'Magritte3' with: '3.1';
			project: 'Seaside' with: '3.1.0'.
		" For now we want bleeding edge
			package: 'QC-Magritte-Core' with: 'QC-Magritte-Core-DiegoLont.5';
			package: 'QC-Magritte-Demo' with: 'QC-Magritte-Demo-DiegoLont.3';
			package: 'QC-Magritte-Renderer' with: 'QC-Magritte-Renderer-DiegoLont.2'
		"  ]
