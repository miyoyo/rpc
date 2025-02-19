// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discovery.config;

import 'package:rpc/rpc.dart';

/// The below classes are an edited version of the classes generated by the
/// Dart Discovery Document generator on the Discovery API's discovery document.

/** Links to 16x16 and 32x32 icons representing the API. */
class DirectoryListItemsIcons {
  /** The URL of the 16x16 icon. */
  String? x16;

  /** The URL of the 32x32 icon. */
  String? x32;
}

/** Not documented yet. */
class DirectoryListItems {
  /** The kind for this response. */
  String? kind;

  /** The id of this API. */
  String? id;

  /** The name of the API. */
  String? name;

  /** The version of the API. */
  String? version;

  /** The title of this API. */
  String? title;

  /** The description of this API. */
  String? description;

  /** The URL for the discovery REST document. */
  String? discoveryRestUrl;

  /** A link to the discovery document. */
  String? discoveryLink;

  /** Links to 16x16 and 32x32 icons representing the API. */
  DirectoryListItemsIcons? icons;

  /** A link to human readable documentation for the API. */
  String? documentationLink;

  /** Labels for the status of this API, such as labs or deprecated. */
  List<String>? labels;

  /** True if this version is the preferred version to use. */
  bool? preferred;
}

/** Not documented yet. */
class DirectoryList {
  /** The kind for this response. */
  String? kind;

  /** Indicate the version of the Discovery API used to generate this doc. */
  String? discoveryVersion;

  /** The individual directory entries. One entry per api/version pair. */
  List<DirectoryListItems>? items;
}

/** Additional information about this property. */
class JsonSchemaAnnotations {
  /** A list of methods for which this property is required on requests. */
  List<String>? required;
}

/** Not documented yet. */
class JsonSchemaVariantMap {
  /** Not documented yet. */
  @ApiProperty(name: '\$ref')
  String? P_ref;

  /** Not documented yet. */
  String? typeValue;
}

/**
 * In a variant data type, the value of one property is used to determine how to
 * interpret the entire entity. Its value must exist in a map of discriminant
 * values to schema names.
 */
class JsonSchemaVariant {
  /** The name of the type discriminant property. */
  String? discriminant;

  /** The map of discriminant value to schema to use for parsing.. */
  List<JsonSchemaVariantMap>? map;
}

/** Not documented yet. */
class JsonSchema {
  /** Used to describe parameters of type int. */
  static const PARAM_INTEGER_TYPE = 'integer';

  /** Used to describe parameters of type bool */
  static const PARAM_BOOL_TYPE = 'boolean';

  /* Used to describe parameters of type string. */
  static const PARAM_STRING_TYPE = 'string';

  /** Designates a parameter is part of the url path. */
  static const PARAM_LOCATION_PATH = 'path';

  /** Designates a parameter is part of the url query string. */
  static const PARAM_LOCATION_QUERY = 'query';

  /** Unique identifier for this schema. */
  String? id;

  /**
   * The value type for this schema. A list of values can be found here:
   * http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.1
   */
  String? type;

  /**
   * A reference to another schema. The value of this property is the "id" of
   * another schema.
   */
  @ApiProperty(name: '\$ref')
  String? P_ref;

  /** A description of this object. */
  String? description;

  /** The default value of this property (if one exists). */
  @ApiProperty(name: 'default')
  String? default_;

  /** Whether the parameter is required. */
  bool? required;

  /**
   * An additional regular expression or key that helps constrain the value. For
   * more details see:
   * http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.23
   */
  String? format;

  /**
   * The regular expression this parameter must conform to. Uses Java 6 regex
   * format:
   * http://docs.oracle.com/javase/6/docs/api/java/util/regex/Pattern.html
   */
  String? pattern;

  /** The minimum value of this parameter. */
  String? minimum;

  /** The maximum value of this parameter. */
  String? maximum;

  /** Values this parameter may take (if it is an enum). */
  @ApiProperty(name: 'enum')
  List<String>? enum_;

  /**
   * The descriptions for the enums. Each position maps to the corresponding
   * value in the "enum" array.
   */
  List<String>? enumDescriptions;

  /**
   * In a variant data type, the value of one property is used to determine how
   * to interpret the entire entity. Its value must exist in a map of
   * discriminant values to schema names.
   */
  JsonSchemaVariant? variant;

  /** Whether this parameter may appear multiple times. */
  bool? repeated;

  /**
   * Whether this parameter goes in the query or the path for REST requests.
   */
  String? location;

  /**
   * If this is a schema for an object, list the schema for each property of
   * this object.
   */
  Map<String, JsonSchema>? properties;

  /**
   * If this is a schema for an object, this property is the schema for any
   * additional properties with dynamic keys on this object.
   */
  JsonSchema? additionalProperties;

  /**
   * If this is a schema for an array, this property is the schema for each
   * element in the array.
   */
  JsonSchema? items;

  /** Additional information about this property. */
  JsonSchemaAnnotations? annotations;
}

/** The scope value. */
class RestDescriptionAuthOauth2ScopesValue {
  /** Description of scope. */
  String? description;
}

/** OAuth 2.0 authentication information. */
class RestDescriptionAuthOauth2 {
  /** Available OAuth 2.0 scopes. */
  Map<String, RestDescriptionAuthOauth2ScopesValue>? scopes;
}

/** Authentication information. */
class RestDescriptionAuth {
  /** OAuth 2.0 authentication information. */
  RestDescriptionAuthOauth2? oauth2;
}

/** Links to 16x16 and 32x32 icons representing the API. */
class RestDescriptionIcons {
  /** The URL of the 16x16 icon. */
  String? x16;

  /** The URL of the 32x32 icon. */
  String? x32;
}

/** Not documented yet. */
class RestDescription {
  /** The kind for this response. */
  String? kind;

  /** The ETag for this response. */
  String? etag;

  /** Indicate the version of the Discovery API used to generate this doc. */
  String? discoveryVersion;

  /** The ID of this API. */
  String? id;

  /** The name of this API. */
  String? name;

  /**
   * Indicates how the API name should be capitalized and split into various
   * parts. Useful for generating pretty class names.
   */
  String? canonicalName;

  /** The version of this API. */
  String? version;

  /** The version of this API. */
  String? revision;

  /** The title of this API. */
  String? title;

  /** The description of this API. */
  String? description;

  /**
   * The domain of the owner of this API. Together with the ownerName and a
   * packagePath values, this can be used to generate a library for this API
   * which would have a unique fully qualified name.
   */
  String? ownerDomain;

  /** The name of the owner of this API. See ownerDomain. */
  String? ownerName;

  /** The package of the owner of this API. See ownerDomain. */
  String? packagePath;

  /** Support links to 16x16 and 32x32 icons representing the API. */
  RestDescriptionIcons? icons;

  /** A link to human readable documentation for the API. */
  String? documentationLink;

  /** Labels for the status of this API, such as labs or deprecated. */
  List<String>? labels;

  /** The protocol described by this document. */
  String? protocol;

  /** [DEPRECATED] The base URL for REST requests. */
  String? baseUrl;

  /** [DEPRECATED] The base path for REST requests. */
  String? basePath;

  /** The root URL under which all API services live. */
  String? rootUrl;

  /** The base path for all REST requests. */
  String? servicePath;

  /** The path for REST batch requests. */
  String? batchPath;

  /** Common parameters that apply across all apis. */
  Map<String, JsonSchema>? parameters;

  /** Authentication information. */
  RestDescriptionAuth? auth;

  /** A list of supported features for this API. */
  List<String>? features;

  /** The schemas for this API. */
  Map<String, JsonSchema>? schemas;

  /** API-level methods for this API. */
  Map<String, RestMethod>? methods;

  /** The resources in this API. */
  Map<String, RestResource>? resources;
}

/** Supports the Resumable Media Upload protocol. */
class RestMethodMediaUploadProtocolsResumable {
  /** True if this endpoint supports uploading multipart media. */
  bool? multipart;

  /**
   * The URI path to be used for upload. Should be used in conjunction with the
   * basePath property at the api-level.
   */
  String? path;
}

/** Supports uploading as a single HTTP request. */
class RestMethodMediaUploadProtocolsSimple {
  /** True if this endpoint supports upload multipart media. */
  bool? multipart;

  /**
   * The URI path to be used for upload. Should be used in conjunction with the
   * basePath property at the api-level.
   */
  String? path;
}

/** Supported upload protocols. */
class RestMethodMediaUploadProtocols {
  /** Supports the Resumable Media Upload protocol. */
  RestMethodMediaUploadProtocolsResumable? resumable;

  /** Supports uploading as a single HTTP request. */
  RestMethodMediaUploadProtocolsSimple? simple;
}

/** Media upload parameters. */
class RestMethodMediaUpload {
  /** MIME Media Ranges for acceptable media uploads to this method. */
  List<String>? accept;

  /** Maximum size of a media upload, such as "1MB", "2GB" or "3TB". */
  String? maxSize;

  /** Supported upload protocols. */
  RestMethodMediaUploadProtocols? protocols;
}

/** The schema for the request. */
class RestMethodRequest {
  /** Schema ID for the request schema. */
  @ApiProperty(name: '\$ref')
  String? P_ref;

  /** parameter name. */
  String? parameterName;
}

/** The schema for the response. */
class RestMethodResponse {
  /** Schema ID for the response schema. */
  @ApiProperty(name: '\$ref')
  String? P_ref;
}

/** Not documented yet. */
class RestMethod {
  /**
   * A unique ID for this method. This property can be used to match methods
   * between different versions of Discovery.
   */
  String? id;

  /**
   * Whether this method requires an ETag to be specified. The ETag is sent as
   * an HTTP If-Match or If-None-Match header.
   */
  bool? etagRequired;

  /**
   * The URI path of this REST method. Should be used in conjunction with the
   * basePath property at the api-level.
   */
  String? path;

  /** HTTP method used by this method. */
  String? httpMethod;

  /** Description of this method. */
  String? description;

  /** Details for all parameters in this method. */
  late Map<String?, JsonSchema> parameters;

  /**
   * Ordered list of required parameters, serves as a hint to clients on how to
   * structure their method signatures. The array is ordered such that the
   * "most-significant" parameter appears first.
   */
  List<String?>? parameterOrder;

  /** The schema for the request. */
  RestMethodRequest? request;

  /** The schema for the response. */
  RestMethodResponse? response;

  /** OAuth 2.0 scopes applicable to this method. */
  List<String>? scopes;

  /** Whether this method supports media downloads. */
  bool? supportsMediaDownload;

  /** Whether this method supports media uploads. */
  bool? supportsMediaUpload;

  /** Media upload parameters. */
  RestMethodMediaUpload? mediaUpload;

  /** Whether this method supports subscriptions. */
  bool? supportsSubscription;
}

/** Not documented yet. */
class RestResource {
  /** Methods on this resource. */
  Map<String, RestMethod>? methods;

  /** Sub-resources on this resource. */
  Map<String, RestResource>? resources;
}
