// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2019  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaMetadataProfileCreateMode : NSObject
+ (int)API;
+ (int)KMC;
+ (int)APP;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataProfileStatus : NSObject
+ (int)ACTIVE;
+ (int)DEPRECATED;
+ (int)TRANSFORMING;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataStatus : NSObject
+ (int)VALID;
+ (int)INVALID;
+ (int)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataObjectType : NSObject
+ (NSString*)AD_CUE_POINT;
+ (NSString*)ANNOTATION;
+ (NSString*)CODE_CUE_POINT;
+ (NSString*)ANSWER_CUE_POINT;
+ (NSString*)QUESTION_CUE_POINT;
+ (NSString*)THUMB_CUE_POINT;
+ (NSString*)ENTRY;
+ (NSString*)CATEGORY;
+ (NSString*)USER;
+ (NSString*)PARTNER;
+ (NSString*)DYNAMIC_OBJECT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)METADATA_PROFILE_VERSION_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)VERSION_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)METADATA_PROFILE_VERSION_DESC;
+ (NSString*)UPDATED_AT_DESC;
+ (NSString*)VERSION_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaMetadata : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,assign,readonly) int partnerId;
@property (nonatomic,assign,readonly) int metadataProfileId;
@property (nonatomic,assign,readonly) int metadataProfileVersion;
@property (nonatomic,copy,readonly) NSString* metadataObjectType;	// enum KalturaMetadataObjectType
@property (nonatomic,copy,readonly) NSString* objectId;
@property (nonatomic,assign,readonly) int version;
@property (nonatomic,assign,readonly) int createdAt;
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,assign,readonly) int status;	// enum KalturaMetadataStatus
@property (nonatomic,copy,readonly) NSString* xml;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (KalturaFieldType)getTypeOfMetadataProfileVersion;
- (KalturaFieldType)getTypeOfMetadataObjectType;
- (KalturaFieldType)getTypeOfObjectId;
- (KalturaFieldType)getTypeOfVersion;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfXml;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
- (void)setMetadataProfileVersionFromString:(NSString*)aPropVal;
- (void)setVersionFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataProfile : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,assign,readonly) int partnerId;
@property (nonatomic,copy) NSString* metadataObjectType;	// enum KalturaMetadataObjectType
@property (nonatomic,assign,readonly) int version;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* systemName;
@property (nonatomic,copy) NSString* description;
@property (nonatomic,assign,readonly) int createdAt;
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,assign,readonly) int status;	// enum KalturaMetadataProfileStatus
@property (nonatomic,copy,readonly) NSString* xsd;
@property (nonatomic,copy,readonly) NSString* views;
@property (nonatomic,copy,readonly) NSString* xslt;
@property (nonatomic,assign) int createMode;	// enum KalturaMetadataProfileCreateMode
@property (nonatomic,assign) KALTURA_BOOL disableReIndexing;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfMetadataObjectType;
- (KalturaFieldType)getTypeOfVersion;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfSystemName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfXsd;
- (KalturaFieldType)getTypeOfViews;
- (KalturaFieldType)getTypeOfXslt;
- (KalturaFieldType)getTypeOfCreateMode;
- (KalturaFieldType)getTypeOfDisableReIndexing;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setVersionFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
- (void)setCreateModeFromString:(NSString*)aPropVal;
- (void)setDisableReIndexingFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataProfileField : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,copy,readonly) NSString* xPath;
@property (nonatomic,copy,readonly) NSString* key;
@property (nonatomic,copy,readonly) NSString* label;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfXPath;
- (KalturaFieldType)getTypeOfKey;
- (KalturaFieldType)getTypeOfLabel;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaImportMetadataJobData : KalturaJobData
@property (nonatomic,copy) NSString* srcFileUrl;
@property (nonatomic,copy) NSString* destFileLocalPath;
@property (nonatomic,assign) int metadataId;
- (KalturaFieldType)getTypeOfSrcFileUrl;
- (KalturaFieldType)getTypeOfDestFileLocalPath;
- (KalturaFieldType)getTypeOfMetadataId;
- (void)setMetadataIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaMetadata elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataProfileBaseFilter : KalturaFilter
@property (nonatomic,assign) int idEqual;
@property (nonatomic,assign) int partnerIdEqual;
@property (nonatomic,copy) NSString* metadataObjectTypeEqual;	// enum KalturaMetadataObjectType
@property (nonatomic,copy) NSString* metadataObjectTypeIn;
@property (nonatomic,assign) int versionEqual;
@property (nonatomic,copy) NSString* nameEqual;
@property (nonatomic,copy) NSString* systemNameEqual;
@property (nonatomic,copy) NSString* systemNameIn;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
@property (nonatomic,assign) int statusEqual;	// enum KalturaMetadataProfileStatus
@property (nonatomic,copy) NSString* statusIn;
@property (nonatomic,assign) int createModeEqual;	// enum KalturaMetadataProfileCreateMode
@property (nonatomic,assign) int createModeNotEqual;	// enum KalturaMetadataProfileCreateMode
@property (nonatomic,copy) NSString* createModeIn;
@property (nonatomic,copy) NSString* createModeNotIn;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfPartnerIdEqual;
- (KalturaFieldType)getTypeOfMetadataObjectTypeEqual;
- (KalturaFieldType)getTypeOfMetadataObjectTypeIn;
- (KalturaFieldType)getTypeOfVersionEqual;
- (KalturaFieldType)getTypeOfNameEqual;
- (KalturaFieldType)getTypeOfSystemNameEqual;
- (KalturaFieldType)getTypeOfSystemNameIn;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfCreateModeEqual;
- (KalturaFieldType)getTypeOfCreateModeNotEqual;
- (KalturaFieldType)getTypeOfCreateModeIn;
- (KalturaFieldType)getTypeOfCreateModeNotIn;
- (void)setIdEqualFromString:(NSString*)aPropVal;
- (void)setPartnerIdEqualFromString:(NSString*)aPropVal;
- (void)setVersionEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
- (void)setCreateModeEqualFromString:(NSString*)aPropVal;
- (void)setCreateModeNotEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataProfileFieldListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaMetadataProfileField elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataProfileListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaMetadataProfile elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Advanced metadata configuration for entry replacement process
@interface KalturaMetadataReplacementOptionsItem : KalturaPluginReplacementOptionsItem
// If true custom-metadata transferred to temp entry on entry replacement
@property (nonatomic,assign) KALTURA_BOOL shouldCopyMetadata;
- (KalturaFieldType)getTypeOfShouldCopyMetadata;
- (void)setShouldCopyMetadataFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataResponseProfileMapping : KalturaResponseProfileMapping
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTransformMetadataJobData : KalturaJobData
@property (nonatomic,retain) KalturaFileContainer* srcXsl;
@property (nonatomic,assign) int srcVersion;
@property (nonatomic,assign) int destVersion;
@property (nonatomic,retain) KalturaFileContainer* destXsd;
@property (nonatomic,assign) int metadataProfileId;
- (KalturaFieldType)getTypeOfSrcXsl;
- (NSString*)getObjectTypeOfSrcXsl;
- (KalturaFieldType)getTypeOfSrcVersion;
- (KalturaFieldType)getTypeOfDestVersion;
- (KalturaFieldType)getTypeOfDestXsd;
- (NSString*)getObjectTypeOfDestXsd;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (void)setSrcVersionFromString:(NSString*)aPropVal;
- (void)setDestVersionFromString:(NSString*)aPropVal;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCompareMetadataCondition : KalturaCompareCondition
// May contain the full xpath to the field in three formats
// 	 1. Slashed xPath, e.g. /metadata/myElementName
// 	 2. Using local-name function, e.g. /[local-name()='metadata']/[local-name()='myElementName']
// 	 3. Using only the field name, e.g. myElementName, it will be searched as //myElementName
@property (nonatomic,copy) NSString* xPath;
// Metadata profile id
@property (nonatomic,assign) int profileId;
// Metadata profile system name
@property (nonatomic,copy) NSString* profileSystemName;
- (KalturaFieldType)getTypeOfXPath;
- (KalturaFieldType)getTypeOfProfileId;
- (KalturaFieldType)getTypeOfProfileSystemName;
- (void)setProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDynamicObjectSearchItem : KalturaSearchOperator
@property (nonatomic,copy) NSString* field;
- (KalturaFieldType)getTypeOfField;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMatchMetadataCondition : KalturaMatchCondition
// May contain the full xpath to the field in three formats
// 	 1. Slashed xPath, e.g. /metadata/myElementName
// 	 2. Using local-name function, e.g. /[local-name()='metadata']/[local-name()='myElementName']
// 	 3. Using only the field name, e.g. myElementName, it will be searched as //myElementName
@property (nonatomic,copy) NSString* xPath;
// Metadata profile id
@property (nonatomic,assign) int profileId;
// Metadata profile system name
@property (nonatomic,copy) NSString* profileSystemName;
- (KalturaFieldType)getTypeOfXPath;
- (KalturaFieldType)getTypeOfProfileId;
- (KalturaFieldType)getTypeOfProfileSystemName;
- (void)setProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataBaseFilter : KalturaRelatedFilter
@property (nonatomic,assign) int partnerIdEqual;
@property (nonatomic,assign) int metadataProfileIdEqual;
@property (nonatomic,copy) NSString* metadataProfileIdIn;
@property (nonatomic,assign) int metadataProfileVersionEqual;
@property (nonatomic,assign) int metadataProfileVersionGreaterThanOrEqual;
@property (nonatomic,assign) int metadataProfileVersionLessThanOrEqual;
// When null, default is KalturaMetadataObjectType::ENTRY
@property (nonatomic,copy) NSString* metadataObjectTypeEqual;	// enum KalturaMetadataObjectType
@property (nonatomic,copy) NSString* objectIdEqual;
@property (nonatomic,copy) NSString* objectIdIn;
@property (nonatomic,assign) int versionEqual;
@property (nonatomic,assign) int versionGreaterThanOrEqual;
@property (nonatomic,assign) int versionLessThanOrEqual;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
@property (nonatomic,assign) int statusEqual;	// enum KalturaMetadataStatus
@property (nonatomic,copy) NSString* statusIn;
- (KalturaFieldType)getTypeOfPartnerIdEqual;
- (KalturaFieldType)getTypeOfMetadataProfileIdEqual;
- (KalturaFieldType)getTypeOfMetadataProfileIdIn;
- (KalturaFieldType)getTypeOfMetadataProfileVersionEqual;
- (KalturaFieldType)getTypeOfMetadataProfileVersionGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfMetadataProfileVersionLessThanOrEqual;
- (KalturaFieldType)getTypeOfMetadataObjectTypeEqual;
- (KalturaFieldType)getTypeOfObjectIdEqual;
- (KalturaFieldType)getTypeOfObjectIdIn;
- (KalturaFieldType)getTypeOfVersionEqual;
- (KalturaFieldType)getTypeOfVersionGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfVersionLessThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (void)setPartnerIdEqualFromString:(NSString*)aPropVal;
- (void)setMetadataProfileIdEqualFromString:(NSString*)aPropVal;
- (void)setMetadataProfileVersionEqualFromString:(NSString*)aPropVal;
- (void)setMetadataProfileVersionGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setMetadataProfileVersionLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setVersionEqualFromString:(NSString*)aPropVal;
- (void)setVersionGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setVersionLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataFieldChangedCondition : KalturaMatchCondition
// May contain the full xpath to the field in three formats
// 	 1. Slashed xPath, e.g. /metadata/myElementName
// 	 2. Using local-name function, e.g. /[local-name()='metadata']/[local-name()='myElementName']
// 	 3. Using only the field name, e.g. myElementName, it will be searched as //myElementName
@property (nonatomic,copy) NSString* xPath;
// Metadata profile id
@property (nonatomic,assign) int profileId;
// Metadata profile system name
@property (nonatomic,copy) NSString* profileSystemName;
@property (nonatomic,copy) NSString* versionA;
@property (nonatomic,copy) NSString* versionB;
- (KalturaFieldType)getTypeOfXPath;
- (KalturaFieldType)getTypeOfProfileId;
- (KalturaFieldType)getTypeOfProfileSystemName;
- (KalturaFieldType)getTypeOfVersionA;
- (KalturaFieldType)getTypeOfVersionB;
- (void)setProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataProfileFilter : KalturaMetadataProfileBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataSearchItem : KalturaSearchOperator
@property (nonatomic,assign) int metadataProfileId;
@property (nonatomic,copy) NSString* orderBy;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (KalturaFieldType)getTypeOfOrderBy;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataField : KalturaStringField
// May contain the full xpath to the field in three formats
// 	 1. Slashed xPath, e.g. /metadata/myElementName
// 	 2. Using local-name function, e.g. /[local-name()='metadata']/[local-name()='myElementName']
// 	 3. Using only the field name, e.g. myElementName, it will be searched as //myElementName
@property (nonatomic,copy) NSString* xPath;
// Metadata profile id
@property (nonatomic,assign) int profileId;
// Metadata profile system name
@property (nonatomic,copy) NSString* profileSystemName;
- (KalturaFieldType)getTypeOfXPath;
- (KalturaFieldType)getTypeOfProfileId;
- (KalturaFieldType)getTypeOfProfileSystemName;
- (void)setProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetadataFilter : KalturaMetadataBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Metadata service
@interface KalturaMetadataService : KalturaServiceBase
// Allows you to add a metadata object and metadata content associated with Kaltura object
- (KalturaMetadata*)addWithMetadataProfileId:(int)aMetadataProfileId withObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId withXmlData:(NSString*)aXmlData;
// Allows you to add a metadata XML data from remote URL.
// 	 Enables different permissions than addFromUrl action.
- (KalturaMetadata*)addFromBulkWithMetadataProfileId:(int)aMetadataProfileId withObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId withUrl:(NSString*)aUrl;
// Allows you to add a metadata object and metadata file associated with Kaltura object
- (KalturaMetadata*)addFromFileWithMetadataProfileId:(int)aMetadataProfileId withObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId withXmlFile:(NSString*)aXmlFile;
// Allows you to add a metadata XML data from remote URL
- (KalturaMetadata*)addFromUrlWithMetadataProfileId:(int)aMetadataProfileId withObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId withUrl:(NSString*)aUrl;
// Delete an existing metadata
- (void)deleteWithId:(int)aId;
// Retrieve a metadata object by id
- (KalturaMetadata*)getWithId:(int)aId;
// Index metadata by id, will also index the related object
- (int)indexWithId:(NSString*)aId withShouldUpdate:(KALTURA_BOOL)aShouldUpdate;
// Mark existing metadata as invalid
// 	 Used by batch metadata transform
- (void)invalidateWithId:(int)aId withVersion:(int)aVersion;
- (void)invalidateWithId:(int)aId;
// List metadata objects by filter and pager
- (KalturaMetadataListResponse*)listWithFilter:(KalturaMetadataFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaMetadataListResponse*)listWithFilter:(KalturaMetadataFilter*)aFilter;
- (KalturaMetadataListResponse*)list;
// Serves metadata XML file
- (NSString*)serveWithId:(int)aId;
// Update an existing metadata object with new XML content
- (KalturaMetadata*)updateWithId:(int)aId withXmlData:(NSString*)aXmlData withVersion:(int)aVersion;
- (KalturaMetadata*)updateWithId:(int)aId withXmlData:(NSString*)aXmlData;
- (KalturaMetadata*)updateWithId:(int)aId;
// Update an existing metadata object with new XML file
- (KalturaMetadata*)updateFromFileWithId:(int)aId withXmlFile:(NSString*)aXmlFile;
- (KalturaMetadata*)updateFromFileWithId:(int)aId;
// Action transforms current metadata object XML using a provided XSL.
- (KalturaMetadata*)updateFromXSLWithId:(int)aId withXslFile:(NSString*)aXslFile;
@end

// @package Kaltura
// @subpackage Client
// Metadata Profile service
@interface KalturaMetadataProfileService : KalturaServiceBase
// Allows you to add a metadata profile object and metadata profile content associated with Kaltura object type
- (KalturaMetadataProfile*)addWithMetadataProfile:(KalturaMetadataProfile*)aMetadataProfile withXsdData:(NSString*)aXsdData withViewsData:(NSString*)aViewsData;
- (KalturaMetadataProfile*)addWithMetadataProfile:(KalturaMetadataProfile*)aMetadataProfile withXsdData:(NSString*)aXsdData;
// Allows you to add a metadata profile object and metadata profile file associated with Kaltura object type
- (KalturaMetadataProfile*)addFromFileWithMetadataProfile:(KalturaMetadataProfile*)aMetadataProfile withXsdFile:(NSString*)aXsdFile withViewsFile:(NSString*)aViewsFile;
- (KalturaMetadataProfile*)addFromFileWithMetadataProfile:(KalturaMetadataProfile*)aMetadataProfile withXsdFile:(NSString*)aXsdFile;
// Delete an existing metadata profile
- (void)deleteWithId:(int)aId;
// Retrieve a metadata profile object by id
- (KalturaMetadataProfile*)getWithId:(int)aId;
// List metadata profile objects by filter and pager
- (KalturaMetadataProfileListResponse*)listWithFilter:(KalturaMetadataProfileFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaMetadataProfileListResponse*)listWithFilter:(KalturaMetadataProfileFilter*)aFilter;
- (KalturaMetadataProfileListResponse*)list;
// List metadata profile fields by metadata profile id
- (KalturaMetadataProfileFieldListResponse*)listFieldsWithMetadataProfileId:(int)aMetadataProfileId;
// Update an existing metadata object definition file
- (KalturaMetadataProfile*)revertWithId:(int)aId withToVersion:(int)aToVersion;
// Serves metadata profile XSD file
- (NSString*)serveWithId:(int)aId;
// Serves metadata profile view file
- (NSString*)serveViewWithId:(int)aId;
// Update an existing metadata object
- (KalturaMetadataProfile*)updateWithId:(int)aId withMetadataProfile:(KalturaMetadataProfile*)aMetadataProfile withXsdData:(NSString*)aXsdData withViewsData:(NSString*)aViewsData;
- (KalturaMetadataProfile*)updateWithId:(int)aId withMetadataProfile:(KalturaMetadataProfile*)aMetadataProfile withXsdData:(NSString*)aXsdData;
- (KalturaMetadataProfile*)updateWithId:(int)aId withMetadataProfile:(KalturaMetadataProfile*)aMetadataProfile;
// Update an existing metadata object definition file
- (KalturaMetadataProfile*)updateDefinitionFromFileWithId:(int)aId withXsdFile:(NSString*)aXsdFile;
// Update an existing metadata object XSLT file
- (KalturaMetadataProfile*)updateTransformationFromFileWithId:(int)aId withXsltFile:(NSString*)aXsltFile;
// Update an existing metadata object views file
- (KalturaMetadataProfile*)updateViewsFromFileWithId:(int)aId withViewsFile:(NSString*)aViewsFile;
@end

@interface KalturaMetadataClientPlugin : KalturaClientPlugin
{
	KalturaMetadataService* _metadata;
	KalturaMetadataProfileService* _metadataProfile;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaMetadataService* metadata;
@property (nonatomic, readonly) KalturaMetadataProfileService* metadataProfile;
@end

