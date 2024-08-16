class HomeScreenModel {
  final int? statusCode;
  final bool? status;
  final String? message;
  final List<Data>? data;

  HomeScreenModel({
    this.statusCode,
    this.status,
    this.message,
    this.data,
  });

  HomeScreenModel.fromJson(Map<String, dynamic> json)
    : statusCode = json['status_code'] as int?,
      status = json['status'] as bool?,
      message = json['message'] as String?,
      data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'status_code' : statusCode,
    'status' : status,
    'message' : message,
    'data' : data?.map((e) => e.toJson()).toList()
  };
}

class Data {
  final Location? location;
  final String? id;
  final SellerId? sellerId;
  final List<Image>? image;
  final int? projectNumber;
  final List<String>? commoditySector;
  final bool? isPromoted;
  final bool? isAnswering;
  final bool? isAgentApproved;
  final bool? isOwnerApproved;
  final bool? isDummy;
  final bool? isBannerPromoted;
  final bool? isDeleted;
  final int? status;
  final String? createdAt;
  final String? address;
  final String? commodity;
  final String? companyName;
  final String? continent;
  final String? country;
  final String? description;
  final String? developmentStage;
  final String? intension;
  final String? name;
  final String? priceRange;
  final String? region;
  final String? signatureImage;
  final String? ownerSignatureImage;
  final bool? isEnquired;

  Data({
    this.location,
    this.id,
    this.sellerId,
    this.image,
    this.projectNumber,
    this.commoditySector,
    this.isPromoted,
    this.isAnswering,
    this.isAgentApproved,
    this.isOwnerApproved,
    this.isDummy,
    this.isBannerPromoted,
    this.isDeleted,
    this.status,
    this.createdAt,
    this.address,
    this.commodity,
    this.companyName,
    this.continent,
    this.country,
    this.description,
    this.developmentStage,
    this.intension,
    this.name,
    this.priceRange,
    this.region,
    this.signatureImage,
    this.ownerSignatureImage,
    this.isEnquired,
  });

  Data.fromJson(Map<String, dynamic> json)
    : location = (json['location'] as Map<String,dynamic>?) != null ? Location.fromJson(json['location'] as Map<String,dynamic>) : null,
      id = json['_id'] as String?,
      sellerId = (json['seller_id'] as Map<String,dynamic>?) != null ? SellerId.fromJson(json['seller_id'] as Map<String,dynamic>) : null,
      image = (json['image'] as List?)?.map((dynamic e) => Image.fromJson(e as Map<String,dynamic>)).toList(),
      projectNumber = json['project_number'] as int?,
      commoditySector = (json['commodity_sector'] as List?)?.map((dynamic e) => e as String).toList(),
      isPromoted = json['is_promoted'] as bool?,
      isAnswering = json['is_answering'] as bool?,
      isAgentApproved = json['is_agent_approved'] as bool?,
      isOwnerApproved = json['is_owner_approved'] as bool?,
      isDummy = json['is_dummy'] as bool?,
      isBannerPromoted = json['is_banner_promoted'] as bool?,
      isDeleted = json['is_deleted'] as bool?,
      status = json['status'] as int?,
      createdAt = json['created_at'] as String?,
      address = json['address'] as String?,
      commodity = json['commodity'] as String?,
      companyName = json['company_name'] as String?,
      continent = json['continent'] as String?,
      country = json['country'] as String?,
      description = json['description'] as String?,
      developmentStage = json['development_stage'] as String?,
      intension = json['intension'] as String?,
      name = json['name'] as String?,
      priceRange = json['price_range'] as String?,
      region = json['region'] as String?,
      signatureImage = json['signature_image'] as String?,
      ownerSignatureImage = json['owner_signature_image'] as String?,
      isEnquired = json['is_enquired'] as bool?;

  Map<String, dynamic> toJson() => {
    'location' : location?.toJson(),
    '_id' : id,
    'seller_id' : sellerId?.toJson(),
    'image' : image?.map((e) => e.toJson()).toList(),
    'project_number' : projectNumber,
    'commodity_sector' : commoditySector,
    'is_promoted' : isPromoted,
    'is_answering' : isAnswering,
    'is_agent_approved' : isAgentApproved,
    'is_owner_approved' : isOwnerApproved,
    'is_dummy' : isDummy,
    'is_banner_promoted' : isBannerPromoted,
    'is_deleted' : isDeleted,
    'status' : status,
    'created_at' : createdAt,
    'address' : address,
    'commodity' : commodity,
    'company_name' : companyName,
    'continent' : continent,
    'country' : country,
    'description' : description,
    'development_stage' : developmentStage,
    'intension' : intension,
    'name' : name,
    'price_range' : priceRange,
    'region' : region,
    'signature_image' : signatureImage,
    'owner_signature_image' : ownerSignatureImage,
    'is_enquired' : isEnquired
  };
}

class Location {
  final String? type;
  final List<double>? coordinates;

  Location({
    this.type,
    this.coordinates,
  });

  Location.fromJson(Map<String, dynamic> json)
    : type = json['type'] as String?,
      coordinates = (json['coordinates'] as List?)?.map((dynamic e) => e as double).toList();

  Map<String, dynamic> toJson() => {
    'type' : type,
    'coordinates' : coordinates
  };
}

class SellerId {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final bool? googleSignin;
  final bool? appleSignin;
  final bool? isSeller;
  final bool? isBroker;
  final List<dynamic>? liveProjectUrls;
  final List<dynamic>? soldProjectUrls;
  final bool? profileCompleted;
  final int? averageRating;
  final bool? emailVerified;
  final bool? emailNotification;
  final bool? savedSearchNotification;
  final int? status;
  final String? createdAt;
  final String? bio;
  final String? companyLogo;
  final String? companyName;
  final String? companyWebsite;
  final String? experience;
  final String? linkedin;
  final String? location;
  final String? position;
  final String? colourCode;
  final bool? isDeleted;
  final String? textColour;
  final bool? isDarkMode;
  final bool? isCompanyLogo;

  SellerId({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.googleSignin,
    this.appleSignin,
    this.isSeller,
    this.isBroker,
    this.liveProjectUrls,
    this.soldProjectUrls,
    this.profileCompleted,
    this.averageRating,
    this.emailVerified,
    this.emailNotification,
    this.savedSearchNotification,
    this.status,
    this.createdAt,
    this.bio,
    this.companyLogo,
    this.companyName,
    this.companyWebsite,
    this.experience,
    this.linkedin,
    this.location,
    this.position,
    this.colourCode,
    this.isDeleted,
    this.textColour,
    this.isDarkMode,
    this.isCompanyLogo,
  });

  SellerId.fromJson(Map<String, dynamic> json)
    : id = json['_id'] as String?,
      firstName = json['first_name'] as String?,
      lastName = json['last_name'] as String?,
      email = json['email'] as String?,
      password = json['password'] as String?,
      googleSignin = json['google_signin'] as bool?,
      appleSignin = json['apple_signin'] as bool?,
      isSeller = json['is_seller'] as bool?,
      isBroker = json['is_broker'] as bool?,
      liveProjectUrls = json['live_project_urls'] as List?,
      soldProjectUrls = json['sold_project_urls'] as List?,
      profileCompleted = json['profile_completed'] as bool?,
      averageRating = json['average_rating'] as int?,
      emailVerified = json['email_verified'] as bool?,
      emailNotification = json['email_notification'] as bool?,
      savedSearchNotification = json['saved_search_notification'] as bool?,
      status = json['status'] as int?,
      createdAt = json['created_at'] as String?,
      bio = json['bio'] as String?,
      companyLogo = json['company_logo'] as String?,
      companyName = json['company_name'] as String?,
      companyWebsite = json['company_website'] as String?,
      experience = json['experience'] as String?,
      linkedin = json['linkedin'] as String?,
      location = json['location'] as String?,
      position = json['position'] as String?,
      colourCode = json['colour_code'] as String?,
      isDeleted = json['is_deleted'] as bool?,
      textColour = json['text_colour'] as String?,
      isDarkMode = json['is_dark_mode'] as bool?,
      isCompanyLogo = json['is_company_logo'] as bool?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'first_name' : firstName,
    'last_name' : lastName,
    'email' : email,
    'password' : password,
    'google_signin' : googleSignin,
    'apple_signin' : appleSignin,
    'is_seller' : isSeller,
    'is_broker' : isBroker,
    'live_project_urls' : liveProjectUrls,
    'sold_project_urls' : soldProjectUrls,
    'profile_completed' : profileCompleted,
    'average_rating' : averageRating,
    'email_verified' : emailVerified,
    'email_notification' : emailNotification,
    'saved_search_notification' : savedSearchNotification,
    'status' : status,
    'created_at' : createdAt,
    'bio' : bio,
    'company_logo' : companyLogo,
    'company_name' : companyName,
    'company_website' : companyWebsite,
    'experience' : experience,
    'linkedin' : linkedin,
    'location' : location,
    'position' : position,
    'colour_code' : colourCode,
    'is_deleted' : isDeleted,
    'text_colour' : textColour,
    'is_dark_mode' : isDarkMode,
    'is_company_logo' : isCompanyLogo
  };
}

class Image {
  final String? url;
  final String? name;

  Image({
    this.url,
    this.name,
  });

  Image.fromJson(Map<String, dynamic> json)
    : url = json['url'] as String?,
      name = json['name'] as String?;

  Map<String, dynamic> toJson() => {
    'url' : url,
    'name' : name
  };
}