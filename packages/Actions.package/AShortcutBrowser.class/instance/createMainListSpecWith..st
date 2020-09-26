toolbuilder
createMainListSpecWith: aToolBuilder

	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #actionsListRepresentation;
		getIndex: #actionIndex; 
		setIndex: #actionIndex:; 
		menu: #actionMenu:;
		autoDeselect: false;
		frame: (0.25@0 corner: 1@1)