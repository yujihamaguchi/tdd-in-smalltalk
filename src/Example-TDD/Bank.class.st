Class {
	#name : #Bank,
	#superclass : #Object,
	#instVars : [
		'exchangeRates'
	],
	#category : #'Example-TDD'
}

{ #category : #adding }
Bank >> addRateFrom: aString to: anotherString rate: anInteger [
	exchangeRates
		at: (Pair from: aString to: anotherString)
		put: anInteger
]

{ #category : #initialization }
Bank >> initialize [
	exchangeRates := Dictionary new
]

{ #category : #acccessing }
Bank >> rateFrom: aString to: anotherString [
	^ aString = anotherString
		ifTrue: [ 1 ]
		ifFalse: [ exchangeRates at: (Pair from: aString to: anotherString) ]
]

{ #category : #enumerating }
Bank >> reduce: anExpression to: aCurrency [
	^ anExpression reduceTo: aCurrency at: self
]
