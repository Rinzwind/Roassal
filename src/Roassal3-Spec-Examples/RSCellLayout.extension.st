Extension { #name : #RSCellLayout }

{ #category : #'*Roassal3-Spec-Examples' }
RSCellLayout class >> alignmentOptions [
	^ #(top middle bottom none)
]

{ #category : #'*Roassal3-Spec-Examples' }
RSCellLayout class >> layoutDefinition [
	^ super layoutDefinition
		add: (RSLayoutChooseField new
			label: 'Aligment';
			items: self alignmentOptions;
			selector: #alignment;
			yourself);
		yourself
]