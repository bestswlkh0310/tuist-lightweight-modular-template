import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeDomain(
    target: .Base,
    targets: [
        .domain(
            target: .Base,
            type: .Interface,
            dependencies: [
                .shared(target: .GlobalThirdPartyLibrary)
            ]
        ),
        .domain(
            target: .Base,
            type: .Domain,
            dependencies: [
                .domain(target: .Base, type: .Interface),
            ]
        )
    ]
)
