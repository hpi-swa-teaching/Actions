toolbuilder
createButtonSpecsWith: aToolBuilder
		
	^ {
		{'cancel' . #cancel}.
		{'ok' . #accept}
	} collect: [:each | aToolBuilder pluggableButtonSpec new
		model: self;
		label: each first;
		color: (self userInterfaceTheme cancelColor ifNil: [Color r: 1 g: 0.6 b: 0.588]);
		action: each second]