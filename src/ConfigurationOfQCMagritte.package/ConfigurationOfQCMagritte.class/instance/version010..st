versions
version010: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'replaced'.
		
		spec description: '0.1:
- Latest changes:
	Added a core and a demo.
	'.
		spec author: 'DiegoLont'.
		spec 
			project: 'TwitterBootstrap' with: '1.0.3';
			project: 'Magritte3' with: '3.0';
			project: 'Seaside' with: '3.0.9'.
		spec
			package: 'QC-Magritte-Meta' with: 'QC-Magritte-Meta-DiegoLont.1'.
		" For now we want bleeding edge
			package: 'QC-Magritte-Core' with: 'QC-Magritte-Core-DiegoLont.5';
			package: 'QC-Magritte-Demo' with: 'QC-Magritte-Demo-DiegoLont.3';
			package: 'QC-Magritte-Renderer' with: 'QC-Magritte-Renderer-DiegoLont.2'
		"  ]
