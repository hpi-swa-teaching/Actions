as yet unclassified
shortcutRepresentation

	| shortcuts |
	shortcuts := AActions shortcutsFor: self in: self clazz ifAbsent: [^ ''].
	^ '(' , ((shortcuts collect: #asString) fold: [:a :b | a , ', ' , b]) , ')'