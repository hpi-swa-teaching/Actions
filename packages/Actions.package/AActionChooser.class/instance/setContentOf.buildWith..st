as yet unclassified
setContentOf: aSpec buildWith: aToolBuilder

	| treeSpec |
	treeSpec := aToolBuilder pluggableTreeSpec new
		model: self;
		roots: #actionRoots;
		hasChildren: #hasChildren:;
		getChildren: #getChildren:;
		getSelected: #selectedItem;
		setSelected: #selectedItem:;
		getSelectedPath: #selectedPath;
		setSelectedPath: #selectedPath:;
		help: #helpFor:;
		yourself.
	
	aSpec children: {treeSpec}