import ComposableArchitecture

enum BarDependencyKey: DependencyKey {
    static let liveValue = true
    static let testValue = false
    static var previewValue = false
}

extension DependencyValues {
    var barDependency: Bool {
        get { self[BarDependencyKey.self] }
        set { self[BarDependencyKey.self] = newValue }
    }
}

public class Bar {

    @Dependency(\.barDependency) var barDependency
    
    public init() {}
    
    public func bar() -> String {
        if barDependency {
            return "BAR"
        } else {
            return "TEST BAR"
        }
    }
}
