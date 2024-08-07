// To parse this JSON data, do
//
//     final getProductsModel = getProductsModelFromJson(jsonString);

import 'dart:convert';

GetProductsModel getProductsModelFromJson(String str) =>
    GetProductsModel.fromJson(json.decode(str));

String getProductsModelToJson(GetProductsModel data) =>
    json.encode(data.toJson());

class GetProductsModel {
  int page;
  int size;
  int total;
  dynamic debug;
  dynamic previousPage;
  dynamic nextPage;
  List<Item> items;

  GetProductsModel({
    required this.page,
    required this.size,
    required this.total,
    required this.debug,
    required this.previousPage,
    required this.nextPage,
    required this.items,
  });

  factory GetProductsModel.fromJson(Map<String, dynamic> json) =>
      GetProductsModel(
        page: json["page"],
        size: json["size"],
        total: json["total"],
        debug: json["debug"],
        previousPage: json["previous_page"],
        nextPage: json["next_page"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "size": size,
        "total": total,
        "debug": debug,
        "previous_page": previousPage,
        "next_page": nextPage,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };

  @override
  String toString() {
    return 'GetProductsModel(page: $page, size: $size, total: $total, debug: $debug, previousPage: $previousPage, nextPage: $nextPage, items: $items)';
  }
}

class Item {
  String name;
  dynamic description;
  String uniqueId;
  String urlSlug;
  bool isAvailable;
  bool isService;
  dynamic previousUrlSlugs;
  bool unavailable;
  dynamic unavailableStart;
  dynamic unavailableEnd;
  String id;
  dynamic parentProductId;
  dynamic parent;
  String organizationId;
  dynamic stockId;
  List<dynamic> productImage;
  List<dynamic> categories;
  DateTime dateCreated;
  DateTime lastUpdated;
  String userId;
  List<Photo> photos;
  dynamic prices;
  dynamic stocks;
  List<CurrentPrice> currentPrice;
  bool isDeleted;
  dynamic availableQuantity;
  dynamic sellingPrice;
  dynamic discountedPrice;
  dynamic buyingPrice;
  dynamic extraInfos;
  dynamic featuredReviews;
  List<dynamic> unavailability;

  Item({
    required this.name,
    required this.description,
    required this.uniqueId,
    required this.urlSlug,
    required this.isAvailable,
    required this.isService,
    required this.previousUrlSlugs,
    required this.unavailable,
    required this.unavailableStart,
    required this.unavailableEnd,
    required this.id,
    required this.parentProductId,
    required this.parent,
    required this.organizationId,
    required this.stockId,
    required this.productImage,
    required this.categories,
    required this.dateCreated,
    required this.lastUpdated,
    required this.userId,
    required this.photos,
    required this.prices,
    required this.stocks,
    required this.currentPrice,
    required this.isDeleted,
    required this.availableQuantity,
    required this.sellingPrice,
    required this.discountedPrice,
    required this.buyingPrice,
    required this.extraInfos,
    required this.featuredReviews,
    required this.unavailability,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        description: json["description"],
        uniqueId: json["unique_id"],
        urlSlug: json["url_slug"],
        isAvailable: json["is_available"],
        isService: json["is_service"],
        previousUrlSlugs: json["previous_url_slugs"],
        unavailable: json["unavailable"],
        unavailableStart: json["unavailable_start"],
        unavailableEnd: json["unavailable_end"],
        id: json["id"],
        parentProductId: json["parent_product_id"],
        parent: json["parent"],
        organizationId: json["organization_id"],
        stockId: json["stock_id"],
        productImage: List<dynamic>.from(json["product_image"].map((x) => x)),
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        dateCreated: DateTime.parse(json["date_created"]),
        lastUpdated: DateTime.parse(json["last_updated"]),
        userId: json["user_id"],
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
        prices: json["prices"],
        stocks: json["stocks"],
        currentPrice: List<CurrentPrice>.from(
            json["current_price"].map((x) => CurrentPrice.fromJson(x))),
        isDeleted: json["is_deleted"],
        availableQuantity: json["available_quantity"],
        sellingPrice: json["selling_price"],
        discountedPrice: json["discounted_price"],
        buyingPrice: json["buying_price"],
        extraInfos: json["extra_infos"],
        featuredReviews: json["featured_reviews"],
        unavailability:
            List<dynamic>.from(json["unavailability"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "unique_id": uniqueId,
        "url_slug": urlSlug,
        "is_available": isAvailable,
        "is_service": isService,
        "previous_url_slugs": previousUrlSlugs,
        "unavailable": unavailable,
        "unavailable_start": unavailableStart,
        "unavailable_end": unavailableEnd,
        "id": id,
        "parent_product_id": parentProductId,
        "parent": parent,
        "organization_id": organizationId,
        "stock_id": stockId,
        "product_image": List<dynamic>.from(productImage.map((x) => x)),
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "date_created": dateCreated.toIso8601String(),
        "last_updated": lastUpdated.toIso8601String(),
        "user_id": userId,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
        "prices": prices,
        "stocks": stocks,
        "current_price":
            List<dynamic>.from(currentPrice.map((x) => x.toJson())),
        "is_deleted": isDeleted,
        "available_quantity": availableQuantity,
        "selling_price": sellingPrice,
        "discounted_price": discountedPrice,
        "buying_price": buyingPrice,
        "extra_infos": extraInfos,
        "featured_reviews": featuredReviews,
        "unavailability": List<dynamic>.from(unavailability.map((x) => x)),
      };

  @override
  String toString() {
    return 'Item(name: $name, description: $description, uniqueId: $uniqueId, urlSlug: $urlSlug, isAvailable: $isAvailable, isService: $isService, previousUrlSlugs: $previousUrlSlugs, unavailable: $unavailable, unavailableStart: $unavailableStart, unavailableEnd: $unavailableEnd, id: $id, parentProductId: $parentProductId, parent: $parent, organizationId: $organizationId, stockId: $stockId, productImage: $productImage, categories: $categories, dateCreated: $dateCreated, lastUpdated: $lastUpdated, userId: $userId, photos: $photos, prices: $prices, stocks: $stocks, currentPrice: $currentPrice, isDeleted: $isDeleted, availableQuantity: $availableQuantity, sellingPrice: $sellingPrice, discountedPrice: $discountedPrice, buyingPrice: $buyingPrice, extraInfos: $extraInfos, featuredReviews: $featuredReviews, unavailability: $unavailability)';
  }
}

class CurrentPrice {
  List<dynamic> ngn;

  CurrentPrice({
    required this.ngn,
  });

  factory CurrentPrice.fromJson(Map<String, dynamic> json) => CurrentPrice(
        ngn: List<dynamic>.from(json["NGN"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "NGN": List<dynamic>.from(ngn.map((x) => x)),
      };
  @override
  String toString() {
    return 'CurrentPrice(ngn: $ngn)';
  }
}

class Photo {
  String modelName;
  String modelId;
  String organizationId;
  String filename;
  String url;
  bool isFeatured;
  bool saveAsJpg;
  bool isPublic;
  bool fileRename;
  int position;

  Photo({
    required this.modelName,
    required this.modelId,
    required this.organizationId,
    required this.filename,
    required this.url,
    required this.isFeatured,
    required this.saveAsJpg,
    required this.isPublic,
    required this.fileRename,
    required this.position,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        modelName: json["model_name"],
        modelId: json["model_id"],
        organizationId: json["organization_id"],
        filename: json["filename"],
        url: json["url"],
        isFeatured: json["is_featured"],
        saveAsJpg: json["save_as_jpg"],
        isPublic: json["is_public"],
        fileRename: json["file_rename"],
        position: json["position"],
      );

  Map<String, dynamic> toJson() => {
        "model_name": modelName,
        "model_id": modelId,
        "organization_id": organizationId,
        "filename": filename,
        "url": url,
        "is_featured": isFeatured,
        "save_as_jpg": saveAsJpg,
        "is_public": isPublic,
        "file_rename": fileRename,
        "position": position,
      };

  @override
  String toString() {
    return 'Photo(modelName: $modelName, modelId: $modelId, organizationId: $organizationId, filename: $filename, url: $url, isFeatured: $isFeatured, saveAsJpg: $saveAsJpg, isPublic: $isPublic, fileRename: $fileRename, position: $position)';
  }
}
