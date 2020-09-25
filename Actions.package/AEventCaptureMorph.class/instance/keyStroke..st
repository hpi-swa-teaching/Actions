event handling
keyStroke: evt

	self eventKey: (AEventKey from: evt).
	self contents: self eventKey asString