as yet unclassified
receiveShortcut

	| capturer |
	capturer := self new.
	ToolBuilder open: capturer.
	^ capturer result