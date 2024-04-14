import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeFeature(
    target: .Example,
    targets: [
        .feature(
            target: .Example,
            type: .Interface,
            dependencies: [
                .feature(target: .Base, type: .Interface)
            ]
        ),
        .feature(
            target: .Example,
            type: .Feature,
            dependencies: [
                .feature(target: .Example, type: .Interface)
            ]
        ),
        .feature(
            target: .Example,
            type: .Example,
            dependencies: [
                .feature(target: .Example, type: .Feature)
            ]
        ),
        .feature(
            target: .Example,
            type: .Testing,
            dependencies: [
                .feature(target: .Example, type: .Feature)
            ]
        ),
        .feature(
            target: .Example,
            type: .Tests,
            dependencies: [
                .feature(target: .Example, type: .Testing)
            ]
        )
    ]
)
