toolbuilder
createTreeSpecWith: aToolBuilder

	^ aToolBuilder pluggableTreeSpec new
		model: self;
		roots: #actionRoots;
		hasChildren: #hasChildren:;
		getChildren: #getChildren:;
		getSelected: #selectedItem;
		setSelected: #selectedItem:;
		getSelectedPath: #selectedPath;
		setSelectedPath: #selectedPath:;
		help: #helpFor:;
		frame: (0@0 corner: 1@1)
		yourself