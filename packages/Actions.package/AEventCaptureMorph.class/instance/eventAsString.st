accessing
eventAsString

	| stream |
	stream := WriteStream on: ''.
	self eventKey printKeyStringOn: stream.
	^ stream contents