Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #'Example-TDD'
}

{ #category : #enumerating }
Bank >> reduceWith: anExpression to: aCurrency [
	^ anExpression reduceTo: aCurrency
]
