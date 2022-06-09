as yet unclassified
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec
			package: 'SwaLint-Preferences' with: [
					spec
						file: 'SwaLint-Preferences-cypress.1';
						repository: 
								'github://hpi-swa-teaching/SwaLint:develop/packages' 
				];
								
				package: 'SwaLint-Core' with: [
					spec
						file: 'SwaLint-Core-cypress.1';
						repository: 
								'github://hpi-swa-teaching/SwaLint:develop/packages';
						requires: 'SwaLint-Preferences'
				];
			
				postLoadDoIt: #postLoad;
				
				package: 'SwaLint-PlugIns' with: [
					spec 
						file: 'SwaLint-PlugIns-cypress.1';
						repository: 'github://hpi-swa-teaching/SwaLint:develop/packages'; requires: 'SwaLint-Core'
				];
				package: 'Actions';
				group: 'default' with: #('Actions' 'SwaLint-Core' 'SwaLint-Preferences' 'SwaLint-PlugIns')

		].
