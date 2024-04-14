public enum ModulePaths {
    case app(App)
    case feature(Feature, MicroModule.MicroFeatureModule)
    case domain(Domain, MicroModule.MicroDomainMudule)
    case shared(Shared)
    case userInterface(UserInterface)
}

public extension ModulePaths {
    
    enum App: String, CaseIterable {
        case App
    }
    
    enum Feature: String, CaseIterable {
        case Base
        case Example
    }
    
    enum Domain: String, CaseIterable {
        case Base
        case Example
    }
    
    enum Shared: String, CaseIterable {
        case GlobalThirdPartyLibrary
    }
    
    enum UserInterface: String, CaseIterable {
        case DesignSystem
    }
}
