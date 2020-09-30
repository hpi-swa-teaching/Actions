handle shortcuts
shortcutFor: anObject event: evt

	evt isKeyboard
		ifFalse: [^ self].
	Shortcuts 
		at: anObject class name
		ifPresent: [:dict | dict 
							at: (AShortcut from: evt)  
							ifPresent: [:association | association value for: anObject]]