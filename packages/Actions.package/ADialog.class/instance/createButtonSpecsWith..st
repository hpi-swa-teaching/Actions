toolbuilder
createButtonSpecsWith: aToolBuilder
		
	^ {
		{'cancel' . #cancel}.
		{'ok' . #accept}
	} collect: [:each | aToolBuilder pluggableButtonSpec new
		model: self;
		label: each first;
		color: (self userInterfaceTheme cancelColor ifNil: [self buttonColor]);
		action: each second]