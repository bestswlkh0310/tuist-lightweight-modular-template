//
//  Target+Example.swift
//  Test2Manifests
//
//  Created by dgsw8th71 on 3/26/24.
//

import ProjectDescription
import EnvironmentPlugin
import ScriptPlugin

public extension Target {
    
    static func app(
        target: ModulePaths.App,
        dependenceis: [TargetDependency] = [],
        infoPlist: InfoPlist
    ) -> Self {
        .makeTarget(
            name: target.rawValue,
            product: .app,
            bundleId: "\(env.organizationName).\(env.name).\(target.rawValue)",
            infoPlist: infoPlist,
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            scripts: [.swiftLint],
            dependencies: dependenceis
        )
    }
    
    static func feature(
        target: ModulePaths.Feature,
        type: MicroModule.MicroFeatureModule,
        dependencies: [TargetDependency]
    ) -> Self {
        
        let infoPlist: InfoPlist = type == .Example ? .extendingDefault(with: [
            "UIUserInterfaceStyle":"Light",
            "LSRequiresIPhoneOS":.boolean(true),
            "UIApplicationSceneManifest": [
                "UIApplicationSupportsMultipleScenes": .boolean(false)
            ],
            "UILaunchStoryboardName": .string("")
        ]) : .default
        
        return .makeTarget(
            name: "\(target.rawValue)\(type.rawValue)",
            product: type.product,
            bundleId: "\(env.organizationName).\(env.name).\(target.rawValue)\(type.rawValue)",
            infoPlist: infoPlist,
            sources: [type.sources],
            scripts: [.swiftLint],
            dependencies: dependencies
        )
    }
    
    static func domain(
        target: ModulePaths.Domain,
        type: MicroModule.MicroDomainMudule,
        dependencies: [TargetDependency]
    ) -> Self {
        .makeTarget(
            name: "\(target.rawValue)\(type.rawValue)",
            product: type.product,
            bundleId: "\(env.organizationName).\(env.name).\(target.rawValue)\(type.rawValue)",
            infoPlist: .default,
            sources: [type.source],
            scripts: [.swiftLint],
            dependencies: dependencies
        )
    }
    
    static func shared(
        target: ModulePaths.Shared,
        dependencies: [TargetDependency]
    ) -> Self {
        .makeTarget(
            name: target.rawValue,
            product: .framework,
            bundleId: "\(env.organizationName).\(env.name).\(target.rawValue)",
            infoPlist: .default,
            sources: ["Sources/**"],
            scripts: [.swiftLint],
            dependencies: dependencies
        )
    }
    
    static func userInterface(
        target: ModulePaths.UserInterface,
        type: MicroModule.MicroUserInterfaceModule,
        dependencies: [TargetDependency] = []
    ) -> Self {
        
        let infoPlist: InfoPlist = type == .Example ? .extendingDefault(with: [
            "UIUserInterfaceStyle":"Light",
            "LSRequiresIPhoneOS":.boolean(true),
            "UIApplicationSceneManifest": [
                "UIApplicationSupportsMultipleScenes": .boolean(false)
            ],
            "UILaunchStoryboardName": .string("")
        ]) : .default
        
        let resources: ResourceFileElements? = type == .UserInterface ? ["Resources/**"] : nil
        
        return .makeTarget(
            name: "\(target.rawValue)\(type.rawValue)",
            product: type.product,
            bundleId: "\(env.organizationName).\(env.name).\(target.rawValue)\(type.rawValue)",
            infoPlist: infoPlist,
            sources: [type.source],
            resources: resources,
            scripts: [.swiftLint],
            dependencies: dependencies
        )
    }
}
