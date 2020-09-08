class UnsplashImage {
  final String id;
  final String imageUrl;
  final String thumbUrl;
  final String downloadLink;
  final String linkbackLink;
  final String photographer;
  UnsplashImage({this.id, this.imageUrl, this.thumbUrl, this.downloadLink, this.linkbackLink, this.photographer});

  // TODO: build in safety measures should values come back null or empty
  // PROTIP: use json_serializable package to make this less tedious
  static UnsplashImage imageFromJson(Map<String, dynamic> json) {
    return UnsplashImage(
        id: json['id'],
        imageUrl: json['urls']['regular'],
        thumbUrl: json['urls']['thumb'],
        downloadLink: json['links']['download'],
        linkbackLink: json['links']['html'],
        photographer: json['user']['name']);
  }

  static List<UnsplashImage> imageListFromJson(List<dynamic> json) {
    List<UnsplashImage> images = [];
    for (var i = 0; i < json.length; i++) {
      images.add(imageFromJson(json[i]));
    }
    return images;
  }

  // The Object class is the base class for all Dart objects. It is the root of the Dart class hierarchy.
  // Therefore every other Dart class is a subclass of Object including our UnsplashImage class.
  // That means we can override it's methods such as toString() to make printing out our UnsplashImage objects more useful.
  // More info: https://api.dart.dev/stable/2.9.1/dart-core/Object-class.html

  @override
  String toString() => 'Id: $id, Photographer: $photographer';
}

// SAMPLE RESPONSE FROM UNSPLASH DOCS FOR
// GET /search/photos

// {
//   "total": 133,
//   "total_pages": 7,
//   "results": [
//     {
//       "id": "eOLpJytrbsQ",
//       "created_at": "2014-11-18T14:35:36-05:00",
//       "width": 4000,
//       "height": 3000,
//       "color": "#A7A2A1",
//       "likes": 286,
//       "liked_by_user": false,
//       "description": "A man drinking a coffee.",
//       "user": {
//         "id": "Ul0QVz12Goo",
//         "username": "ugmonk",
//         "name": "Jeff Sheldon",
//         "first_name": "Jeff",
//         "last_name": "Sheldon",
//         "instagram_username": "instantgrammer",
//         "twitter_username": "ugmonk",
//         "portfolio_url": "http://ugmonk.com/",
//         "profile_image": {
//           "small": "https://images.unsplash.com/profile-1441298803695-accd94000cac?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32&s=7cfe3b93750cb0c93e2f7caec08b5a41",
//           "medium": "https://images.unsplash.com/profile-1441298803695-accd94000cac?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64&s=5a9dc749c43ce5bd60870b129a40902f",
//           "large": "https://images.unsplash.com/profile-1441298803695-accd94000cac?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128&s=32085a077889586df88bfbe406692202"
//         },
//         "links": {
//           "self": "https://api.unsplash.com/users/ugmonk",
//           "html": "http://unsplash.com/@ugmonk",
//           "photos": "https://api.unsplash.com/users/ugmonk/photos",
//           "likes": "https://api.unsplash.com/users/ugmonk/likes"
//         }
//       },
//       "current_user_collections": [],
//       "urls": {
//         "raw": "https://images.unsplash.com/photo-1416339306562-f3d12fefd36f",
//         "full": "https://hd.unsplash.com/photo-1416339306562-f3d12fefd36f",
//         "regular": "https://images.unsplash.com/photo-1416339306562-f3d12fefd36f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&s=92f3e02f63678acc8416d044e189f515",
//         "small": "https://images.unsplash.com/photo-1416339306562-f3d12fefd36f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&s=263af33585f9d32af39d165b000845eb",
//         "thumb": "https://images.unsplash.com/photo-1416339306562-f3d12fefd36f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&s=8aae34cf35df31a592f0bef16e6342ef"
//       },
//       "links": {
//         "self": "https://api.unsplash.com/photos/eOLpJytrbsQ",
//         "html": "http://unsplash.com/photos/eOLpJytrbsQ",
//         "download": "http://unsplash.com/photos/eOLpJytrbsQ/download"
//       }
//     },
//     // more photos ...
//   ]
// }
