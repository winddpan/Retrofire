import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct RetrofirePlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        Retrofire.self,
        Query.self,
    ]
}
