as yet unclassified
for: anObject event: evt

	evt isKeyboard
		ifFalse: [^ self].
	Shortcuts 
		at: anObject class
		ifPresent: [:list | list 
							at: (self keyFrom: evt)  
							ifPresent: [:action | action for: anObject]]