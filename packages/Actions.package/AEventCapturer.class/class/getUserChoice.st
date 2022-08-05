accessing
getUserChoice

	| dialog |
	dialog := self new.
	ToolBuilder open: dialog.
	^ dialog result