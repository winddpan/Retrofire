/*
 @GET("group/{id}/users")
 func groupList(@Path("id") groupId: Int) async -> [User]

 @GET("group/{id}/users")
 func groupList(@Path("id") groupId: Int, @Query("sort") sort: String) async -> [User]

 @GET("group/{id}/users")
 func groupList(@Path("id") groupId: Int, @Query() options: [String: String]) async -> [User]

 @POST("users/new")
 func createUser(@Query() user: User) -> User

 @FormUrlEncoded
 @POST("user/edit")
 func updateUser(@Query("first_name") first: String, @Query("last_name") last: String) async -> User

 @Multipart
 @PUT("user/photo")
 func updateUser(@Query("photo") photo: RequestBody, @Query("description") description: RequestBody) async -> User

 @Header("Cache-Control: max-age=640000")
 @GET("widget/list")
 func widgetList() async -> [Widget]

 @Header([
     "Accept: application/vnd.github.v3.full+json",
     "User-Agent: Retrofit-Sample-App"
 ])
 @GET("users/{username}")
 func getUser(@Path("username") username: String) async -> User

 @GET("user")
 func getUser(@Header("Authorization") authorization: String) async -> User

 @GET("user")
 func getUser(@Header() headers: [String: String]) async -> User
 */

@freestanding(declaration, names: arbitrary)
public macro Retrofire(_ declare: RetrofireDeclare) = #externalMacro(module: "RetrofireMacros", type: "Retrofire")

// @attached(member)
// public macro Query(_ key: String, _ value: Any) = #externalMacro(module: "RetrofireMacros", type: "Query")
