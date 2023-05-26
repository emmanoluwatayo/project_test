class NewsMedia {
  String? title;
  String? link;
  List<dynamic>? keywords;
  List<dynamic>? creator;
  String? videoUrl;
  String? description;
  String? content;
  String? pubDate;
  String? imageUrl;
  String? sourceId;
  List<dynamic>? category;
  List<dynamic>? country;
  String? language;

  NewsMedia(
      {this.title,
      this.link,
      this.keywords,
      this.creator,
      this.videoUrl,
      this.description,
      this.content,
      this.pubDate,
      this.imageUrl,
      this.sourceId,
      this.category,
      this.country,
      this.language});

  NewsMedia.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    link = json['link'];
    keywords = json['keywords'];
    creator = json['creator'];
    videoUrl = json['video_url'];
    description = json['description'];
    content = json['content'];
    pubDate = json['pubDate'];
    imageUrl = json['image_url'] ;
    sourceId = json['source_id'];
    category = json['category'];
    country = json['country'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['link'] = this.link;
    data['keywords'] = this.keywords;
    data['creator'] = this.creator;
    data['video_url'] = this.videoUrl;
    data['description'] = this.description;
    data['content'] = this.content;
    data['pubDate'] = this.pubDate;
    data['image_url'] = this.imageUrl;
    data['source_id'] = this.sourceId;
    data['category'] = this.category;
    data['country'] = this.country;
    data['language'] = this.language;
    return data;
  }
}
