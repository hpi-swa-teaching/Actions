handle shortcuts
shortcutsFor: anAction in: aClass ifAbsent: aBlock

	| shortcuts |
	shortcuts := OrderedCollection new.
	(Shortcuts at: aClass ifAbsent: [^ aBlock value]) 
		associationsDo: [:association | anAction = association value value
			ifTrue: [shortcuts add: association key]].
	
	shortcuts isEmpty ifTrue: [^ aBlock value].
	^ shortcuts