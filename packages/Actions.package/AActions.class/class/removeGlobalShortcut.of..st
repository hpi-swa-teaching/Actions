handle shortcuts
removeGlobalShortcut: anEventKey of: anAction

	(self classesWith: anAction at: anEventKey) do: [:class | self removeLocalShortcut: anEventKey in: class]

	

	