history
lastStoredRun
	^ ((Dictionary new) add: (#duration->42); add: (#errors->((Set new))); add: (#passed->((Set new) add: #testWindowCreation; yourself)); add: (#failures->((Set new))); add: (#timeStamp->'22 June 2022 4:16:35.86868 pm' asTimeStamp); add: (#durations->((Dictionary new) add: (#testWindowCreation->42); yourself)); yourself)