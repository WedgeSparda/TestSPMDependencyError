import ComposableArchitecture

public enum FooDependencyKey: DependencyKey {
    public static let liveValue = true
    public static let testValue = false
    public static var previewValue = false
}

public extension DependencyValues {
    var fooDependency: Bool {
        get { self[FooDependencyKey.self] }
        set { self[FooDependencyKey.self] = newValue }
    }
}

public protocol FooProtocol {
    func foo() -> String
}

public class FooImplementation: FooProtocol {
    
    @Dependency(\.fooDependency) var fooDependency
    
    public init() {}
    
    public func foo() -> String {
        if fooDependency {
            return "FOO"
        } else {
            return "TEST FOO"
        }
    }
}
