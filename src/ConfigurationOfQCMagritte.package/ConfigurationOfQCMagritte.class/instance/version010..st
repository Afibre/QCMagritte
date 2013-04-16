versions
version010: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		
		spec description: '0.1:
- Latest changes:
	Initial configuration, no packages yet
	'.
		spec author: 'DiegoLont'.
		spec 
			project: 'Magritte3' with: '3.0';
			project: 'Seaside' with: '3.0.8' ]
