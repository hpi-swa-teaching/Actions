as yet unclassified
browse: aAction For: aClass

	(self aactionsApi selectorsWith: aAction DefinedFor: aClass) do: [ :aSelector |
	 self browseClassSide: self selectedClass selector: aSelector.
	].