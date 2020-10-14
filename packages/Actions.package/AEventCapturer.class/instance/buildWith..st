toolbuilder
buildWith: aToolBuilder

	| dialog |
	dialog := super buildWith: aToolBuilder.
	
	self captureMorph: AEventCaptureMorph new.
	(aToolBuilder widgetAt: #content)
		addMorph: self captureMorph.
	
	^ dialog