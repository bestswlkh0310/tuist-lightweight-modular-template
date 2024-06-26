import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeFeature(
    target: .Base,
    targets: [
        .feature(
            target: .Base,
            type: .Interface,
            dependencies: [
                .shared(target: .GlobalThirdPartyLibrary)
            ]
        ),
        .feature(
            target: .Base,
            type: .Feature,
            dependencies: [
                .feature(target: .Base, type: .Interface)
            ]
        )
    ]
)
