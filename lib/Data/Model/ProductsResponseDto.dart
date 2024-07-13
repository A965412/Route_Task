import 'package:routetask/Domain/Entity/ProductResponseEntity.dart';

class ProductsResponseDto extends ProductResponseEntity {
  ProductsResponseDto({
      super.products, 
      super.total, 
      super.skip, 
      super.limit,});

  ProductsResponseDto.fromJson(dynamic json) {
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(ProductsData.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

 

}

class ProductsData extends ProductsDataEntity {
  ProductsData({
      super.id, 
      super.title, 
      super.description, 
      super.category, 
      super.price, 
      super.discountPercentage, 
      super.rating, 
      super.stock, 
      super.tags, 
      super.brand, 
      super.sku, 
      super.weight, 
      super.warrantyInformation, 
      super.shippingInformation, 
      super.availabilityStatus, 
      super.reviews, 
      super.returnPolicy, 
      super.minimumOrderQuantity, 
      super.images, 
      super.thumbnail,});

  ProductsData.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    category = json['category'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    brand = json['brand'];
    sku = json['sku'];
    weight = json['weight'];
    warrantyInformation = json['warrantyInformation'];
    shippingInformation = json['shippingInformation'];
    availabilityStatus = json['availabilityStatus'];
    if (json['reviews'] != null) {
      reviews = [];
      json['reviews'].forEach((v) {
        reviews?.add(ReviewsDto.fromJson(v));
      });
    }
    returnPolicy = json['returnPolicy'];
    minimumOrderQuantity = json['minimumOrderQuantity'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
    thumbnail = json['thumbnail'];
  }


 
}





class ReviewsDto extends ReviewsEntity {
  ReviewsDto({
      this.rating, 
      this.comment, 
      this.date, 
      this.reviewerName, 
      this.reviewerEmail,});

  ReviewsDto.fromJson(dynamic json) {
    rating = json['rating'];
    comment = json['comment'];
    date = json['date'];
    reviewerName = json['reviewerName'];
    reviewerEmail = json['reviewerEmail'];
  }
  num? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rating'] = rating;
    map['comment'] = comment;
    map['date'] = date;
    map['reviewerName'] = reviewerName;
    map['reviewerEmail'] = reviewerEmail;
    return map;
  }

}


