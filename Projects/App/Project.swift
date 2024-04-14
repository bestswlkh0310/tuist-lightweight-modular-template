//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by dgsw8th71 on 1/4/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeApp(
    target: .App,
    targets: [
        .app(
            target: .App,
            dependenceis:
                ModulePaths.Feature.allCases.map {
                    TargetDependency.feature(
                        target: $0,
                        type: .Feature
                    )
                }
            + ModulePaths.Domain.allCases.map {
                TargetDependency.domain(
                    target: $0,
                    type: .Domain
                )
            },
            infoPlist: .file(path: "Support/Info.plist")
        )
    ]
)
