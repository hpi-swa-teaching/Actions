accessing
actionDuplicateWarning: aAction

| window browseActionsButton| 

window := DialogWindow new.
window createButton: 'Ignore' value: true.

browseActionsButton := window createButton: 'Browse actions' value: false color: Color lightGreen.
browseActionsButton action: [self browse: aAction For: self selectedClass. window closeDialog].

window title: 'Warning'.
window message: 'You assigned the name "' , aAction title asString , '" to different actions
'.
window updateButtonExtent: self sizeButton.

window openAsTool.

			