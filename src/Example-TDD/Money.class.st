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
Money >> plus: anExpression [
	^ Sum augend: self addend: anExpression
]

{ #category : #printing }
Money >> printString [
	^ amount asString , ' ' , currency
]

{ #category : #enumerating }
Money >> reduceTo: aCurrency at: aBank [
	| rate |
	rate := aBank rateFrom: self currency to: aCurrency.
	^ self class amount: self amount / rate currency: aCurrency
]

{ #category : #'initialization - private' }
Money >> setAmount: anObject currency: aString [
	amount := anObject.
	currency := aString.
	^ self
]

{ #category : #arithmetic }
Money >> times: aMultiplier [
	^ self class amount: amount * aMultiplier currency: currency
]
