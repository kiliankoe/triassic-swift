import PackageDescription

let package = Package(
    name: "Triassic",
    dependencies: [
      .Package(url: "https://github.com/tadija/AEXML.git", majorVersion: 4)
    ]
)
