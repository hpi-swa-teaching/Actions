toolbuilder
createTreeSpecWith: aToolBuilder

	^ aToolBuilder pluggableTreeSpec new
		model: self;
		roots: #mainView;
		hasChildren: #hasChildren:;
		getChildren: #getChildren:;
		getSelected: #selectedItem;
		setSelected: #selectedItem:;
		getSelectedPath: #selectedPath;
		setSelectedPath: #selectedPath:;
		help: #helpFor:;
		frame: (0@self buttonPanelHeight corner: 1@1);
		yourself