import ProjectDescription

private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "A template for a new feature module",
    attributes: [
        nameAttribute
    ],
    items: [
        .file(
            path: "Projects/Feature/\(nameAttribute)Feature/Project.swift",
            templatePath: "Project.stencil"
        ),
        .string(
            path: "Projects/Feature/\(nameAttribute)Feature/Interface/\(nameAttribute).swift",
            contents: "// made by tuist"
        ),
        .string(
            path: "Projects/Feature/\(nameAttribute)Feature/Sources/\(nameAttribute).swift",
            contents: "// made by tuist"
        ),
        .string(
            path: "Projects/Feature/\(nameAttribute)Feature/Example/\(nameAttribute).swift",
            contents: "// made by tuist"
        ),
        .string(
            path: "Projects/Feature/\(nameAttribute)Feature/Tests/\(nameAttribute).swift",
            contents: "// made by tuist"
        ),
        .string(
            path: "Projects/Feature/\(nameAttribute)Feature/Testing/\(nameAttribute).swift",
            contents: "// made by tuist"
        )
    ]
)
