import Retrofire

struct API {
//    @Query("id", 123)
//    #GET("group/{id}/users")
    #Retrofire(RetrofireDeclare(method: .POST, name: "groupList", path: "group/{id}/users"))
}

// @GET("group/{id}/users")
// func groupList() async -> [String] {
//    return []
// }

// class Tester {
//    func run() {
//        API.groupList()
//    }
// }
