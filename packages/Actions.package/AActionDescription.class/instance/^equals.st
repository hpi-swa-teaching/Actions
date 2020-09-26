comparing
= anActionDescription

	self class = anActionDescription class
		ifFalse: [^ false].
	^ self title = anActionDescription title