# Retrofire
Alamofire + Retrofit

# Goal
(API Design Reference)[https://square.github.io/retrofit/#restadapter-configuration]

```
@GET("group/{id}/users")
func groupList(@Path("id") groupId: Int) async -> [User]

@GET("group/{id}/users")
func groupList(@Path("id") groupId: Int, @Query("sort") sort: String) async -> [User]

@GET("group/{id}/users")
func groupList(@Path("id") groupId: Int, @Query options: [String: String]) async -> [User]

@POST("users/new")
func createUser(@Body user: User) -> User

@FormUrlEncoded
@POST("user/edit")
func updateUser(@Field("first_name") first: String, @Field("last_name") last: String) async -> User

@Multipart
@PUT("user/photo")
func updateUser(@Part("photo") photo: RequestBody, @Part("description") description: RequestBody) async -> User

@Headers("Cache-Control: max-age=640000")
@GET("widget/list")
func widgetList() async -> [Widget]

@Headers([
    "Accept: application/vnd.github.v3.full+json",
    "User-Agent: Retrofit-Sample-App"
])
@GET("users/{username}")
func getUser(@Path("username") username: String) async -> User

@GET("user")
func getUser(@Header("Authorization") authorization: String) async -> User

@GET("user")
func getUser(@HeaderMap headers: [String: String]) async -> User
```
