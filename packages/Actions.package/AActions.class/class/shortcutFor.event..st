handle shortcuts
shortcutFor: anObject event: evt

	| classes |
	evt isKeyboard
		ifFalse: [^ false].
	

	classes := anObject class withAllSuperclasses.
	classes do: [:class | 
		Shortcuts 
		at: class
		ifPresent: [:actionsDict | actionsDict 
							at: evt
							ifPresent: [:association | association value for: anObject at: evt position. ^ true]]].
					
	^ false
	