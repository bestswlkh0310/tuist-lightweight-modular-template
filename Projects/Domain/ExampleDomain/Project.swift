import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeDomain(
    target: .Example,
    targets: [
        .domain(
            target: .Example,
            type: .Interface,
            dependencies: [
                .domain(target: .Base, type: .Interface)
            ]
        ),
        .domain(
            target: .Example,
            type: .Domain,
            dependencies: [
                .domain(target: .Example, type: .Interface)
            ]
        ),
        .domain(
            target: .Example,
            type: .Testing,
            dependencies: [
                .domain(target: .Example, type: .Domain)
            ]
        ),
        .domain(
            target: .Example,
            type: .Tests,
            dependencies: [
                .domain(target: .Example, type: .Testing)
            ]
        )
    ]
)
