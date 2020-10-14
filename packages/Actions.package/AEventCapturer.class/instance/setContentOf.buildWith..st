as yet unclassified
setContentOf: aSpec buildWith: aToolBuilder

	self captureMorph: AEventCaptureMorph new.
	(aToolBuilder widgetAt: #content)
		addMorph: self captureMorph.