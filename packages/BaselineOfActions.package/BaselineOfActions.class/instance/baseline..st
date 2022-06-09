as yet unclassified
baseline: spec
	<baseline>
	
	spec for: #common do: [
		self setupSWALint: spec.
		spec 
			package: 'Actions';
			group: 'default' with: #('Actions')
		].
