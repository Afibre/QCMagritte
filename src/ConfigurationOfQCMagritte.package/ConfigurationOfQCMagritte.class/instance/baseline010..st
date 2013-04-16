baselines
baseline010: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec author: 'DiegoLont'.
		spec repository: 'http://smalltalkhub.com/mc/DiegoLont/QCMagritte/main'.
		spec 
			project: 'Magritte3' with: [
				spec
					className: 'ConfigurationOfMagritte3';
					versionString: #'bleedingEdge';
					loads: #( 'Seaside' );
					repository: 'http://smalltalkhub.com/mc/DiegoLont/QCMagritte/main' ];
			project: 'Seaside' with: [
				spec
					className: 'ConfigurationOfSeaside30';
					versionString: #'bleedingEdge';
					loads: #( 'OneClick' );
					repository: 'http://smalltalkhub.com/mc/DiegoLont/QCMagritte/main' ].
		spec
			package: 'QC-Magritte-Core' with: [ 
				spec requires: #( 'Magritte3' ) ];
			package: 'QC-Magritte-Demo' with: [ 
				spec requires: #( 'QC-Magritte-Core' 'OneClick' ) ].
		spec 
			group: 'default' with: #('Core' 'Demo' );
			group: 'Core' with: #( 'QC-Magritte-Core' );
			group: 'Demo' with: #( 'QC-Magritte-Demo' ) ]