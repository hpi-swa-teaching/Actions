toolbuilder
createButtonPanelSpecWith: aToolBuilder

	^  aToolBuilder pluggablePanelSpec new
		model: self;
		children: (self createButtonSpecsWith: aToolBuilder);
		frame: (0@0 corner: 1@self buttonPanelHeight);
		layout: #horizontal;
		yourself