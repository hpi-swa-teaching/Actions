handle shortcuts
shortcutFor: anObject event: evt

	| classes |
	evt isKeyboard
		ifFalse: [^ self].
	
	classes := anObject class withAllSuperclasses.
	classes do: [:each | 
		Shortcuts 
		at: each
		ifPresent: [:dict | dict 
							at: evt
							ifPresent: [:association | association value for: anObject. ^ self]]]
	