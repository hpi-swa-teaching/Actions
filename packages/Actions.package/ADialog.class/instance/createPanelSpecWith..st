toolbuilder
createPanelSpecWith: aToolBuilder

	^ aToolBuilder pluggablePanelSpec new
		model: self;
		frame: (0@0 corner: 1@1);
		name: #content;
		children: OrderedCollection new;
		yourself
