class PixabayMediaModel {
  final int id;
  final String pageURL;
  final String type;
  final String tags;
  final String previewURL;
  final int previewWidth;
  final int previewHeight;
  final String webformatURL;
  final int webformatWidth;
  final int webformatHeight;
  final String largeImageURL;
  final String fullHDURL;
  final String imageURL;
  final int imageWidth;
  final int imageHeight;
  final int imageSize;
  final int views;
  final int downloads;
  final int favorites;
  final int likes;
  final int comments;
  final int user_id;
  final String user;
  final String userImageURL;

  PixabayMediaModel({
    this.id,
    this.pageURL,
    this.type,
    this.tags,
    this.previewURL,
    this.previewWidth,
    this.previewHeight,
    this.webformatURL,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageURL,
    this.fullHDURL,
    this.imageURL,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.favorites,
    this.likes,
    this.comments,
    this.user_id,
    this.user,
    this.userImageURL,
  });

  factory PixabayMediaModel.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }
    final int id = data['id'];
    final String pageURL = data['pageURL'];
    final String type = data['type'];
    final String tags = data['tags'];
    final String previewURL = data['previewURL'];
    final int previewWidth = data['previewWidth'];
    final int previewHeight = data['previewHeight'];
    final String webformatURL = data['webformatURL'];
    final int webformatWidth = data['webformatWidth'];
    final int webformatHeight = data['webformatHeight'];
    final String largeImageURL = data['largeImageURL'];
    final String fullHDURL = data['fullHDURL'];
    final String imageURL = data['imageURL'];
    final int imageWidth = data['imageWidth'];
    final int imageHeight = data['imageHeight'];
    final int imageSize = data['imageSize'];
    final int views = data['views'];
    final int downloads = data['downloads'];
    final int favorites = data['favorites'];
    final int likes = data['likes'];
    final int comments = data['comments'];
    final int user_id = data['user_id'];
    final String user = data['user'];
    final String userImageURL = data['userImageURL'];

    return PixabayMediaModel(
      id: id,
      pageURL: pageURL,
      type: type,
      tags: tags,
      previewURL: previewURL,
      previewWidth: previewWidth,
      previewHeight: previewHeight,
      webformatURL: webformatURL,
      webformatWidth: webformatWidth,
      webformatHeight: webformatHeight,
      largeImageURL: largeImageURL,
      fullHDURL: fullHDURL,
      imageURL: imageURL,
      imageWidth: imageWidth,
      imageHeight: imageHeight,
      imageSize: imageSize,
      views: views,
      downloads: downloads,
      favorites: favorites,
      likes: likes,
      comments: comments,
      user_id: user_id,
      user: user,
      userImageURL: userImageURL,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'pageURL': pageURL,
      'type': type,
      'tags': tags,
      'previewURL': previewURL,
      'previewWidth': previewWidth,
      'previewHeight': previewHeight,
      'webformatURL': webformatURL,
      'webformatWidth': webformatWidth,
      'webformatHeight': webformatHeight,
      'largeImageURL': largeImageURL,
      'fullHDURL': fullHDURL,
      'imageURL': imageURL,
      'imageWidth': imageWidth,
      'imageHeight': imageHeight,
      'imageSize': imageSize,
      'views': views,
      'downloads': downloads,
      'favorites': favorites,
      'likes': likes,
      'comments': comments,
      'user_id': user_id,
      'user': user,
      'userImageURL': userImageURL,
    };
  }
}
