toolbuilder
createPanelSpecWith: aToolBuilder

	| panelSpec |
	panelSpec := super createPanelSpecWith: aToolBuilder.
	panelSpec children add: (self createTreeSpecWith: aToolBuilder).
	^ panelSpec