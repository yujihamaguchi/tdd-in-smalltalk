Class {
	#name : #Pair,
	#superclass : #Object,
	#instVars : [
		'from',
		'to'
	],
	#category : #'Example-TDD'
}

{ #category : #'instance creation' }
Pair class >> from: aString to: anotherString [
	^ self new setFrom: aString to: anotherString
]

{ #category : #comparing }
Pair >> = other [
	^ other class = self class & (self from = other from)
		& (self to = other to)
]

{ #category : #accessing }
Pair >> from [ 
	^ from
]

{ #category : #comparing }
Pair >> hash [
	^ 0
]

{ #category : #initialization }
Pair >> setFrom: aString to: anotherString [
	from := aString.
	to := anotherString
]

{ #category : #accessing }
Pair >> to [
	^ to
]
