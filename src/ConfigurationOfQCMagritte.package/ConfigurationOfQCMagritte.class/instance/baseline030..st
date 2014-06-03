baselines
baseline030: spec
	<version: '0.3-baseline'>
	" Added a few packages, so created a new baseline "
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec author: 'DiegoLont'.
		spec repository: 'http://smalltalkhub.com/mc/DiegoLont/QCMagritte/main'.
		spec 
			project: 'Bootstrap' with: [
				spec
					className: 'ConfigurationOfBootstrap';
					versionString: #'stable';
					loads: #( 'core' 'widgets' );
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/Bootstrap/main' ];
			project: 'Units' with: [
				spec
					className: 'ConfigurationOfUnits';
					versionString: #'development';
					loads: #( 'core' );
					repository: 'http://smalltalkhub.com/mc/MarcusDenker/Units/main' ];
			project: 'Magritte3' with: [
				spec
					className: 'ConfigurationOfMagritte3';
					versionString: #'stable';
					loads: #( 'Seaside' );
					repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main' ].

		spec
			package: 'QC-Magritte-Ajax' with: [ spec requires: #( 'Magritte3' 'QC-Magritte-Model') ];
			package: 'QC-Magritte-Application' with: [ spec requires: #( 'QC-Magritte-Renderer' 'QC-Magritte-Component' 'QC-Magritte-Ajax' 'QC-Magritte-Language' 'QC-Magritte-Meta' 'QC-Magritte-Session' ) ];
			package: 'QC-Magritte-Bootstrap' with: [ spec requires: #( 'QC-Magritte-Application' 'Bootstrap' ) ];
			package: 'QC-Magritte-Builder' with: [ spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Component' with: [ spec requires: #( 'QC-Magritte-Model' 'QC-Magritte-Other' 'QC-Magritte-Builder' ) ];
			package: 'QC-Magritte-Core' with: [ spec requires: #( 'Magritte3' ) ];
			package: 'QC-Magritte-Demo' with: [ spec requires: #( 'QC-Magritte-Application' 'QC-Magritte-Unit' );
			package: 'QC-Magritte-Renderer' with: [ spec requires: #( 'QC-Magritte-Core' 'QC-Magritte-Ajax' ) ];
			package: 'QC-Magritte-Language' with: [ spec requires: #( 'QC-Magritte-Builder' 'QC-Magritte-Model' ) ];
			package: 'QC-Magritte-Other' with: [ spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Model' with: [ spec requires: #( 'QC-Magritte-Session' ) ];
			package: 'QC-Magritte-Session' with: [ spec requires: #('QC-Magritte-Core')];
			package: 'QC-Magritte-Meta' with: [ spec requires: #('QC-Magritte-Component' ) ];
			package: 'QC-Magritte-Unit' with: [ spec requires: #( 'Magritte3' 'Units' ) ];
			package: 'QC-Magritte-Tests' with:[ spec requires: #( 'QC-Magritte-Builder' 'QC-Magritte-Model' ) ] ].
		spec 
			group: 'default' with: #('Core' 'Tests' );
			group: 'Core' with: #( 'QC-Magritte-Core' );
			group: 'Tests' with: #( 'Core' 'QC-Magritte-Tests' );
			group: 'Demo' with: #( 'QC-Magritte-Demo' 'QC-Magritte-Bootstrap' );
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
				spec requires: #( 'Seaside3' ) ] ].

	spec for: #squeak do: [
		spec
			project: 'Announcements' with: [
				spec
					className: 'ConfigurationOfAnnouncements';
					versionString: '1.0';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec
			package: 'QC-Magritte-Session' with: [ spec requires: #('Announcements')];
			package: 'QC-Magritte-Meta' with: [ spec requires: #('Announcements' ) ];
			package: 'QC-Magritte-Tests' with:[ spec requires: #( 'Announcements' ) ];
			yourself ].