as yet unclassified
buildWith: aToolBuilder

	| dialogSpec panelSpec dialog |
	self captureMorph: AEventCaptureMorph new.
	
	dialogSpec := aToolBuilder pluggableDialogSpec new
		model: self;
		title: 'Capturer';
		extent: 180@50;
		wantsResizeHandles: false;
		children: OrderedCollection new;
		buttons: OrderedCollection new;
		yourself.
		
	panelSpec := aToolBuilder pluggablePanelSpec new
		model: self;
		frame: (0@0 corner: 1@1);
		name: #eventCapturer;
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
	
	dialog := aToolBuilder buildPluggableDialog: dialogSpec.
	
	(aToolBuilder widgetAt: #eventCapturer)
		addMorph: self captureMorph.

	^ dialog