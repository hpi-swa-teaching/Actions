accessing
duplicateOf: aShortcut in: aDict
	|hashdict keys|
	
	hashdict := Dictionary new.
	keys := aDict keys.
	
	"check if keystring already exisists in aDict"
	keys do: [:key | (key keyString = aShortcut keyString)
					ifTrue: [^key]].
	^nil