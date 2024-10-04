
class newsPostModel {
  final String? newsImg ;
  final String newsTitle ;
  final String? newsDescription;
  newsPostModel({required this.newsImg,required  this.newsTitle,required this.newsDescription});

 factory newsPostModel.fromJson( json){
 return newsPostModel(
     newsImg: json['urlToImage'],
     newsTitle: json['title'],
     newsDescription: json['description'].toString());


  }

}