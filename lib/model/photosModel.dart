class PhotosModel {
  String imgSrc;
  String PhotoName;

  PhotosModel({required this.PhotoName, required this.imgSrc});

  static fromApi2App(Map<String, dynamic> photoMap) {
    return PhotosModel(
        PhotoName: photoMap["photographer"],
        imgSrc: (photoMap["src"])["portrait"]);
  }
}
