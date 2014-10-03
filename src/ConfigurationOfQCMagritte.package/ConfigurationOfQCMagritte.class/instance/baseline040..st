baselines
baseline040: spec
	<version: '0.4-baseline'>
	" Added a few packages, so created a new baseline "
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec author: 'DiegoLont'.
		spec repository: 'http://smalltalkhub.com/mc/DiegoLont/QCMagritte/main'.
		spec 
			project: 'BootstrapMagritte' with: [
				spec
					className: 'ConfigurationOfBootstrapMagritte';
					versionString: #'stable';
					loads: #( 'default' );
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/BootstrapMagritte/main' ];
			project: 'NeoCSV' with: [
				spec
					className: 'ConfigurationOfNeoCSV';
					versionString: #'stable';
					loads: #( 'default' );
					repository: 'http://mc.stfx.eu/Neo' ];
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
					repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main' ];
			project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: #'stable';
					loads: #('JQueryUI' 'JQuery-JSON');
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ].	

		spec
			package: 'QC-Magritte-Ajax' with: [ spec requires: #( 'Magritte3' ) ];
			package: 'QC-Magritte-Application' with: [ spec requires: #( 'QC-Magritte-Renderer' 'QC-Magritte-Relation' 'QC-Magritte-Language' 'QC-Magritte-Session' ) ];
			package: 'QC-Magritte-Bootstrap' with: [ spec requires: #( 'QC-Magritte-Application' 'BootstrapMagritte' ) ];
			package: 'QC-Magritte-Builder' with: [ spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Commands';
			package: 'QC-Magritte-Component' with: [ spec requires: #( 'QC-Magritte-Core' 'QC-Magritte-Other' 'QC-Magritte-Builder' 'NeoCSV' 'QC-Magritte-Commands') ];
			package: 'QC-Magritte-Core' with: [ spec requires: #( 'Magritte3') ];
			package: 'QC-Magritte-Demo' with: [ spec requires: #( 'QC-Magritte-Application' 'QC-Magritte-Bootstrap' 'QC-Magritte-Unit' ) ];
			package: 'QC-Magritte-Language' with: [ spec requires: #( 'QC-Magritte-Builder' 'QC-Magritte-Model' ) ];
			package: 'QC-Magritte-Meta' with: [ spec requires: #('QC-Magritte-Component' 'QC-Magritte-Visitor') ];
			package: 'QC-Magritte-Model' with: [ spec requires: #( 'QC-Magritte-Ajax' ) ];
			package: 'QC-Magritte-Other' with: [ spec requires: #( 'QC-Magritte-Core' ) ];
			package: 'QC-Magritte-Renderer' with: [ spec requires: #( 'QC-Magritte-Core' 'QC-Magritte-Ajax' 'QC-Magritte-Commands') ];
			package: 'QC-Magritte-Relation' with: [ spec requires: #( 'QC-Magritte-Component' 'QC-Magritte-Meta') ];
			package: 'QC-Magritte-Session' with: [ spec requires: #('QC-Magritte-Builder')];
			package: 'QC-Magritte-Tests' with: [ spec requires: #( 'QC-Magritte-Relation' 'QC-Magritte-Model' 'QC-Magritte-Language' ) ];
			package: 'QC-Magritte-Tutorial' with: [ spec requires: #( 'QC-Magritte-Application' 'QC-Magritte-Bootstrap' ) ];
			package: 'QC-Magritte-Unit' with: [ spec requires: #( 'Magritte3' 'Units' ) ];
			package: 'QC-Magritte-User' with: [ spec requires: #('QC-Magritte-Model' 'QC-Magritte-Application') ];
			package: 'QC-Magritte-Visitor'.
		spec 
			group: 'default' with: #('Tutorial' 'Tests' );
			group: 'Bootstrap' with: #( 'QC-Magritte-Bootstrap' );
			group: 'Core' with: #( 'QC-Magritte-Session' );
			group: 'Demo' with: #( 'QC-Magritte-Demo' 'QC-Magritte-User' );
			group: 'Tests' with: #( 'QC-Magritte-Tests' );
			group: 'Tutorial' with: #( 'QC-Magritte-Tutorial' 'QC-Magritte-User' );
			group: 'All' with: #( 'Tutorial' 'Tests' 'Demo' ) ].
	spec for: #( #'pharo' ) do: [ 
		spec
			project: 'Seaside3' with: [
				spec
					loads: #( 'Zinc-Seaside' 'JQueryUI' 'JQuery-JSON')].
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
	spec for: #'pharo2.x' do: [ 
		spec
			package: 'QC-Magritte-Pharo2';
			package: 'QC-Magritte-Core' with: [ spec requires: 'QC-Magritte-Pharo2' ] ].
	spec for: #(#'pharo3.x' #'pharo4.x') do: [ 
		spec
			package: 'QC-Magritte-Pharo3';
			package: 'QC-Magritte-Core' with: [ spec requires: 'QC-Magritte-Pharo3' ] ]