as yet unclassified
stringRepresentationFor: anAssociation

	| representation |
	representation := ''.
	anAssociation key = #mod ifTrue: [representation := '<cmd> + '].
	anAssociation value isUppercase ifTrue: [representation := representation , '<shift> + '].
	^ representation , anAssociation value asLowercase