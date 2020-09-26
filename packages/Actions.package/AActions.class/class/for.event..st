as yet unclassified
for: anObject event: evt

	evt isKeyboard
		ifFalse: [^ self].
	Shortcuts 
		at: anObject class
		ifPresent: [:list | list 
							at: (AShortcut from: evt)  
							ifPresent: [:action | action for: anObject]]