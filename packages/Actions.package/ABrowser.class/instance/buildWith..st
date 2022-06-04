toolbuilder
buildWith: aToolBuilder

	| windowSpec enumListSpec mainListSpec |
	windowSpec := aToolBuilder pluggableWindowSpec new
		model: self;
		label: #windowLabel;
		children: OrderedCollection new.
	
	enumListSpec := aToolBuilder pluggableListSpec new
		model: self;
		list: #classes;
		keystrokePreview: #enumListkeyPress:list:;
		name: #leftSideClassList;
		getIndex: #classIndex; 
		setIndex: #classIndex:; 
		frame: (0@0 corner: 0.25@1).
		
	mainListSpec := self createMainListSpecWith: aToolBuilder.
		
	windowSpec children 
		add: enumListSpec;
		add: mainListSpec.
	
	^ aToolBuilder buildPluggableWindow: windowSpec.
	
