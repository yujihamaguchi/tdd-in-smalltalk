Class {
	#name : #Bank,
	#superclass : #Object,
	#instVars : [
		'rates'
	],
	#category : #'Example-TDD'
}

{ #category : #adding }
Bank >> addRateFrom: aString to: anotherString rate: anInteger [
	rates
		at: (Pair from: aString to: anotherString)
		put: anInteger
]

{ #category : #initialization }
Bank >> initialize [
	rates := Dictionary new.
	^ self
]

{ #category : #acccessing }
Bank >> rateFrom: aString to: anotherString [
	^ aString = anotherString
		ifTrue: [ 1 ]
		ifFalse: [ rates at: (Pair from: aString to: anotherString) ]
]

{ #category : #enumerating }
Bank >> reduce: anExpression to: aCurrency [
	^ anExpression reduceTo: aCurrency at: self
]
