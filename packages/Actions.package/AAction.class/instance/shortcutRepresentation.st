printing
shortcutRepresentation
	
	self hasShortcuts
		ifTrue: [
			^ '(' , ((self shortcuts 
			collect: [:each | | stream |
				stream := WriteStream on: ''.
				each printKeyStringOn: stream.
				stream contents]) 
			joinSeparatedBy: ', ' ) , ')'] 
		ifFalse: [^ '']
	