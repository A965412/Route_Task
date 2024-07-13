
class ProductResponseEntity {
  ProductResponseEntity({
      this.products, 
      this.total, 
      this.skip, 
      this.limit,});

  List<Products>? products;
  num? total;
  num? skip;
  num? limit;


}

/// id : 1
/// title : "Essence Mascara Lash Princess"
/// description : "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula."
/// category : "beauty"
/// price : 9.99
/// discountPercentage : 7.17
/// rating : 4.94
/// stock : 5
/// tags : ["beauty","mascara"]
/// brand : "Essence"
/// sku : "RCH45Q1A"
/// weight : 2
/// dimensions : {"width":23.17,"height":14.43,"depth":28.01}
/// warrantyInformation : "1 month warranty"
/// shippingInformation : "Ships in 1 month"
/// availabilityStatus : "Low Stock"
/// reviews : [{"rating":2,"comment":"Very unhappy with my purchase!","date":"2024-05-23T08:56:21.618Z","reviewerName":"John Doe","reviewerEmail":"john.doe@x.dummyjson.com"},{"rating":2,"comment":"Not as described!","date":"2024-05-23T08:56:21.618Z","reviewerName":"Nolan Gonzalez","reviewerEmail":"nolan.gonzalez@x.dummyjson.com"},{"rating":5,"comment":"Very satisfied!","date":"2024-05-23T08:56:21.618Z","reviewerName":"Scarlett Wright","reviewerEmail":"scarlett.wright@x.dummyjson.com"}]
/// returnPolicy : "30 days return policy"
/// minimumOrderQuantity : 24
/// meta : {"createdAt":"2024-05-23T08:56:21.618Z","updatedAt":"2024-05-23T08:56:21.618Z","barcode":"9164035109868","qrCode":"https://assets.dummyjson.com/public/qr-code.png"}
/// images : ["https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png"]
/// thumbnail : "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/thumbnail.png"

class Products {
  Products({
      this.id, 
      this.title, 
      this.description, 
      this.category, 
      this.price, 
      this.discountPercentage, 
      this.rating, 
      this.stock, 
      this.tags, 
      this.brand, 
      this.sku, 
      this.weight, 
      this.warrantyInformation,
      this.shippingInformation, 
      this.availabilityStatus, 
      this.reviews, 
      this.returnPolicy, 
      this.minimumOrderQuantity, 
      this.meta, 
      this.images, 
      this.thumbnail,});


  num? id;
  String? title;
  String? description;
  String? category;
  num? price;
  num? discountPercentage;
  num? rating;
  num? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  num? weight;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<Reviews>? reviews;
  String? returnPolicy;
  num? minimumOrderQuantity;
  Meta? meta;
  List<String>? images;
  String? thumbnail;



}

/// createdAt : "2024-05-23T08:56:21.618Z"
/// updatedAt : "2024-05-23T08:56:21.618Z"
/// barcode : "9164035109868"
/// qrCode : "https://assets.dummyjson.com/public/qr-code.png"

class Meta {
  Meta({
      this.createdAt, 
      this.updatedAt, 
      this.barcode, 
      this.qrCode,});

  String? createdAt;
  String? updatedAt;
  String? barcode;
  String? qrCode;


}

/// rating : 2
/// comment : "Very unhappy with my purchase!"
/// date : "2024-05-23T08:56:21.618Z"
/// reviewerName : "John Doe"
/// reviewerEmail : "john.doe@x.dummyjson.com"

class Reviews {
  Reviews({
      this.rating, 
      this.comment, 
      this.date, 
      this.reviewerName, 
      this.reviewerEmail,});


  num? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;



}

/// width : 23.17
/// height : 14.43
/// depth : 28.01



