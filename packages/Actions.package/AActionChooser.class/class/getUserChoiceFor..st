as yet unclassified
getUserChoiceFor: anObject

	| dialog |
	dialog := self new
		actionHolder: anObject;
		yourself.
	ToolBuilder open: dialog.
	^ dialog result