Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'amount',
		'currency'
	],
	#category : #'Example-TDD'
}

{ #category : #initialization }
Money class >> amount: anInteger currency: aString [
	^ self new setAmount: anInteger currency: aString
]

{ #category : #initialization }
Money class >> dollar: anInteger [
	^ Money amount: anInteger currency: 'USD'
]

{ #category : #initialization }
Money class >> franc: anInteger [
	^ Money amount: anInteger currency: 'CHF'
]

{ #category : #comparing }
Money >> = anObject [
	^ amount = anObject amount & (currency = anObject currency)
]

{ #category : #private }
Money >> amount [
	^ amount
]

{ #category : #acccessing }
Money >> currency [
	^ currency
]

{ #category : #arithmetic }
Money >> plus: aMoney [
	^ Sum augend: self addend: aMoney
]

{ #category : #printing }
Money >> printString [
	^ amount asString , ' ' , currency
]

{ #category : #enumerating }
Money >> reduceTo: aCurrency [
	^ self
]

{ #category : #private }
Money >> setAmount: anObject currency: aString [
	amount := anObject.
	currency := aString
]

{ #category : #arithmetic }
Money >> times: aMultiplier [
	^ Money amount: amount * aMultiplier currency: currency
]
