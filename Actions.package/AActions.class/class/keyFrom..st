as yet unclassified
keyFrom: anEvent

	| key |
	key := Character codePoint: anEvent keyValue.
	"as different platforms are not able to differentiate between ctrl and cmd use both as the same"
	(anEvent controlKeyPressed or: [anEvent commandKeyPressed])
		ifTrue: [key := #mod -> key].
	^ key
	