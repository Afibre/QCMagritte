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
					repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main' ];
			project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: #'bleedingEdge';
					loads: #( 'OneClick' );
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ].
		spec
			package: 'QC-Magritte-Core' with: [ 
				spec requires: #( 'Magritte3' ) ];
			package: 'QC-Magritte-Renderer' with: [ 
				spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Builder' with: [ 
				spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Demo' with: [ 
				spec requires: #( 'QC-Magritte-Renderer' 'QC-Magritte-Builder' 'OneClick' ) ].
		spec 
			group: 'default' with: #('Core' 'Demo' );
			group: 'Core' with: #( 'QC-Magritte-Core' );
			group: 'Demo' with: #( 'QC-Magritte-Demo' ) ]