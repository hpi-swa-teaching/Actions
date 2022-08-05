testing
testHandlesKeyboard

	self assert: (AEventCaptureMorph new handlesKeyboard: KeyboardEvent new)