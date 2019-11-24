Class {
	#name : #Bank,
	#superclass : #Object,
	#instVars : [
		'exchangeRates'
	],
	#category : #'Example-TDD'
}

{ #category : #adding }
Bank >> addExchangeRateFrom: aString to: anotherString rate: anInteger [
	exchangeRates
		at: (Pair from: aString to: anotherString)
		put: anInteger
]

{ #category : #acccessing }
Bank >> exchangeRateFrom: aString to: anotherString [
	^ aString = anotherString
		ifTrue: [ 1 ]
		ifFalse: [ exchangeRates at: (Pair from: aString to: anotherString) ]
]

{ #category : #initialization }
Bank >> initialize [
	exchangeRates := Dictionary new
]

{ #category : #enumerating }
Bank >> reduceWith: anExpression to: aCurrency [
	^ anExpression reduceTo: aCurrency in: self
]
