toolbuilder
createDialogSpecWith: aToolBuilder

	| dialogSpec |
	dialogSpec := super createDialogSpecWith: aToolBuilder.
	dialogSpec extent: self positionEventCapturerWindow.
	^ dialogSpec