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

{ #category : #enumerating }
Sum >> reduceTo: aCurrency in: aBank [
	| sum |
	sum := augend amount + addend amount.
	^ Money amount: sum currency: aCurrency
]

{ #category : #initialization }
Sum >> setAugend: anObject addend: anotherObject [
	augend := anObject.
	addend := anotherObject
]
