toolbuilder
createMainListSpecWith: aToolBuilder

	^ aToolBuilder pluggableTreeSpec new
		model: self;
		roots: #mainView;
		hasChildren: #hasChildren:;
		getChildren: #getChildren:;
		getSelected: #selectedItem;
		setSelected: #selectedItem:;
		getSelectedPath: #selectedPath;
		setSelectedPath: #selectedPath:;
		frame: (0.25@0 corner: 1@1);
		yourself