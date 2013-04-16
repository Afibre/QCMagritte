versions
version010: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		
		spec description: '0.1:
- Latest changes:
	Added a core and a demo.
	'.
		spec author: 'DiegoLont'.
		spec 
			project: 'Magritte3' with: '3.0';
			project: 'Seaside' with: '3.0.8';
			package: 'QC-Magritte-Core' with: 'QC-Magritte-Core-DiegoLont.2';
			package: 'QC-Magritte-Demo' with: 'QC-Magritte-Demo-DiegoLont.2' ]
