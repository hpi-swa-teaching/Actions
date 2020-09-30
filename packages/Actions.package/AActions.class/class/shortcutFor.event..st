handle shortcuts
shortcutFor: anObject event: evt

	evt isKeyboard
		ifFalse: [^ self].
	Shortcuts 
		at: anObject class
		ifPresent: [:dict | dict 
							at: evt
							ifPresent: [:association | association value for: anObject]]