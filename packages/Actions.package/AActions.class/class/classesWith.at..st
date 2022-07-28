handle shortcuts
classesWith: anAction at: anEventKey

	^ Shortcuts keys select: [:class | (Shortcuts at: class) at: anEventKey ifPresent: [:action | action title = anAction title] ifAbsent: [false]]

	

	