as yet unclassified
browse: aAction For: aClass
	(AActions selectorsWith: aAction DefinedFor: aClass) do: [ :aSelector |
	 self browseClassSide: self selectedClass selector: aSelector.
].