initialization
initializeLayout

	self layoutPolicy: TableLayout new.
	self vResizing: #spaceFill.
	self hResizing: #spaceFill.
	self listCentering: #center.
	self wrapCentering: #center