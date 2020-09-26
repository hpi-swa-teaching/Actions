as yet unclassified
shortcutRepresentationIn: aClass

	| shortcuts |
	shortcuts := AActions shortcutsFor: self in: aClass ifAbsent: [^ ''].
	^ '(' , ((shortcuts collect: #asString) fold: [:a :b | a , ', ' , b]) , ')'