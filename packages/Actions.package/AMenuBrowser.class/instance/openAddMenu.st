toolbuilder
openAddMenu

	| builder spec |
	builder := ToolBuilder default.
	spec := builder pluggableMenuSpec new.
	
	spec add: 'Add Action...' target: self selector: #addAction argumentList: #().
	spec add: 'Add Separator' target: self selector: #addSeparator argumentList: #().
	
	builder runModal: (builder open: spec)