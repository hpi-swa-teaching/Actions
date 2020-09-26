handle shortcuts
addShortcut

	| eventKey |
	eventKey := AEventCapturer receiveShortcut.
	self addShortcut: eventKey