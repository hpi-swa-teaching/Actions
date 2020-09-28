toolbuilder
createMainListSpecWith: aToolBuilder

	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #mainView;
		getIndex: #actionIndex; 
		setIndex: #actionIndex:; 
		menu: #actionMenu:;
		autoDeselect: false;
		helpItem: #helpForItem:;
		frame: (0.25@0 corner: 1@1);
		yourself