as yet unclassified
addShortcut

	| eventKey |
	eventKey := AEventCapturer receiveShortcut.
	self addShortcut: eventKey