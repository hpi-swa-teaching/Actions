toolbuilder
createButtonSpecWith: aToolBuilder named: aString action: actionSymbol enabled: aSymbol

	^ aToolBuilder pluggableButtonSpec new
		model: self;
		label: aString;
		action: actionSymbol;
		enabled: aSymbol;
		yourself