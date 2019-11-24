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
MoneyTest >> testIdentityRate [
	| bank |
	bank := Bank new.
	self assert: (bank rateFrom: 'USD' to: 'USD') equals: 1
]

{ #category : #tests }
MoneyTest >> testMixedAddition [ 
	| fiveBucks tenFrancs bank result |
	fiveBucks := Money dollar: 5.
	tenFrancs := Money franc: 10.
	bank := Bank new.
	bank addRateFrom: 'CHF' to: 'USD' rate: 2.
	result := bank reduce: (fiveBucks plus: tenFrancs) to: 'USD'.
	self assert: result equals: (Money dollar: 10)
]

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five |
	five := Money dollar: 5.
	self assert: (five times: 2) equals: (Money dollar: 10).
	self assert: (five times: 3) equals: (Money dollar: 15)
]

{ #category : #tests }
MoneyTest >> testPlusReturnsSum [
	| five result |
	five := Money dollar: 5.
	result := five plus: five.
	self assert: result augend equals: five.
	self assert: result addend equals: five
]

{ #category : #tests }
MoneyTest >> testReduceMoney [
	| bank result |
	bank := Bank new.
	result := bank reduce: (Money dollar: 1) to: 'USD'.
	self assert: result equals: (Money dollar: 1)
]

{ #category : #tests }
MoneyTest >> testReduceMoneyDifferentCurrency [
	| bank result |
	bank := Bank new.
	bank addRateFrom: 'CHF' to: 'USD' rate: 2.
	result := bank reduce: (Money franc: 2) to: 'USD'.
	self assert: result equals: (Money dollar: 1)
]

{ #category : #tests }
MoneyTest >> testReduceSum [
	| sum bank result |
	sum := Sum augend: (Money dollar: 3) addend: (Money dollar: 4).
	bank := Bank new.
	result := bank reduce: sum to: 'USD'.
	self assert: result equals: (Money dollar: 7)
]

{ #category : #tests }
MoneyTest >> testSimpleAddtion [
	| five sum bank reduced |
	five := Money dollar: 5.
	sum := five plus: five.
	bank := Bank new.
	reduced := bank reduce: sum to: 'USD'.
	self assert: reduced equals: (Money dollar: 10)
]

{ #category : #tests }
MoneyTest >> testSumPlusMoney [
	| fiveBucks tenFrancs bank result |
	fiveBucks := Money dollar: 5.
	tenFrancs := Money franc: 10.
	bank := Bank new.
	bank addRateFrom: 'CHF' to: 'USD' rate: 2.
	result := bank
		reduce: ((Sum augend: fiveBucks addend: tenFrancs) plus: fiveBucks)
		to: 'USD'.
	self assert: result equals: (Money dollar: 15)
]

{ #category : #tests }
MoneyTest >> testSumTimes [
	| fiveBucks tenFrancs bank sum result |
	fiveBucks := Money dollar: 5.
	tenFrancs := Money franc: 10.
	bank := Bank new.
	bank addRateFrom: 'CHF' to: 'USD' rate: 2.
	sum := (Sum augend: fiveBucks addend: tenFrancs) times: 2.
	result := bank reduce: sum to: 'USD'.
	self assert: result equals: (Money dollar: 20)
]
