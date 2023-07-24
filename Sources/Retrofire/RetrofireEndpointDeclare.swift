import Foundation

public struct RetrofireDeclare {
    public enum Method: String {
        case GET
        case POST
        case DELETE
        case PUT
        case PATCH
    }

    public let method: Method
    public let name: String?
    public let path: String

    public init(method: Method, name: String?, path: String) {
        self.method = method
        self.name = name
        self.path = path
    }
}
