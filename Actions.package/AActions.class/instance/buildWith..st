as yet unclassified
buildWith: aToolBuilder

	| windowSpec enumListSpec mainListSpec |
	windowSpec := aToolBuilder pluggableWindowSpec new
		model: self;
		label: 'Actions Browser';
		children: OrderedCollection new.
	
	enumListSpec := aToolBuilder pluggableListSpec new
		model: self;
		list: #actionHolder;
		getIndex: #classIndex; 
		setIndex: #classIndex:; 
		frame: (0@0 corner: 0.25@1).
		
	mainListSpec := aToolBuilder pluggableListSpec new
		model: self;
		list: #actionsListRepresentation;
		getIndex: #actionIndex; 
		setIndex: #actionIndex:; 
		menu: #actionMenu:;
		autoDeselect: false;
		frame: (0.25@0 corner: 1@1).
		
	windowSpec children 
		add: enumListSpec;
		add: mainListSpec.
	
	^ aToolBuilder buildPluggableWindow: windowSpec.
	
