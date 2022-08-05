toolbuilder
buildWith: aToolBuilder

	| windowSpec enumListSpec mainListSpec |
	windowSpec := aToolBuilder pluggableWindowSpec new
		model: self;
		label: #windowLabel;
		children: OrderedCollection new.
	
	enumListSpec := aToolBuilder pluggableListSpec new
		model: self;
		list: #classNames;
		keystrokePreview: #enumListkeyPress:list:;
		name: #leftSideClassList;
		getIndex: #classIndex; 
		setIndex: #classIndex:; 
		helpItem: #itemName:;
		frame: self positionLeftSideClassList.
		
	mainListSpec := self createMainListSpecWith: aToolBuilder.
		
	windowSpec children 
		add: enumListSpec;
		add: mainListSpec.
	
	^ aToolBuilder buildPluggableWindow: windowSpec
	

