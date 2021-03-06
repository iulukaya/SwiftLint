//
//  IdentifierNameRuleExamples.swift
//  SwiftLint
//
//  Created by Marcelo Fabri on 12/30/16.
//  Copyright © 2016 Realm. All rights reserved.
//

import Foundation

internal struct IdentifierNameRuleExamples {
    private static let commonNonTriggeringExamples = [
        "let myLet = 0",
        "var myVar = 0",
        "private let _myLet = 0",
        "class Abc { static let MyLet = 0 }",
        "let URL: NSURL? = nil",
        "let XMLString: String? = nil",
        "override var i = 0",
        "enum Foo { case myEnum }",
        "func isOperator(name: String) -> Bool",
        "func typeForKind(_ kind: SwiftDeclarationKind) -> String",
        "func == (lhs: SyntaxToken, rhs: SyntaxToken) -> Bool",
        "override func IsOperator(name: String) -> Bool"
    ]

    static let swift2NonTriggeringExamples = commonNonTriggeringExamples + [
        "enum Foo { case MyEnum }"
    ]

    static let swift3NonTriggeringExamples = commonNonTriggeringExamples

    private static let commonTriggeringExamples = [
        "↓let MyLet = 0",
        "↓let _myLet = 0",
        "private ↓let myLet_ = 0",
        "↓let myExtremelyVeryVeryVeryVeryVeryVeryLongLet = 0",
        "↓var myExtremelyVeryVeryVeryVeryVeryVeryLongVar = 0",
        "private ↓let _myExtremelyVeryVeryVeryVeryVeryVeryLongLet = 0",
        "↓let i = 0",
        "↓var id = 0",
        "private ↓let _i = 0",
        "↓func IsOperator(name: String) -> Bool"
    ]

    static let swift2TriggeringExamples = commonTriggeringExamples

    static let swift3TriggeringExamples = commonTriggeringExamples + [
        "enum Foo { case ↓MyEnum }"
    ]
}
