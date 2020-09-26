event handling
keyStroke: evt

	self eventKey: (AShortcut from: evt).
	self contents: self eventKey asString