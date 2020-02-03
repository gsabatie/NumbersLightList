// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



// Generated with SwiftyMocky 3.5.0

import SwiftyMocky
#if !MockyCustom
import XCTest
#endif
import UIKit
import Alamofire
@testable import NumbersLight


// MARK: - JapaneseNumeralDetailInteractorOutputProtocol
open class JapaneseNumeralDetailInteractorOutputProtocolMock: JapaneseNumeralDetailInteractorOutputProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }






    fileprivate struct MethodType {
        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool { return true }
        func intValue() -> Int { return 0 }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralDetailPresentationProtocol
open class JapaneseNumeralDetailPresentationProtocolMock: JapaneseNumeralDetailPresentationProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func presentJapaneseNumeralDetail(arabicRepresentation: String) {
        addInvocation(.m_presentJapaneseNumeralDetail__arabicRepresentation_arabicRepresentation(Parameter<String>.value(`arabicRepresentation`)))
		let perform = methodPerformValue(.m_presentJapaneseNumeralDetail__arabicRepresentation_arabicRepresentation(Parameter<String>.value(`arabicRepresentation`))) as? (String) -> Void
		perform?(`arabicRepresentation`)
    }


    fileprivate enum MethodType {
        case m_presentJapaneseNumeralDetail__arabicRepresentation_arabicRepresentation(Parameter<String>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_presentJapaneseNumeralDetail__arabicRepresentation_arabicRepresentation(let lhsArabicrepresentation), .m_presentJapaneseNumeralDetail__arabicRepresentation_arabicRepresentation(let rhsArabicrepresentation)):
                guard Parameter.compare(lhs: lhsArabicrepresentation, rhs: rhsArabicrepresentation, with: matcher) else { return false } 
                return true 
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_presentJapaneseNumeralDetail__arabicRepresentation_arabicRepresentation(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func presentJapaneseNumeralDetail(arabicRepresentation: Parameter<String>) -> Verify { return Verify(method: .m_presentJapaneseNumeralDetail__arabicRepresentation_arabicRepresentation(`arabicRepresentation`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func presentJapaneseNumeralDetail(arabicRepresentation: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_presentJapaneseNumeralDetail__arabicRepresentation_arabicRepresentation(`arabicRepresentation`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralDetailRouterProtocol
open class JapaneseNumeralDetailRouterProtocolMock: JapaneseNumeralDetailRouterProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func present(arabicRepresentation: String, from viewController: UIViewController) {
        addInvocation(.m_present__arabicRepresentation_arabicRepresentationfrom_viewController(Parameter<String>.value(`arabicRepresentation`), Parameter<UIViewController>.value(`viewController`)))
		let perform = methodPerformValue(.m_present__arabicRepresentation_arabicRepresentationfrom_viewController(Parameter<String>.value(`arabicRepresentation`), Parameter<UIViewController>.value(`viewController`))) as? (String, UIViewController) -> Void
		perform?(`arabicRepresentation`, `viewController`)
    }

    open func push(arabicRepresentation: String, from navigationController: UINavigationController) {
        addInvocation(.m_push__arabicRepresentation_arabicRepresentationfrom_navigationController(Parameter<String>.value(`arabicRepresentation`), Parameter<UINavigationController>.value(`navigationController`)))
		let perform = methodPerformValue(.m_push__arabicRepresentation_arabicRepresentationfrom_navigationController(Parameter<String>.value(`arabicRepresentation`), Parameter<UINavigationController>.value(`navigationController`))) as? (String, UINavigationController) -> Void
		perform?(`arabicRepresentation`, `navigationController`)
    }


    fileprivate enum MethodType {
        case m_present__arabicRepresentation_arabicRepresentationfrom_viewController(Parameter<String>, Parameter<UIViewController>)
        case m_push__arabicRepresentation_arabicRepresentationfrom_navigationController(Parameter<String>, Parameter<UINavigationController>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_present__arabicRepresentation_arabicRepresentationfrom_viewController(let lhsArabicrepresentation, let lhsViewcontroller), .m_present__arabicRepresentation_arabicRepresentationfrom_viewController(let rhsArabicrepresentation, let rhsViewcontroller)):
                guard Parameter.compare(lhs: lhsArabicrepresentation, rhs: rhsArabicrepresentation, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsViewcontroller, rhs: rhsViewcontroller, with: matcher) else { return false } 
                return true 
            case (.m_push__arabicRepresentation_arabicRepresentationfrom_navigationController(let lhsArabicrepresentation, let lhsNavigationcontroller), .m_push__arabicRepresentation_arabicRepresentationfrom_navigationController(let rhsArabicrepresentation, let rhsNavigationcontroller)):
                guard Parameter.compare(lhs: lhsArabicrepresentation, rhs: rhsArabicrepresentation, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsNavigationcontroller, rhs: rhsNavigationcontroller, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_present__arabicRepresentation_arabicRepresentationfrom_viewController(p0, p1): return p0.intValue + p1.intValue
            case let .m_push__arabicRepresentation_arabicRepresentationfrom_navigationController(p0, p1): return p0.intValue + p1.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func present(arabicRepresentation: Parameter<String>, from viewController: Parameter<UIViewController>) -> Verify { return Verify(method: .m_present__arabicRepresentation_arabicRepresentationfrom_viewController(`arabicRepresentation`, `viewController`))}
        public static func push(arabicRepresentation: Parameter<String>, from navigationController: Parameter<UINavigationController>) -> Verify { return Verify(method: .m_push__arabicRepresentation_arabicRepresentationfrom_navigationController(`arabicRepresentation`, `navigationController`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func present(arabicRepresentation: Parameter<String>, from viewController: Parameter<UIViewController>, perform: @escaping (String, UIViewController) -> Void) -> Perform {
            return Perform(method: .m_present__arabicRepresentation_arabicRepresentationfrom_viewController(`arabicRepresentation`, `viewController`), performs: perform)
        }
        public static func push(arabicRepresentation: Parameter<String>, from navigationController: Parameter<UINavigationController>, perform: @escaping (String, UINavigationController) -> Void) -> Perform {
            return Perform(method: .m_push__arabicRepresentation_arabicRepresentationfrom_navigationController(`arabicRepresentation`, `navigationController`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralDetailUseCaseProtocol
open class JapaneseNumeralDetailUseCaseProtocolMock: JapaneseNumeralDetailUseCaseProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func getJapaneseNumeral(arabicRepresentation: String, completion: @escaping JapaneseNumeralCompletionBlock) {
        addInvocation(.m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(Parameter<String>.value(`arabicRepresentation`), Parameter<JapaneseNumeralCompletionBlock>.any))
		let perform = methodPerformValue(.m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(Parameter<String>.value(`arabicRepresentation`), Parameter<JapaneseNumeralCompletionBlock>.any)) as? (String, @escaping JapaneseNumeralCompletionBlock) -> Void
		perform?(`arabicRepresentation`, `completion`)
    }


    fileprivate enum MethodType {
        case m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(Parameter<String>, Parameter<JapaneseNumeralCompletionBlock>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(let lhsArabicrepresentation, let lhsCompletion), .m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(let rhsArabicrepresentation, let rhsCompletion)):
                guard Parameter.compare(lhs: lhsArabicrepresentation, rhs: rhsArabicrepresentation, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher) else { return false } 
                return true 
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(p0, p1): return p0.intValue + p1.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func getJapaneseNumeral(arabicRepresentation: Parameter<String>, completion: Parameter<JapaneseNumeralCompletionBlock>) -> Verify { return Verify(method: .m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(`arabicRepresentation`, `completion`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func getJapaneseNumeral(arabicRepresentation: Parameter<String>, completion: Parameter<JapaneseNumeralCompletionBlock>, perform: @escaping (String, @escaping JapaneseNumeralCompletionBlock) -> Void) -> Perform {
            return Perform(method: .m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(`arabicRepresentation`, `completion`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralDetailViewEventResponderProtocol
open class JapaneseNumeralDetailViewEventResponderProtocolMock: JapaneseNumeralDetailViewEventResponderProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func viewDidLoad() {
        addInvocation(.m_viewDidLoad)
		let perform = methodPerformValue(.m_viewDidLoad) as? () -> Void
		perform?()
    }

    open func viewDidAppear() {
        addInvocation(.m_viewDidAppear)
		let perform = methodPerformValue(.m_viewDidAppear) as? () -> Void
		perform?()
    }


    fileprivate enum MethodType {
        case m_viewDidLoad
        case m_viewDidAppear

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_viewDidLoad, .m_viewDidLoad):
                return true 
            case (.m_viewDidAppear, .m_viewDidAppear):
                return true 
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_viewDidLoad: return 0
            case .m_viewDidAppear: return 0
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func viewDidLoad() -> Verify { return Verify(method: .m_viewDidLoad)}
        public static func viewDidAppear() -> Verify { return Verify(method: .m_viewDidAppear)}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func viewDidLoad(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_viewDidLoad, performs: perform)
        }
        public static func viewDidAppear(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_viewDidAppear, performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralDetailViewProtocol
open class JapaneseNumeralDetailViewProtocolMock: JapaneseNumeralDetailViewProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }

    public var output: JapaneseNumeralDetailViewEventResponderProtocol? {
		get {	invocations.append(.p_output_get); return __p_output ?? optionalGivenGetterValue(.p_output_get, "JapaneseNumeralDetailViewProtocolMock - stub value for output was not defined") }
		set {	invocations.append(.p_output_set(.value(newValue))); __p_output = newValue }
	}
	private var __p_output: (JapaneseNumeralDetailViewEventResponderProtocol)?

    public var japaneseNumeral: JapaneseNumeral? {
		get {	invocations.append(.p_japaneseNumeral_get); return __p_japaneseNumeral ?? optionalGivenGetterValue(.p_japaneseNumeral_get, "JapaneseNumeralDetailViewProtocolMock - stub value for japaneseNumeral was not defined") }
		set {	invocations.append(.p_japaneseNumeral_set(.value(newValue))); __p_japaneseNumeral = newValue }
	}
	private var __p_japaneseNumeral: (JapaneseNumeral)?

    public var isLoading: Bool {
		get {	invocations.append(.p_isLoading_get); return __p_isLoading ?? givenGetterValue(.p_isLoading_get, "JapaneseNumeralDetailViewProtocolMock - stub value for isLoading was not defined") }
		set {	invocations.append(.p_isLoading_set(.value(newValue))); __p_isLoading = newValue }
	}
	private var __p_isLoading: (Bool)?





    open func display(errorMessage: String) {
        addInvocation(.m_display__errorMessage_errorMessage(Parameter<String>.value(`errorMessage`)))
		let perform = methodPerformValue(.m_display__errorMessage_errorMessage(Parameter<String>.value(`errorMessage`))) as? (String) -> Void
		perform?(`errorMessage`)
    }


    fileprivate enum MethodType {
        case m_display__errorMessage_errorMessage(Parameter<String>)
        case p_output_get
		case p_output_set(Parameter<JapaneseNumeralDetailViewEventResponderProtocol?>)
        case p_japaneseNumeral_get
		case p_japaneseNumeral_set(Parameter<JapaneseNumeral?>)
        case p_isLoading_get
		case p_isLoading_set(Parameter<Bool>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_display__errorMessage_errorMessage(let lhsErrormessage), .m_display__errorMessage_errorMessage(let rhsErrormessage)):
                guard Parameter.compare(lhs: lhsErrormessage, rhs: rhsErrormessage, with: matcher) else { return false } 
                return true 
            case (.p_output_get,.p_output_get): return true
			case (.p_output_set(let left),.p_output_set(let right)): return Parameter<JapaneseNumeralDetailViewEventResponderProtocol?>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_japaneseNumeral_get,.p_japaneseNumeral_get): return true
			case (.p_japaneseNumeral_set(let left),.p_japaneseNumeral_set(let right)): return Parameter<JapaneseNumeral?>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_isLoading_get,.p_isLoading_get): return true
			case (.p_isLoading_set(let left),.p_isLoading_set(let right)): return Parameter<Bool>.compare(lhs: left, rhs: right, with: matcher)
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_display__errorMessage_errorMessage(p0): return p0.intValue
            case .p_output_get: return 0
			case .p_output_set(let newValue): return newValue.intValue
            case .p_japaneseNumeral_get: return 0
			case .p_japaneseNumeral_set(let newValue): return newValue.intValue
            case .p_isLoading_get: return 0
			case .p_isLoading_set(let newValue): return newValue.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func output(getter defaultValue: JapaneseNumeralDetailViewEventResponderProtocol?...) -> PropertyStub {
            return Given(method: .p_output_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func japaneseNumeral(getter defaultValue: JapaneseNumeral?...) -> PropertyStub {
            return Given(method: .p_japaneseNumeral_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func isLoading(getter defaultValue: Bool...) -> PropertyStub {
            return Given(method: .p_isLoading_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func display(errorMessage: Parameter<String>) -> Verify { return Verify(method: .m_display__errorMessage_errorMessage(`errorMessage`))}
        public static var output: Verify { return Verify(method: .p_output_get) }
		public static func output(set newValue: Parameter<JapaneseNumeralDetailViewEventResponderProtocol?>) -> Verify { return Verify(method: .p_output_set(newValue)) }
        public static var japaneseNumeral: Verify { return Verify(method: .p_japaneseNumeral_get) }
		public static func japaneseNumeral(set newValue: Parameter<JapaneseNumeral?>) -> Verify { return Verify(method: .p_japaneseNumeral_set(newValue)) }
        public static var isLoading: Verify { return Verify(method: .p_isLoading_get) }
		public static func isLoading(set newValue: Parameter<Bool>) -> Verify { return Verify(method: .p_isLoading_set(newValue)) }
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func display(errorMessage: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_display__errorMessage_errorMessage(`errorMessage`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralListInteractorOutputProtocol
open class JapaneseNumeralListInteractorOutputProtocolMock: JapaneseNumeralListInteractorOutputProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func reachabilityDidChange(status:  NetworkReachabilityManager.NetworkReachabilityStatus) {
        addInvocation(.m_reachabilityDidChange__status_status(Parameter<NetworkReachabilityManager.NetworkReachabilityStatus>.value(`status`)))
		let perform = methodPerformValue(.m_reachabilityDidChange__status_status(Parameter<NetworkReachabilityManager.NetworkReachabilityStatus>.value(`status`))) as? (NetworkReachabilityManager.NetworkReachabilityStatus) -> Void
		perform?(`status`)
    }


    fileprivate enum MethodType {
        case m_reachabilityDidChange__status_status(Parameter<NetworkReachabilityManager.NetworkReachabilityStatus>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_reachabilityDidChange__status_status(let lhsStatus), .m_reachabilityDidChange__status_status(let rhsStatus)):
                guard Parameter.compare(lhs: lhsStatus, rhs: rhsStatus, with: matcher) else { return false } 
                return true 
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_reachabilityDidChange__status_status(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func reachabilityDidChange(status: Parameter<NetworkReachabilityManager.NetworkReachabilityStatus>) -> Verify { return Verify(method: .m_reachabilityDidChange__status_status(`status`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func reachabilityDidChange(status: Parameter<NetworkReachabilityManager.NetworkReachabilityStatus>, perform: @escaping (NetworkReachabilityManager.NetworkReachabilityStatus) -> Void) -> Perform {
            return Perform(method: .m_reachabilityDidChange__status_status(`status`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralListPresentationProtocol
open class JapaneseNumeralListPresentationProtocolMock: JapaneseNumeralListPresentationProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func presentJapaneseNumeralList() {
        addInvocation(.m_presentJapaneseNumeralList)
		let perform = methodPerformValue(.m_presentJapaneseNumeralList) as? () -> Void
		perform?()
    }

    open func presentDetail(japaneseNumeral: JapaneseNumeral) {
        addInvocation(.m_presentDetail__japaneseNumeral_japaneseNumeral(Parameter<JapaneseNumeral>.value(`japaneseNumeral`)))
		let perform = methodPerformValue(.m_presentDetail__japaneseNumeral_japaneseNumeral(Parameter<JapaneseNumeral>.value(`japaneseNumeral`))) as? (JapaneseNumeral) -> Void
		perform?(`japaneseNumeral`)
    }


    fileprivate enum MethodType {
        case m_presentJapaneseNumeralList
        case m_presentDetail__japaneseNumeral_japaneseNumeral(Parameter<JapaneseNumeral>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_presentJapaneseNumeralList, .m_presentJapaneseNumeralList):
                return true 
            case (.m_presentDetail__japaneseNumeral_japaneseNumeral(let lhsJapanesenumeral), .m_presentDetail__japaneseNumeral_japaneseNumeral(let rhsJapanesenumeral)):
                guard Parameter.compare(lhs: lhsJapanesenumeral, rhs: rhsJapanesenumeral, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_presentJapaneseNumeralList: return 0
            case let .m_presentDetail__japaneseNumeral_japaneseNumeral(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func presentJapaneseNumeralList() -> Verify { return Verify(method: .m_presentJapaneseNumeralList)}
        public static func presentDetail(japaneseNumeral: Parameter<JapaneseNumeral>) -> Verify { return Verify(method: .m_presentDetail__japaneseNumeral_japaneseNumeral(`japaneseNumeral`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func presentJapaneseNumeralList(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_presentJapaneseNumeralList, performs: perform)
        }
        public static func presentDetail(japaneseNumeral: Parameter<JapaneseNumeral>, perform: @escaping (JapaneseNumeral) -> Void) -> Perform {
            return Perform(method: .m_presentDetail__japaneseNumeral_japaneseNumeral(`japaneseNumeral`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralListRouterProtocol
open class JapaneseNumeralListRouterProtocolMock: JapaneseNumeralListRouterProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func present(from viewController:UIViewController) {
        addInvocation(.m_present__from_viewController(Parameter<UIViewController>.value(`viewController`)))
		let perform = methodPerformValue(.m_present__from_viewController(Parameter<UIViewController>.value(`viewController`))) as? (UIViewController) -> Void
		perform?(`viewController`)
    }

    open func pushDetailView(arabicRepresentation: String) {
        addInvocation(.m_pushDetailView__arabicRepresentation_arabicRepresentation(Parameter<String>.value(`arabicRepresentation`)))
		let perform = methodPerformValue(.m_pushDetailView__arabicRepresentation_arabicRepresentation(Parameter<String>.value(`arabicRepresentation`))) as? (String) -> Void
		perform?(`arabicRepresentation`)
    }


    fileprivate enum MethodType {
        case m_present__from_viewController(Parameter<UIViewController>)
        case m_pushDetailView__arabicRepresentation_arabicRepresentation(Parameter<String>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_present__from_viewController(let lhsViewcontroller), .m_present__from_viewController(let rhsViewcontroller)):
                guard Parameter.compare(lhs: lhsViewcontroller, rhs: rhsViewcontroller, with: matcher) else { return false } 
                return true 
            case (.m_pushDetailView__arabicRepresentation_arabicRepresentation(let lhsArabicrepresentation), .m_pushDetailView__arabicRepresentation_arabicRepresentation(let rhsArabicrepresentation)):
                guard Parameter.compare(lhs: lhsArabicrepresentation, rhs: rhsArabicrepresentation, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_present__from_viewController(p0): return p0.intValue
            case let .m_pushDetailView__arabicRepresentation_arabicRepresentation(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func present(from viewController: Parameter<UIViewController>) -> Verify { return Verify(method: .m_present__from_viewController(`viewController`))}
        public static func pushDetailView(arabicRepresentation: Parameter<String>) -> Verify { return Verify(method: .m_pushDetailView__arabicRepresentation_arabicRepresentation(`arabicRepresentation`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func present(from viewController: Parameter<UIViewController>, perform: @escaping (UIViewController) -> Void) -> Perform {
            return Perform(method: .m_present__from_viewController(`viewController`), performs: perform)
        }
        public static func pushDetailView(arabicRepresentation: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_pushDetailView__arabicRepresentation_arabicRepresentation(`arabicRepresentation`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralListUseCaseProtocol
open class JapaneseNumeralListUseCaseProtocolMock: JapaneseNumeralListUseCaseProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }

    public var isNetworkReachable: Bool {
		get {	invocations.append(.p_isNetworkReachable_get); return __p_isNetworkReachable ?? givenGetterValue(.p_isNetworkReachable_get, "JapaneseNumeralListUseCaseProtocolMock - stub value for isNetworkReachable was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_isNetworkReachable = newValue }
	}
	private var __p_isNetworkReachable: (Bool)?





    open func getJapaneseNumerals(completion: @escaping JapaneseNumeralsCompletionBlock) {
        addInvocation(.m_getJapaneseNumerals__completion_completion(Parameter<JapaneseNumeralsCompletionBlock>.any))
		let perform = methodPerformValue(.m_getJapaneseNumerals__completion_completion(Parameter<JapaneseNumeralsCompletionBlock>.any)) as? (@escaping JapaneseNumeralsCompletionBlock) -> Void
		perform?(`completion`)
    }


    fileprivate enum MethodType {
        case m_getJapaneseNumerals__completion_completion(Parameter<JapaneseNumeralsCompletionBlock>)
        case p_isNetworkReachable_get

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_getJapaneseNumerals__completion_completion(let lhsCompletion), .m_getJapaneseNumerals__completion_completion(let rhsCompletion)):
                guard Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher) else { return false } 
                return true 
            case (.p_isNetworkReachable_get,.p_isNetworkReachable_get): return true
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_getJapaneseNumerals__completion_completion(p0): return p0.intValue
            case .p_isNetworkReachable_get: return 0
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func isNetworkReachable(getter defaultValue: Bool...) -> PropertyStub {
            return Given(method: .p_isNetworkReachable_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func getJapaneseNumerals(completion: Parameter<JapaneseNumeralsCompletionBlock>) -> Verify { return Verify(method: .m_getJapaneseNumerals__completion_completion(`completion`))}
        public static var isNetworkReachable: Verify { return Verify(method: .p_isNetworkReachable_get) }
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func getJapaneseNumerals(completion: Parameter<JapaneseNumeralsCompletionBlock>, perform: @escaping (@escaping JapaneseNumeralsCompletionBlock) -> Void) -> Perform {
            return Perform(method: .m_getJapaneseNumerals__completion_completion(`completion`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralListViewEventResponderProtocol
open class JapaneseNumeralListViewEventResponderProtocolMock: JapaneseNumeralListViewEventResponderProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func viewDidLoad() {
        addInvocation(.m_viewDidLoad)
		let perform = methodPerformValue(.m_viewDidLoad) as? () -> Void
		perform?()
    }

    open func viewDidAppear() {
        addInvocation(.m_viewDidAppear)
		let perform = methodPerformValue(.m_viewDidAppear) as? () -> Void
		perform?()
    }

    open func didRefreshTableView() {
        addInvocation(.m_didRefreshTableView)
		let perform = methodPerformValue(.m_didRefreshTableView) as? () -> Void
		perform?()
    }

    open func didSelectRowat(index: IndexPath) {
        addInvocation(.m_didSelectRowat__index_index(Parameter<IndexPath>.value(`index`)))
		let perform = methodPerformValue(.m_didSelectRowat__index_index(Parameter<IndexPath>.value(`index`))) as? (IndexPath) -> Void
		perform?(`index`)
    }


    fileprivate enum MethodType {
        case m_viewDidLoad
        case m_viewDidAppear
        case m_didRefreshTableView
        case m_didSelectRowat__index_index(Parameter<IndexPath>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_viewDidLoad, .m_viewDidLoad):
                return true 
            case (.m_viewDidAppear, .m_viewDidAppear):
                return true 
            case (.m_didRefreshTableView, .m_didRefreshTableView):
                return true 
            case (.m_didSelectRowat__index_index(let lhsIndex), .m_didSelectRowat__index_index(let rhsIndex)):
                guard Parameter.compare(lhs: lhsIndex, rhs: rhsIndex, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_viewDidLoad: return 0
            case .m_viewDidAppear: return 0
            case .m_didRefreshTableView: return 0
            case let .m_didSelectRowat__index_index(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func viewDidLoad() -> Verify { return Verify(method: .m_viewDidLoad)}
        public static func viewDidAppear() -> Verify { return Verify(method: .m_viewDidAppear)}
        public static func didRefreshTableView() -> Verify { return Verify(method: .m_didRefreshTableView)}
        public static func didSelectRowat(index: Parameter<IndexPath>) -> Verify { return Verify(method: .m_didSelectRowat__index_index(`index`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func viewDidLoad(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_viewDidLoad, performs: perform)
        }
        public static func viewDidAppear(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_viewDidAppear, performs: perform)
        }
        public static func didRefreshTableView(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_didRefreshTableView, performs: perform)
        }
        public static func didSelectRowat(index: Parameter<IndexPath>, perform: @escaping (IndexPath) -> Void) -> Perform {
            return Perform(method: .m_didSelectRowat__index_index(`index`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralListViewProtocol
open class JapaneseNumeralListViewProtocolMock: JapaneseNumeralListViewProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }

    public var output: JapaneseNumeralListViewEventResponderProtocol? {
		get {	invocations.append(.p_output_get); return __p_output ?? optionalGivenGetterValue(.p_output_get, "JapaneseNumeralListViewProtocolMock - stub value for output was not defined") }
		set {	invocations.append(.p_output_set(.value(newValue))); __p_output = newValue }
	}
	private var __p_output: (JapaneseNumeralListViewEventResponderProtocol)?

    public var japaneseNumerals: [JapaneseNumeral] {
		get {	invocations.append(.p_japaneseNumerals_get); return __p_japaneseNumerals ?? givenGetterValue(.p_japaneseNumerals_get, "JapaneseNumeralListViewProtocolMock - stub value for japaneseNumerals was not defined") }
		set {	invocations.append(.p_japaneseNumerals_set(.value(newValue))); __p_japaneseNumerals = newValue }
	}
	private var __p_japaneseNumerals: ([JapaneseNumeral])?

    public var isLoading: Bool {
		get {	invocations.append(.p_isLoading_get); return __p_isLoading ?? givenGetterValue(.p_isLoading_get, "JapaneseNumeralListViewProtocolMock - stub value for isLoading was not defined") }
		set {	invocations.append(.p_isLoading_set(.value(newValue))); __p_isLoading = newValue }
	}
	private var __p_isLoading: (Bool)?





    open func display(errorMessage: String) {
        addInvocation(.m_display__errorMessage_errorMessage(Parameter<String>.value(`errorMessage`)))
		let perform = methodPerformValue(.m_display__errorMessage_errorMessage(Parameter<String>.value(`errorMessage`))) as? (String) -> Void
		perform?(`errorMessage`)
    }


    fileprivate enum MethodType {
        case m_display__errorMessage_errorMessage(Parameter<String>)
        case p_output_get
		case p_output_set(Parameter<JapaneseNumeralListViewEventResponderProtocol?>)
        case p_japaneseNumerals_get
		case p_japaneseNumerals_set(Parameter<[JapaneseNumeral]>)
        case p_isLoading_get
		case p_isLoading_set(Parameter<Bool>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_display__errorMessage_errorMessage(let lhsErrormessage), .m_display__errorMessage_errorMessage(let rhsErrormessage)):
                guard Parameter.compare(lhs: lhsErrormessage, rhs: rhsErrormessage, with: matcher) else { return false } 
                return true 
            case (.p_output_get,.p_output_get): return true
			case (.p_output_set(let left),.p_output_set(let right)): return Parameter<JapaneseNumeralListViewEventResponderProtocol?>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_japaneseNumerals_get,.p_japaneseNumerals_get): return true
			case (.p_japaneseNumerals_set(let left),.p_japaneseNumerals_set(let right)): return Parameter<[JapaneseNumeral]>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_isLoading_get,.p_isLoading_get): return true
			case (.p_isLoading_set(let left),.p_isLoading_set(let right)): return Parameter<Bool>.compare(lhs: left, rhs: right, with: matcher)
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_display__errorMessage_errorMessage(p0): return p0.intValue
            case .p_output_get: return 0
			case .p_output_set(let newValue): return newValue.intValue
            case .p_japaneseNumerals_get: return 0
			case .p_japaneseNumerals_set(let newValue): return newValue.intValue
            case .p_isLoading_get: return 0
			case .p_isLoading_set(let newValue): return newValue.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func output(getter defaultValue: JapaneseNumeralListViewEventResponderProtocol?...) -> PropertyStub {
            return Given(method: .p_output_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func japaneseNumerals(getter defaultValue: [JapaneseNumeral]...) -> PropertyStub {
            return Given(method: .p_japaneseNumerals_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func isLoading(getter defaultValue: Bool...) -> PropertyStub {
            return Given(method: .p_isLoading_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func display(errorMessage: Parameter<String>) -> Verify { return Verify(method: .m_display__errorMessage_errorMessage(`errorMessage`))}
        public static var output: Verify { return Verify(method: .p_output_get) }
		public static func output(set newValue: Parameter<JapaneseNumeralListViewEventResponderProtocol?>) -> Verify { return Verify(method: .p_output_set(newValue)) }
        public static var japaneseNumerals: Verify { return Verify(method: .p_japaneseNumerals_get) }
		public static func japaneseNumerals(set newValue: Parameter<[JapaneseNumeral]>) -> Verify { return Verify(method: .p_japaneseNumerals_set(newValue)) }
        public static var isLoading: Verify { return Verify(method: .p_isLoading_get) }
		public static func isLoading(set newValue: Parameter<Bool>) -> Verify { return Verify(method: .p_isLoading_set(newValue)) }
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func display(errorMessage: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_display__errorMessage_errorMessage(`errorMessage`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - JapaneseNumeralService
open class JapaneseNumeralServiceMock: JapaneseNumeralService, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func getJapaneseNumerals(completion: @escaping JapaneseNumeralsCompletionBlock) {
        addInvocation(.m_getJapaneseNumerals__completion_completion(Parameter<JapaneseNumeralsCompletionBlock>.any))
		let perform = methodPerformValue(.m_getJapaneseNumerals__completion_completion(Parameter<JapaneseNumeralsCompletionBlock>.any)) as? (@escaping JapaneseNumeralsCompletionBlock) -> Void
		perform?(`completion`)
    }

    open func getJapaneseNumeral(arabicRepresentation: String, completion: @escaping JapaneseNumeralCompletionBlock) {
        addInvocation(.m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(Parameter<String>.value(`arabicRepresentation`), Parameter<JapaneseNumeralCompletionBlock>.any))
		let perform = methodPerformValue(.m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(Parameter<String>.value(`arabicRepresentation`), Parameter<JapaneseNumeralCompletionBlock>.any)) as? (String, @escaping JapaneseNumeralCompletionBlock) -> Void
		perform?(`arabicRepresentation`, `completion`)
    }


    fileprivate enum MethodType {
        case m_getJapaneseNumerals__completion_completion(Parameter<JapaneseNumeralsCompletionBlock>)
        case m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(Parameter<String>, Parameter<JapaneseNumeralCompletionBlock>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_getJapaneseNumerals__completion_completion(let lhsCompletion), .m_getJapaneseNumerals__completion_completion(let rhsCompletion)):
                guard Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher) else { return false } 
                return true 
            case (.m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(let lhsArabicrepresentation, let lhsCompletion), .m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(let rhsArabicrepresentation, let rhsCompletion)):
                guard Parameter.compare(lhs: lhsArabicrepresentation, rhs: rhsArabicrepresentation, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_getJapaneseNumerals__completion_completion(p0): return p0.intValue
            case let .m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(p0, p1): return p0.intValue + p1.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func getJapaneseNumerals(completion: Parameter<JapaneseNumeralsCompletionBlock>) -> Verify { return Verify(method: .m_getJapaneseNumerals__completion_completion(`completion`))}
        public static func getJapaneseNumeral(arabicRepresentation: Parameter<String>, completion: Parameter<JapaneseNumeralCompletionBlock>) -> Verify { return Verify(method: .m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(`arabicRepresentation`, `completion`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func getJapaneseNumerals(completion: Parameter<JapaneseNumeralsCompletionBlock>, perform: @escaping (@escaping JapaneseNumeralsCompletionBlock) -> Void) -> Perform {
            return Perform(method: .m_getJapaneseNumerals__completion_completion(`completion`), performs: perform)
        }
        public static func getJapaneseNumeral(arabicRepresentation: Parameter<String>, completion: Parameter<JapaneseNumeralCompletionBlock>, perform: @escaping (String, @escaping JapaneseNumeralCompletionBlock) -> Void) -> Perform {
            return Perform(method: .m_getJapaneseNumeral__arabicRepresentation_arabicRepresentationcompletion_completion(`arabicRepresentation`, `completion`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

