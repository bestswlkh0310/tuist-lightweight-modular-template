import ProjectDescription

private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "A template for a new domain module",
    attributes: [
        nameAttribute
    ],
    items: [
        .file(
            path: "Projects/Domain/\(nameAttribute)Domain/Project.swift",
            templatePath: "Project.stencil"
        ),
        .string(
            path: "Projects/Domain/\(nameAttribute)Domain/Interface/\(nameAttribute).swift",
            contents: "// made by tuist"
        ),
        .string(
            path: "Projects/Domain/\(nameAttribute)Domain/Sources/\(nameAttribute).swift",
            contents: "// made by tuist"
        ),
        .string(
            path: "Projects/Domain/\(nameAttribute)Domain/Tests/\(nameAttribute).swift",
            contents: "// made by tuist"
        ),
        .string(
            path: "Projects/Domain/\(nameAttribute)Domain/Testing/\(nameAttribute).swift",
            contents: "// made by tuist"
        )
    ]
)
