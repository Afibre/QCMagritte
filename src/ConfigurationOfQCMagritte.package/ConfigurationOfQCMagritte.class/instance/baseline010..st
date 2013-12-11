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
					repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main' ].

		spec
			package: 'QC-Magritte-Core' with: [ 
				spec requires: #( 'Magritte3' ) ];
			package: 'QC-Magritte-Ajax' with: [ 
				spec requires: #( 'Magritte3' ) ];
			package: 'QC-Magritte-Renderer' with: [ 
				spec requires: #( 'QC-Magritte-Core' 'QC-Magritte-Ajax' ) ];
			package: 'QC-Magritte-Builder' with: [ 
				spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Language' with: [ 
				spec requires: #( 'QC-Magritte-Builder' ) ];
			package: 'QC-Magritte-TwitterBootstrap' with: [ 
				spec requires: #( 'QC-Magritte-Builder' 'QC-Magritte-Component' 'TwitterBootstrap' ) ];
			package: 'QC-Magritte-Other' with: [ 
				spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Model' with: [ 
				spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Session' with: [ 
				 spec requires: #('QC-Magritte-Core')];
			package: 'QC-Magritte-Meta' with: [ 
				spec requires: #( 'QC-Magritte-Model' ) ];
			package: 'QC-Magritte-Component' with: [ 
				spec requires: #( 'QC-Magritte-Model' 'QC-Magritte-Other' 'QC-Magritte-Builder' ) ];
			package: 'QC-Magritte-Tests' with:[
				spec requires: #( 'QC-Magritte-Builder' ) ];
			package: 'QC-Magritte-Demo' with: [ 
				spec requires: #( 'QC-Magritte-Renderer' 'QC-Magritte-Builder' 'QC-Magritte-TwitterBootstrap'  'QC-Magritte-Language' 'QC-Magritte-Meta' 'QC-Magritte-Session') ].
		spec 
			group: 'default' with: #('Core' 'Tests' );
			group: 'Core' with: #( 'QC-Magritte-Core' );
			group: 'Tests' with: #( 'Core' 'QC-Magritte-Tests' );
			group: 'Demo' with: #( 'QC-Magritte-Demo' );
			group: 'All' with: #( 'Tests' 'Demo' ) ].
	
	spec for: #( #'gemstone' #'pharo' ) do: [ 
		spec
			project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: '3.0.9';
					loads: #( 'Zinc-Seaside' );
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ].
		spec
			package: 'QC-Magritte-Demo' with: [ 
				spec requires: #( 'Seaside3' ) ] ]