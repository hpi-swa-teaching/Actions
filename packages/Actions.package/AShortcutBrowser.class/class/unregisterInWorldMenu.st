as yet unclassified
unregisterInWorldMenu

	(TheWorldMenu respondsTo: #unregisterOpenCommand:)
		ifTrue: [TheWorldMenu unregisterOpenCommand: 'Shortcut Browser'].