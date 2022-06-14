toolbuilder
buildWith: aToolBuilder

	| dialogSpec panelSpec |
	dialogSpec := self createDialogSpecWith: aToolBuilder.
	panelSpec := self createPanelSpecWith: aToolBuilder.
	
	dialogSpec children add: panelSpec.
	dialogSpec buttons addAll: (self createButtonSpecsWith: aToolBuilder).
	
	^ aToolBuilder buildPluggableDialog: dialogSpec