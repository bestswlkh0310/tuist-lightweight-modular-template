import ProjectDescription

public extension TargetDependency {
    static func feature(
        target: ModulePaths.Feature,
        type: MicroModule.MicroFeatureModule
    ) -> TargetDependency {
        .project(target: "\(target.rawValue)\(type.rawValue)",
                 path: .relativeToFeature(target.rawValue))
    }
    
    static func domain(
        target: ModulePaths.Domain,
        type: MicroModule.MicroDomainMudule
    ) -> TargetDependency {
        .project(target: "\(target.rawValue)\(type.rawValue)",
                 path: .relativeToDomain(target.rawValue))
    }
    
    static func userInterface(
        target: ModulePaths.UserInterface
    ) -> TargetDependency {
        .project(target: target.rawValue,
                 path: .relativeToUserInterface(target.rawValue))
    }
    
    static func shared(
        target: ModulePaths.Shared
    ) -> TargetDependency {
        .project(target: target.rawValue,
                 path: .relativeToShared(target.rawValue))
    }
}
