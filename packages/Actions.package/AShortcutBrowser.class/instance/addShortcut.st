handle shortcuts
addShortcut

	| eventKey |
	eventKey := AEventCapturer getUserChoice.
	self addShortcut: eventKey