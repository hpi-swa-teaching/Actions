accessing
actionsFrom: aCompiledMethod For: aClass

	^ ((self valueFrom: aCompiledMethod)
			select: [:each | self testIfIsAction: each])
			do: [:action | action clazz: aClass]