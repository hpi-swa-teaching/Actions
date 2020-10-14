toolbuilder
createDialogSpecWith: aToolBuilder

	^ aToolBuilder pluggableDialogSpec new
		model: self;
		title: #title;
		wantsResizeHandles: false;
		children: OrderedCollection new;
		buttons: OrderedCollection new;
		yourself