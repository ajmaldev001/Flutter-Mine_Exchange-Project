class FilterResponseModel {
  final int? statusCode;
  final bool? status;
  final String? message;
  final Data? data;

  FilterResponseModel({
    this.statusCode,
    this.status,
    this.message,
    this.data,
  });

  FilterResponseModel.fromJson(Map<String, dynamic> json)
    : statusCode = json['status_code'] as int?,
      status = json['status'] as bool?,
      message = json['message'] as String?,
      data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'status_code' : statusCode,
    'status' : status,
    'message' : message,
    'data' : data?.toJson()
  };
}

class Data {
  final List<Filters>? filters;
  final PriceRange? priceRange;
  final List<String>? commodities;
  final List<String>? continents;

  Data({
    this.filters,
    this.priceRange,
    this.commodities,
    this.continents,
  });

  Data.fromJson(Map<String, dynamic> json)
    : filters = (json['filters'] as List?)?.map((dynamic e) => Filters.fromJson(e as Map<String,dynamic>)).toList(),
      priceRange = (json['price_range'] as Map<String,dynamic>?) != null ? PriceRange.fromJson(json['price_range'] as Map<String,dynamic>) : null,
      commodities = (json['commodities'] as List?)?.map((dynamic e) => e as String).toList(),
      continents = (json['continents'] as List?)?.map((dynamic e) => e as String).toList();

  Map<String, dynamic> toJson() => {
    'filters' : filters?.map((e) => e.toJson()).toList(),
    'price_range' : priceRange?.toJson(),
    'commodities' : commodities,
    'continents' : continents
  };
}

class Filters {
  final String? id;
  final String? question;
  final String? type;
  final List<Prompts>? prompts;
  final String? step;
  final String? section;
  final int? questionNo;
  final bool? mandatory;
  final bool? isFilter;
  final String? label;
  final String? key;
  final int? status;
  final String? createdAt;

  Filters({
    this.id,
    this.question,
    this.type,
    this.prompts,
    this.step,
    this.section,
    this.questionNo,
    this.mandatory,
    this.isFilter,
    this.label,
    this.key,
    this.status,
    this.createdAt,
  });

  Filters.fromJson(Map<String, dynamic> json)
    : id = json['_id'] as String?,
      question = json['question'] as String?,
      type = json['type'] as String?,
      prompts = (json['prompts'] as List?)?.map((dynamic e) => Prompts.fromJson(e as Map<String,dynamic>)).toList(),
      step = json['step'] as String?,
      section = json['section'] as String?,
      questionNo = json['question_no'] as int?,
      mandatory = json['mandatory'] as bool?,
      isFilter = json['is_filter'] as bool?,
      label = json['label'] as String?,
      key = json['key'] as String?,
      status = json['status'] as int?,
      createdAt = json['created_at'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'question' : question,
    'type' : type,
    'prompts' : prompts?.map((e) => e.toJson()).toList(),
    'step' : step,
    'section' : section,
    'question_no' : questionNo,
    'mandatory' : mandatory,
    'is_filter' : isFilter,
    'label' : label,
    'key' : key,
    'status' : status,
    'created_at' : createdAt
  };
}

class Prompts {
  final String? promptValues;
  final List<NestedPrompts>? nestedPrompts;

  Prompts({
    this.promptValues,
    this.nestedPrompts,
  });

  Prompts.fromJson(Map<String, dynamic> json)
    : promptValues = json['prompt_values'] as String?,
      nestedPrompts = (json['nested_Prompts'] as List?)?.map((dynamic e) => NestedPrompts.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'prompt_values' : promptValues,
    'nested_Prompts' : nestedPrompts?.map((e) => e.toJson()).toList()
  };
}

class NestedPrompts {
  final String? nestedPromptValues;

  NestedPrompts({
    this.nestedPromptValues,
  });

  NestedPrompts.fromJson(Map<String, dynamic> json)
    : nestedPromptValues = json['nested_prompt_values'] as String?;

  Map<String, dynamic> toJson() => {
    'nested_prompt_values' : nestedPromptValues
  };
}

class PriceRange {
  final List<int>? minPriceRange;
  final List<int>? maxPriceRange;

  PriceRange({
    this.minPriceRange,
    this.maxPriceRange,
  });

  PriceRange.fromJson(Map<String, dynamic> json)
    : minPriceRange = (json['min_price_range'] as List?)?.map((dynamic e) => e as int).toList(),
      maxPriceRange = (json['max_price_range'] as List?)?.map((dynamic e) => e as int).toList();

  Map<String, dynamic> toJson() => {
    'min_price_range' : minPriceRange,
    'max_price_range' : maxPriceRange
  };
}