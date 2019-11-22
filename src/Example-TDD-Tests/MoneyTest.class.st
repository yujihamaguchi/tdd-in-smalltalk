Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'Example-TDD-Tests'
}

{ #category : #tests }
MoneyTest >> testCurrency [
	self assert: (Money dollar: 1) currency equals: 'USD'.
	self assert: (Money franc: 1) currency equals: 'CHF'
]

{ #category : #tests }
MoneyTest >> testEquality [
	self assert: (Money dollar: 5) equals: (Money dollar: 5).
	self deny: (Money dollar: 5) equals: (Money dollar: 6).
	self deny: (Money franc: 5) equals: (Money dollar: 5)
]

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five |
	five := Money dollar: 5.
	self assert: (five times: 2) equals: (Money dollar: 10).
	self assert: (five times: 3) equals: (Money dollar: 15)
]
