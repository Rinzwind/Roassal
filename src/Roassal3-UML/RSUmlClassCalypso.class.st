"
I am a basic uml class browser
"
Class {
	#name : #RSUmlClassCalypso,
	#superclass : #RSUMLCalypso,
	#instVars : [
		'targetClass'
	],
	#category : #'Roassal3-UML'
}

{ #category : #activation }
RSUmlClassCalypso class >> classUmlTapActivation [
	<classAnnotation>
	^ ClyTabActivationStrategy for: ClyClass asCalypsoItemContext
]

{ #category : #accessing }
RSUmlClassCalypso >> classes [
	^ targetClass withAllSubclasses
]

{ #category : #initialization }
RSUmlClassCalypso >> defaultTitle [
	^'UML'
]

{ #category : #initialization }
RSUmlClassCalypso >> isSimilarTo: anotherBrowserTool [
	(super isSimilarTo: anotherBrowserTool) ifFalse: [ ^false ].
	
	^targetClass  = anotherBrowserTool targetClass
]

{ #category : #initialization }
RSUmlClassCalypso >> setUpModelFromContext [
	super setUpModelFromContext.

	targetClass := context lastSelectedClass
]

{ #category : #accessing }
RSUmlClassCalypso >> targetClass [
	^ targetClass
]