structure
testMenuTree
	|tree menu actionNode actionGroupNode|
	tree := ATreeNode seperator.
	actionNode := ATreeNode value: (AAction from: MockActions mockActionMoveUpAsList).
	actionGroupNode := ATreeNode value: ((AActionGroup named: #TestGroup) addAction: (AAction from: MockActions mockActionMoveDownAsList)).
	menu := MenuMorph new.
	tree addChild: actionNode.
	tree addChild: actionGroupNode.
	
	tree fill: menu for: AMenuBrowser new.
	self assert: menu submorphs first contents = 'Move Up Test'.
	self assert: menu submorphs second contents = #TestGroup.
	
	

	
	
	
	
	


