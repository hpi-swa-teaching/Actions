toolbuilder
createMainListSpecWith: aToolBuilder

	| mainPanel |
	mainPanel := aToolBuilder pluggablePanelSpec new
		model: self;
		children: OrderedCollection new;
		frame: (0.25@0 corner: 1@1);
		yourself.
		
	mainPanel children
		add: (self createButtonPanelSpecWith: aToolBuilder);
		add: ( self createTreeSpecWith: aToolBuilder).
	
	^ mainPanel
