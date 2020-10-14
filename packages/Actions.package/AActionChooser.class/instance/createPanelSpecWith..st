toolbuilder
createPanelSpecWith: aToolBuilder

	| panelSpec |
	panelSpec := super createPanelSpecWith: aToolBuilder.
	panelSpec verticalResizing: #shrinkWrap.
	panelSpec children add: (self createTreeSpecWith: aToolBuilder).
	^ panelSpec