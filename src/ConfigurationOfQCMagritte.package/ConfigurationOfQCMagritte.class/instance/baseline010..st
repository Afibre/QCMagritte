baselines
baseline010: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec author: 'DiegoLont'.
		spec repository: 'http://smalltalkhub.com/#!/~DiegoLont/QCMagritte'.
		spec 
			project: 'Magritte3' with: [
				spec
					className: 'ConfigurationOfMagritte3';
					versionString: #'bleedingEdge';
					loads: #( 'Seaside' );
					repository: 'http://smalltalkhub.com/#!/~DiegoLont/QCMagritte' ];
			project: 'Seaside'  with: [
				spec
					className: 'ConfigurationOfSeaside';
					versionString: #'bleedingEdge';
					loads: #( 'OneClick' );
					repository: 'http://smalltalkhub.com/#!/~DiegoLont/QCMagritte' ].
		spec 
			group: 'default' with: #('Core' );
			group: 'Core' with: #( 'Magritte3' 'Seaside30' ) ]