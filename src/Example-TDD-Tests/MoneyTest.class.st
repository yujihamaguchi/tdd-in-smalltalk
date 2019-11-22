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
MoneyTest >> testDifferentClassEquality [
	self assert: (Money amount: 10 currency: 'CHF') equals: (Franc amount: 10 currency: 'CHF') 
]

{ #category : #tests }
MoneyTest >> testEquality [
	self assert: (Money dollar: 5) equals: (Money dollar: 5).
	self deny: (Money dollar: 5) equals: (Money dollar: 6).
	self assert: (Money franc: 5) equals: (Money franc: 5).
	self deny: (Money franc: 5) equals: (Money franc: 6).
	self deny: (Money franc: 5) equals: (Money dollar: 5)
]

{ #category : #tests }
MoneyTest >> testFrancMultiplication [
	| five |
	five := Money franc: 5.
	self assert: (five times: 2) equals: (Money franc: 10).
	self assert: (five times: 3) equals: (Money franc: 15)
]

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five |
	five := Money dollar: 5.
	self assert: (five times: 2) equals: (Money dollar: 10).
	self assert: (five times: 3) equals: (Money dollar: 15)
]
