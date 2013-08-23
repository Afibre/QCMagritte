baselines
baseline010: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec author: 'DiegoLont'.
		spec repository: 'http://smalltalkhub.com/mc/DiegoLont/QCMagritte/main'.
		spec 
			project: 'TwitterBootstrap' with: [
				spec
					className: 'ConfigurationOfTwitterBootstrap';
					versionString: #'development';
					loads: #( 'All' );
					repository: 'http://ss3.gemstone.com/ss/TwitterBootstrap' ];
			project: 'Magritte3' with: [
				spec
					className: 'ConfigurationOfMagritte3';
					versionString: #'stable';
					loads: #( 'Seaside' );
					repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main' ];
			project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: #'stable';
					loads: #( 'Zinc-Seaside' );
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ].
		spec
			package: 'QC-Magritte-Core' with: [ 
				spec requires: #( 'Magritte3' ) ];
			package: 'QC-Magritte-Renderer' with: [ 
				spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Builder' with: [ 
				spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Language' with: [ 
				spec requires: #( 'QC-Magritte-Builder' ) ];
			package: 'QC-Magritte-TwitterBootstrap' with: [ 
				spec requires: #( 'QC-Magritte-Builder' 'TwitterBootstrap' ) ];
			package: 'QC-Magritte-Demo' with: [ 
				spec requires: #( 'QC-Magritte-Renderer' 'QC-Magritte-Builder' 'Seaside3' 'QC-Magritte-TwitterBootstrap'  'QC-Magritte-Language' ) ].
		spec 
			group: 'default' with: #('Core' 'Demo' );
			group: 'Core' with: #( 'QC-Magritte-Core' );
			group: 'Demo' with: #( 'QC-Magritte-Demo' ) ]