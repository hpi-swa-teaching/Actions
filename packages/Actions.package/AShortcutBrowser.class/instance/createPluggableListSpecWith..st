toolbuilder
createPluggableListSpecWith: aToolBuilder

	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #mainView;
		getIndex: #actionIndex; 
		keystrokePreview: #keyPress:list:;
		name: #RightSide;
		setIndex: #actionIndex:; 
		menu: #actionMenu:;
		autoDeselect: false;
		helpItem: #helpForItem:;
		frame: (0@0.06 corner: 1@1);
		yourself