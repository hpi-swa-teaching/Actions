as yet unclassified
buildWith: aToolBuilder

	| dialogSpec panelSpec dialog |
	dialogSpec := aToolBuilder pluggableDialogSpec new
		model: self;
		title: #title;
		wantsResizeHandles: false;
		children: OrderedCollection new;
		buttons: OrderedCollection new;
		yourself.
		
	panelSpec := aToolBuilder pluggablePanelSpec new
		model: self;
		frame: (0@0 corner: 1@1);
		name: #content;
		yourself.
		
	dialogSpec children add: panelSpec.
		
	dialogSpec buttons add: (
		aToolBuilder pluggableButtonSpec new
			model: self;
			label: 'cancel';
			color: (self userInterfaceTheme cancelColor ifNil: [Color r: 1 g: 0.6 b: 0.588]);
			action: #cancel).
	
	dialogSpec buttons add: (
		aToolBuilder pluggableButtonSpec new
			model: self;
			label: 'ok';
			color: (self userInterfaceTheme cancelColor ifNil: [Color r: 1 g: 0.6 b: 0.588]);
			action: #accept).
	
	self setContentOf: panelSpec buildWith: aToolBuilder.
	dialog := aToolBuilder buildPluggableDialog: dialogSpec.

	^ dialog