toolbuilder
createDialogSpecWith: aToolBuilder

	| dialogSpec |
	dialogSpec := super createDialogSpecWith: aToolBuilder.
	dialogSpec extent: 180@60.
	^ dialogSpec