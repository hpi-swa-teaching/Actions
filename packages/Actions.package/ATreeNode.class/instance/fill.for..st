printing
fill: aMenu for: anObject

	self children do: [:each | each putOnMenu: aMenu for: anObject]