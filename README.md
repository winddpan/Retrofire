# Retrofire
Alamofire + Retrofit

# Goal
(design reference)[https://square.github.io/retrofit/#restadapter-configuration]

```
@GET("group/{id}/users")
[User] groupList(@Path("id") groupId: Int)

@GET("group/{id}/users")
[User] groupList(@Path("id") groupId: Int, @Query("sort") sort: String)

@GET("group/{id}/users")
[User] groupList(@Path("id") groupId: Int, @Query options: [String: String])

@POST("users/new")
User createUser(@Body user: User)

@FormUrlEncoded
@POST("user/edit")
User updateUser(@Field("first_name") first: String, @Field("last_name") last: String)

@Multipart
@PUT("user/photo")
User updateUser(@Part("photo") photo: RequestBody, @Part("description") description: RequestBody)

@Headers("Cache-Control: max-age=640000")
@GET("widget/list")
[Widget] widgetList()

@Headers({
    "Accept: application/vnd.github.v3.full+json",
    "User-Agent: Retrofit-Sample-App"
})
@GET("users/{username}")
User getUser(@Path("username") username: String)

@GET("user")
User getUser(@Header("Authorization") authorization: String)

@GET("user")
User getUser(@HeaderMap headers: [String: String])
```
