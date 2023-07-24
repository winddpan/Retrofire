import Foundation

public struct ASTError: Error, CustomStringConvertible {
    public let description: String

    init(_ description: String) {
        self.description = description
    }
}
