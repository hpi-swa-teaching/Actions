toolbuilder
createMainListSpecWith: aToolBuilder

	| mainPanel |
	mainPanel := aToolBuilder pluggablePanelSpec new
		model: self;
		children: OrderedCollection new;
		frame: self positionMainList;
		yourself.
		
	mainPanel children
		add: (self createButtonPanelSpecWith: aToolBuilder);
		add: (self createTreeSpecWith: aToolBuilder).
	
	^ mainPanel
