import ProjectDescription

public enum MicroModule {}

public extension MicroModule {
    enum MicroFeatureModule: String {
        case Feature
        case Interface
        case Tests
        case Testing
        case Example
        
        var product: Product {
            switch self {
            case .Feature: .staticLibrary
            case .Interface: .framework
            case .Tests: .unitTests
            case .Testing: .framework
            case .Example: .app
            }
        }
        
        var sources: SourceFilesList.ArrayLiteralElement {
            switch self {
            case .Feature: "Sources/**"
            case .Interface: "Interface/**"
            case .Tests: "Tests/**"
            case .Testing: "Testing/**"
            case .Example: "Example/**"
            }
        }
    }
    
    enum MicroDomainMudule: String {
        case Domain
        case Interface
        case Tests
        case Testing
        
        var product: Product {
            switch self {
            case .Domain: .staticLibrary
            case .Interface: .framework
            case .Tests: .unitTests
            case .Testing: .framework
            }
        }
        
        var source: SourceFilesList.ArrayLiteralElement {
            switch self {
            case .Domain: "Sources/**"
            case .Interface: "Interface/**"
            case .Tests: "Tests/**"
            case .Testing: "Testing/**"
            }
        }
    }
    
    enum MicroUserInterfaceModule: String {
        case UserInterface = ""
        case Tests
        case Example
        
        var product: Product {
            switch self {
            case .UserInterface: .staticFramework
            case .Tests: .unitTests
            case .Example: .app
            }
        }
        
        var source: SourceFilesList.ArrayLiteralElement {
            switch self {
            case .UserInterface: "Sources/**"
            case .Tests: "Tests/**"
            case .Example: "Example/**"
            }
        }
    }
}
