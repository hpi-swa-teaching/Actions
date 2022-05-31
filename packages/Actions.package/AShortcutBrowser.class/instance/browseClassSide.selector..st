nil
browseClassSide: aClass selector: aSelector

	^ Browser new
			setClass: aClass;
			indicateClassMessages;
			setSelector: aSelector;
			buildAndOpenFullBrowser