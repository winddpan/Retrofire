import SwiftSyntax
import SwiftSyntaxMacros

public struct Retrofire: DeclarationMacro {
    public static func expansion(of node: some SwiftSyntax.FreestandingMacroExpansionSyntax, in context: some SwiftSyntaxMacros.MacroExpansionContext) throws -> [SwiftSyntax.DeclSyntax] {
        guard let argument = node.argumentList.first?.expression,
              let segments = argument.as(StringLiteralExprSyntax.self)?.segments,
              segments.count == 1,
              case let .stringSegment(literalSegment)? = segments.first
        else {
            throw ASTError("\(Self.self) requires a static string literal")
        }

        let code: DeclSyntax = """
        static func \(raw: literalSegment)() {
        /* \(raw: node.description) */
        }
        """
        return [code]
    }
}
