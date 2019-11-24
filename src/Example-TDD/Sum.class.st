Class {
	#name : #Sum,
	#superclass : #Object,
	#instVars : [
		'augend',
		'addend'
	],
	#category : #'Example-TDD'
}

{ #category : #'instance creation' }
Sum class >> augend: anObject addend: anotherObject [
	^ self new setAugend: anObject addend: anotherObject
]

{ #category : #accessing }
Sum >> addend [
	^ addend
]

{ #category : #accessing }
Sum >> augend [
	^ augend
]

{ #category : #arithmetic }
Sum >> plus: anExpression [
	^ self class augend: self addend: anExpression
]

{ #category : #enumerating }
Sum >> reduceTo: aCurrency at: aBank [
	| sum |
	sum := (augend reduceTo: aCurrency at: aBank) amount
		+ (addend reduceTo: aCurrency at: aBank) amount.
	^ Money amount: sum currency: aCurrency
]

{ #category : #initialization }
Sum >> setAugend: anObject addend: anotherObject [
	augend := anObject.
	addend := anotherObject
]

{ #category : #arithmetic }
Sum >> times: aMultiplier [
	^ self class
		augend: (augend times: aMultiplier)
		addend: (addend times: aMultiplier)
]
