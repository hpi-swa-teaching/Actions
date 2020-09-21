as yet unclassified
listRepresentationIn: aClass

	^ self actions collect: [:each | each listRepresentationIn: aClass]