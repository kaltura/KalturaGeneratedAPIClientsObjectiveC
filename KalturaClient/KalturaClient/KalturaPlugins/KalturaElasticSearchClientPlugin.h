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
// Copyright (C) 2006-2018  Kaltura Inc.
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
@interface KalturaESearchItemType : NSObject
+ (int)EXACT_MATCH;
+ (int)PARTIAL;
+ (int)STARTS_WITH;
+ (int)EXISTS;
+ (int)RANGE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchOperatorType : NSObject
+ (int)AND_OP;
+ (int)OR_OP;
+ (int)NOT_OP;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCaptionFieldName : NSObject
+ (NSString*)CONTENT;
+ (NSString*)END_TIME;
+ (NSString*)LABEL;
+ (NSString*)LANGUAGE;
+ (NSString*)START_TIME;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryEntryFieldName : NSObject
+ (NSString*)ANCESTOR_ID;
+ (NSString*)ANCESTOR_NAME;
+ (NSString*)FULL_IDS;
+ (NSString*)ID;
+ (NSString*)NAME;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryFieldName : NSObject
+ (NSString*)CONTRIBUTION_POLICY;
+ (NSString*)CREATED_AT;
+ (NSString*)DEPTH;
+ (NSString*)DESCRIPTION;
+ (NSString*)DIRECT_ENTRIES_COUNT;
+ (NSString*)DIRECT_SUB_CATEGORIES_COUNT;
+ (NSString*)DISPLAY_IN_SEARCH;
+ (NSString*)ENTRIES_COUNT;
+ (NSString*)FULL_IDS;
+ (NSString*)FULL_NAME;
+ (NSString*)ID;
+ (NSString*)INHERITANCE_TYPE;
+ (NSString*)INHERITED_PARENT_ID;
+ (NSString*)MEMBERS_COUNT;
+ (NSString*)MODERATION;
+ (NSString*)NAME;
+ (NSString*)PARENT_ID;
+ (NSString*)PENDING_ENTRIES_COUNT;
+ (NSString*)PENDING_MEMBERS_COUNT;
+ (NSString*)PRIVACY;
+ (NSString*)PRIVACY_CONTEXT;
+ (NSString*)PRIVACY_CONTEXTS;
+ (NSString*)REFERENCE_ID;
+ (NSString*)TAGS;
+ (NSString*)UPDATED_AT;
+ (NSString*)USER_ID;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryOrderByFieldName : NSObject
+ (NSString*)CREATED_AT;
+ (NSString*)ENTRIES_COUNT;
+ (NSString*)MEMBERS_COUNT;
+ (NSString*)NAME;
+ (NSString*)UPDATED_AT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryUserFieldName : NSObject
+ (NSString*)USER_ID;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCuePointFieldName : NSObject
+ (NSString*)ANSWERS;
+ (NSString*)END_TIME;
+ (NSString*)EXPLANATION;
+ (NSString*)HINT;
+ (NSString*)ID;
+ (NSString*)NAME;
+ (NSString*)QUESTION;
+ (NSString*)START_TIME;
+ (NSString*)SUB_TYPE;
+ (NSString*)TAGS;
+ (NSString*)TEXT;
+ (NSString*)TYPE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryFieldName : NSObject
+ (NSString*)ACCESS_CONTROL_ID;
+ (NSString*)ADMIN_TAGS;
+ (NSString*)CONVERSION_PROFILE_ID;
+ (NSString*)CREATED_AT;
+ (NSString*)CREATOR_ID;
+ (NSString*)CREDIT;
+ (NSString*)DESCRIPTION;
+ (NSString*)END_DATE;
+ (NSString*)ENTITLED_USER_EDIT;
+ (NSString*)ENTITLED_USER_PUBLISH;
+ (NSString*)ENTRY_TYPE;
+ (NSString*)EXTERNAL_SOURCE_TYPE;
+ (NSString*)ID;
+ (NSString*)IS_LIVE;
+ (NSString*)IS_QUIZ;
+ (NSString*)USER_ID;
+ (NSString*)LENGTH_IN_MSECS;
+ (NSString*)MEDIA_TYPE;
+ (NSString*)MODERATION_STATUS;
+ (NSString*)NAME;
+ (NSString*)PARENT_ENTRY_ID;
+ (NSString*)PUSH_PUBLISH;
+ (NSString*)RECORDED_ENTRY_ID;
+ (NSString*)REDIRECT_ENTRY_ID;
+ (NSString*)REFERENCE_ID;
+ (NSString*)ROOT_ID;
+ (NSString*)SITE_URL;
+ (NSString*)SOURCE_TYPE;
+ (NSString*)START_DATE;
+ (NSString*)TAGS;
+ (NSString*)TEMPLATE_ENTRY_ID;
+ (NSString*)UPDATED_AT;
+ (NSString*)USER_NAMES;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryOrderByFieldName : NSObject
+ (NSString*)CREATED_AT;
+ (NSString*)END_DATE;
+ (NSString*)LAST_PLAYED_AT;
+ (NSString*)NAME;
+ (NSString*)PLAYS;
+ (NSString*)START_DATE;
+ (NSString*)UPDATED_AT;
+ (NSString*)VIEWS;
+ (NSString*)VOTES;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchSortOrder : NSObject
+ (NSString*)ORDER_BY_ASC;
+ (NSString*)ORDER_BY_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserFieldName : NSObject
+ (NSString*)CREATED_AT;
+ (NSString*)EMAIL;
+ (NSString*)FIRST_NAME;
+ (NSString*)GROUP_IDS;
+ (NSString*)LAST_NAME;
+ (NSString*)PERMISSION_NAMES;
+ (NSString*)ROLE_IDS;
+ (NSString*)SCREEN_NAME;
+ (NSString*)TAGS;
+ (NSString*)UPDATED_AT;
+ (NSString*)USER_ID;
+ (NSString*)TYPE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserOrderByFieldName : NSObject
+ (NSString*)CREATED_AT;
+ (NSString*)UPDATED_AT;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaESearchBaseItem : KalturaObjectBase
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryBaseItem : KalturaESearchBaseItem
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchHighlight : KalturaObjectBase
@property (nonatomic,copy) NSString* fieldName;
@property (nonatomic,retain) NSMutableArray* hits;	// of KalturaString elements
- (KalturaFieldType)getTypeOfFieldName;
- (KalturaFieldType)getTypeOfHits;
- (NSString*)getObjectTypeOfHits;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchItemData : KalturaObjectBase
@property (nonatomic,retain) NSMutableArray* highlight;	// of KalturaESearchHighlight elements
- (KalturaFieldType)getTypeOfHighlight;
- (NSString*)getObjectTypeOfHighlight;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchItemDataResult : KalturaObjectBase
@property (nonatomic,assign) int totalCount;
@property (nonatomic,retain) NSMutableArray* items;	// of KalturaESearchItemData elements
@property (nonatomic,copy) NSString* itemsType;
- (KalturaFieldType)getTypeOfTotalCount;
- (KalturaFieldType)getTypeOfItems;
- (NSString*)getObjectTypeOfItems;
- (KalturaFieldType)getTypeOfItemsType;
- (void)setTotalCountFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchResult : KalturaObjectBase
@property (nonatomic,retain) NSMutableArray* highlight;	// of KalturaESearchHighlight elements
@property (nonatomic,retain) NSMutableArray* itemsData;	// of KalturaESearchItemDataResult elements
- (KalturaFieldType)getTypeOfHighlight;
- (NSString*)getObjectTypeOfHighlight;
- (KalturaFieldType)getTypeOfItemsData;
- (NSString*)getObjectTypeOfItemsData;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryResult : KalturaESearchResult
@property (nonatomic,retain) KalturaCategory* object;
- (KalturaFieldType)getTypeOfObject;
- (NSString*)getObjectTypeOfObject;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryBaseItem : KalturaESearchBaseItem
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryBaseNestedObject : KalturaESearchEntryBaseItem
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryNestedBaseItem : KalturaESearchEntryBaseNestedObject
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryResult : KalturaESearchResult
@property (nonatomic,retain) KalturaBaseEntry* object;
- (KalturaFieldType)getTypeOfObject;
- (NSString*)getObjectTypeOfObject;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchOrderByItem : KalturaObjectBase
@property (nonatomic,copy) NSString* sortOrder;	// enum KalturaESearchSortOrder
- (KalturaFieldType)getTypeOfSortOrder;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchOrderBy : KalturaObjectBase
@property (nonatomic,retain) NSMutableArray* orderItems;	// of KalturaESearchOrderByItem elements
- (KalturaFieldType)getTypeOfOrderItems;
- (NSString*)getObjectTypeOfOrderItems;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchParams : KalturaObjectBase
@property (nonatomic,copy) NSString* objectStatuses;
@property (nonatomic,copy) NSString* objectId;
@property (nonatomic,retain) KalturaESearchOrderBy* orderBy;
- (KalturaFieldType)getTypeOfObjectStatuses;
- (KalturaFieldType)getTypeOfObjectId;
- (KalturaFieldType)getTypeOfOrderBy;
- (NSString*)getObjectTypeOfOrderBy;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchRange : KalturaObjectBase
@property (nonatomic,assign) int greaterThanOrEqual;
@property (nonatomic,assign) int lessThanOrEqual;
@property (nonatomic,assign) int greaterThan;
@property (nonatomic,assign) int lessThan;
- (KalturaFieldType)getTypeOfGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfLessThanOrEqual;
- (KalturaFieldType)getTypeOfGreaterThan;
- (KalturaFieldType)getTypeOfLessThan;
- (void)setGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setGreaterThanFromString:(NSString*)aPropVal;
- (void)setLessThanFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchResponse : KalturaObjectBase
@property (nonatomic,assign,readonly) int totalCount;
- (KalturaFieldType)getTypeOfTotalCount;
- (void)setTotalCountFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserBaseItem : KalturaESearchBaseItem
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserResult : KalturaESearchResult
@property (nonatomic,retain) KalturaUser* object;
- (KalturaFieldType)getTypeOfObject;
- (NSString*)getObjectTypeOfObject;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCaptionItemData : KalturaESearchItemData
@property (nonatomic,copy) NSString* line;
@property (nonatomic,assign) int startsAt;
@property (nonatomic,assign) int endsAt;
@property (nonatomic,copy) NSString* language;
@property (nonatomic,copy) NSString* captionAssetId;
@property (nonatomic,copy) NSString* label;
- (KalturaFieldType)getTypeOfLine;
- (KalturaFieldType)getTypeOfStartsAt;
- (KalturaFieldType)getTypeOfEndsAt;
- (KalturaFieldType)getTypeOfLanguage;
- (KalturaFieldType)getTypeOfCaptionAssetId;
- (KalturaFieldType)getTypeOfLabel;
- (void)setStartsAtFromString:(NSString*)aPropVal;
- (void)setEndsAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryOrderByItem : KalturaESearchOrderByItem
@property (nonatomic,copy) NSString* sortField;	// enum KalturaESearchCategoryOrderByFieldName
- (KalturaFieldType)getTypeOfSortField;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryOperator : KalturaESearchCategoryBaseItem
@property (nonatomic,assign) int operator;	// enum KalturaESearchOperatorType
@property (nonatomic,retain) NSMutableArray* searchItems;	// of KalturaESearchCategoryBaseItem elements
- (KalturaFieldType)getTypeOfOperator;
- (KalturaFieldType)getTypeOfSearchItems;
- (NSString*)getObjectTypeOfSearchItems;
- (void)setOperatorFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryParams : KalturaESearchParams
@property (nonatomic,retain) KalturaESearchCategoryOperator* searchOperator;
- (KalturaFieldType)getTypeOfSearchOperator;
- (NSString*)getObjectTypeOfSearchOperator;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryResponse : KalturaESearchResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaESearchCategoryResult elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCuePointItemData : KalturaESearchItemData
@property (nonatomic,copy) NSString* cuePointType;
@property (nonatomic,copy) NSString* id;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* text;
@property (nonatomic,retain) NSMutableArray* tags;	// of KalturaString elements
@property (nonatomic,copy) NSString* startTime;
@property (nonatomic,copy) NSString* endTime;
@property (nonatomic,copy) NSString* subType;
@property (nonatomic,copy) NSString* question;
@property (nonatomic,retain) NSMutableArray* answers;	// of KalturaString elements
@property (nonatomic,copy) NSString* hint;
@property (nonatomic,copy) NSString* explanation;
@property (nonatomic,copy) NSString* assetId;
- (KalturaFieldType)getTypeOfCuePointType;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfText;
- (KalturaFieldType)getTypeOfTags;
- (NSString*)getObjectTypeOfTags;
- (KalturaFieldType)getTypeOfStartTime;
- (KalturaFieldType)getTypeOfEndTime;
- (KalturaFieldType)getTypeOfSubType;
- (KalturaFieldType)getTypeOfQuestion;
- (KalturaFieldType)getTypeOfAnswers;
- (NSString*)getObjectTypeOfAnswers;
- (KalturaFieldType)getTypeOfHint;
- (KalturaFieldType)getTypeOfExplanation;
- (KalturaFieldType)getTypeOfAssetId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryOrderByItem : KalturaESearchOrderByItem
@property (nonatomic,copy) NSString* sortField;	// enum KalturaESearchEntryOrderByFieldName
- (KalturaFieldType)getTypeOfSortField;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryOperator : KalturaESearchEntryBaseItem
@property (nonatomic,assign) int operator;	// enum KalturaESearchOperatorType
@property (nonatomic,retain) NSMutableArray* searchItems;	// of KalturaESearchEntryBaseItem elements
- (KalturaFieldType)getTypeOfOperator;
- (KalturaFieldType)getTypeOfSearchItems;
- (NSString*)getObjectTypeOfSearchItems;
- (void)setOperatorFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryParams : KalturaESearchParams
@property (nonatomic,retain) KalturaESearchEntryOperator* searchOperator;
- (KalturaFieldType)getTypeOfSearchOperator;
- (NSString*)getObjectTypeOfSearchOperator;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryResponse : KalturaESearchResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaESearchEntryResult elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchMetadataItemData : KalturaESearchItemData
@property (nonatomic,copy) NSString* xpath;
@property (nonatomic,assign) int metadataProfileId;
@property (nonatomic,assign) int metadataFieldId;
@property (nonatomic,copy) NSString* valueText;
@property (nonatomic,assign) int valueInt;
- (KalturaFieldType)getTypeOfXpath;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (KalturaFieldType)getTypeOfMetadataFieldId;
- (KalturaFieldType)getTypeOfValueText;
- (KalturaFieldType)getTypeOfValueInt;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
- (void)setMetadataFieldIdFromString:(NSString*)aPropVal;
- (void)setValueIntFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchMetadataOrderByItem : KalturaESearchOrderByItem
@property (nonatomic,copy) NSString* xpath;
@property (nonatomic,assign) int metadataProfileId;
- (KalturaFieldType)getTypeOfXpath;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserOrderByItem : KalturaESearchOrderByItem
@property (nonatomic,copy) NSString* sortField;	// enum KalturaESearchUserOrderByFieldName
- (KalturaFieldType)getTypeOfSortField;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserOperator : KalturaESearchUserBaseItem
@property (nonatomic,assign) int operator;	// enum KalturaESearchOperatorType
@property (nonatomic,retain) NSMutableArray* searchItems;	// of KalturaESearchUserBaseItem elements
- (KalturaFieldType)getTypeOfOperator;
- (KalturaFieldType)getTypeOfSearchItems;
- (NSString*)getObjectTypeOfSearchItems;
- (void)setOperatorFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserParams : KalturaESearchParams
@property (nonatomic,retain) KalturaESearchUserOperator* searchOperator;
- (KalturaFieldType)getTypeOfSearchOperator;
- (NSString*)getObjectTypeOfSearchOperator;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserResponse : KalturaESearchResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaESearchUserResult elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchAbstractCategoryItem : KalturaESearchCategoryBaseItem
@property (nonatomic,copy) NSString* searchTerm;
@property (nonatomic,assign) int itemType;	// enum KalturaESearchItemType
@property (nonatomic,retain) KalturaESearchRange* range;
@property (nonatomic,assign) KALTURA_BOOL addHighlight;
- (KalturaFieldType)getTypeOfSearchTerm;
- (KalturaFieldType)getTypeOfItemType;
- (KalturaFieldType)getTypeOfRange;
- (NSString*)getObjectTypeOfRange;
- (KalturaFieldType)getTypeOfAddHighlight;
- (void)setItemTypeFromString:(NSString*)aPropVal;
- (void)setAddHighlightFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchAbstractEntryItem : KalturaESearchEntryBaseItem
@property (nonatomic,copy) NSString* searchTerm;
@property (nonatomic,assign) int itemType;	// enum KalturaESearchItemType
@property (nonatomic,retain) KalturaESearchRange* range;
@property (nonatomic,assign) KALTURA_BOOL addHighlight;
- (KalturaFieldType)getTypeOfSearchTerm;
- (KalturaFieldType)getTypeOfItemType;
- (KalturaFieldType)getTypeOfRange;
- (NSString*)getObjectTypeOfRange;
- (KalturaFieldType)getTypeOfAddHighlight;
- (void)setItemTypeFromString:(NSString*)aPropVal;
- (void)setAddHighlightFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchAbstractUserItem : KalturaESearchUserBaseItem
@property (nonatomic,copy) NSString* searchTerm;
@property (nonatomic,assign) int itemType;	// enum KalturaESearchItemType
@property (nonatomic,retain) KalturaESearchRange* range;
@property (nonatomic,assign) KALTURA_BOOL addHighlight;
- (KalturaFieldType)getTypeOfSearchTerm;
- (KalturaFieldType)getTypeOfItemType;
- (KalturaFieldType)getTypeOfRange;
- (NSString*)getObjectTypeOfRange;
- (KalturaFieldType)getTypeOfAddHighlight;
- (void)setItemTypeFromString:(NSString*)aPropVal;
- (void)setAddHighlightFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryEntryItem : KalturaESearchAbstractEntryItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchCategoryEntryFieldName
@property (nonatomic,assign) int categoryEntryStatus;	// enum KalturaCategoryEntryStatus
- (KalturaFieldType)getTypeOfFieldName;
- (KalturaFieldType)getTypeOfCategoryEntryStatus;
- (void)setCategoryEntryStatusFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryItem : KalturaESearchAbstractCategoryItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchCategoryFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryMetadataItem : KalturaESearchAbstractCategoryItem
@property (nonatomic,copy) NSString* xpath;
@property (nonatomic,assign) int metadataProfileId;
@property (nonatomic,assign) int metadataFieldId;
- (KalturaFieldType)getTypeOfXpath;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (KalturaFieldType)getTypeOfMetadataFieldId;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
- (void)setMetadataFieldIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryUserItem : KalturaESearchAbstractCategoryItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchCategoryUserFieldName
@property (nonatomic,assign) int permissionLevel;	// enum KalturaCategoryUserPermissionLevel
@property (nonatomic,copy) NSString* permissionName;
- (KalturaFieldType)getTypeOfFieldName;
- (KalturaFieldType)getTypeOfPermissionLevel;
- (KalturaFieldType)getTypeOfPermissionName;
- (void)setPermissionLevelFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryItem : KalturaESearchAbstractEntryItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchEntryFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUnifiedItem : KalturaESearchAbstractEntryItem
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserItem : KalturaESearchAbstractUserItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchUserFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserMetadataItem : KalturaESearchAbstractUserItem
@property (nonatomic,copy) NSString* xpath;
@property (nonatomic,assign) int metadataProfileId;
@property (nonatomic,assign) int metadataFieldId;
- (KalturaFieldType)getTypeOfXpath;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (KalturaFieldType)getTypeOfMetadataFieldId;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
- (void)setMetadataFieldIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryAbstractNestedItem : KalturaESearchEntryNestedBaseItem
@property (nonatomic,copy) NSString* searchTerm;
@property (nonatomic,assign) int itemType;	// enum KalturaESearchItemType
@property (nonatomic,retain) KalturaESearchRange* range;
@property (nonatomic,assign) KALTURA_BOOL addHighlight;
- (KalturaFieldType)getTypeOfSearchTerm;
- (KalturaFieldType)getTypeOfItemType;
- (KalturaFieldType)getTypeOfRange;
- (NSString*)getObjectTypeOfRange;
- (KalturaFieldType)getTypeOfAddHighlight;
- (void)setItemTypeFromString:(NSString*)aPropVal;
- (void)setAddHighlightFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchNestedOperator : KalturaESearchEntryNestedBaseItem
@property (nonatomic,assign) int operator;	// enum KalturaESearchOperatorType
@property (nonatomic,retain) NSMutableArray* searchItems;	// of KalturaESearchEntryNestedBaseItem elements
- (KalturaFieldType)getTypeOfOperator;
- (KalturaFieldType)getTypeOfSearchItems;
- (NSString*)getObjectTypeOfSearchItems;
- (void)setOperatorFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCaptionItem : KalturaESearchEntryAbstractNestedItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchCaptionFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCuePointItem : KalturaESearchEntryAbstractNestedItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchCuePointFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryMetadataItem : KalturaESearchEntryAbstractNestedItem
@property (nonatomic,copy) NSString* xpath;
@property (nonatomic,assign) int metadataProfileId;
@property (nonatomic,assign) int metadataFieldId;
- (KalturaFieldType)getTypeOfXpath;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (KalturaFieldType)getTypeOfMetadataFieldId;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
- (void)setMetadataFieldIdFromString:(NSString*)aPropVal;
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaESearchService : KalturaServiceBase
- (KalturaESearchCategoryResponse*)searchCategoryWithSearchParams:(KalturaESearchCategoryParams*)aSearchParams withPager:(KalturaPager*)aPager;
- (KalturaESearchCategoryResponse*)searchCategoryWithSearchParams:(KalturaESearchCategoryParams*)aSearchParams;
- (KalturaESearchEntryResponse*)searchEntryWithSearchParams:(KalturaESearchEntryParams*)aSearchParams withPager:(KalturaPager*)aPager;
- (KalturaESearchEntryResponse*)searchEntryWithSearchParams:(KalturaESearchEntryParams*)aSearchParams;
- (KalturaESearchUserResponse*)searchUserWithSearchParams:(KalturaESearchUserParams*)aSearchParams withPager:(KalturaPager*)aPager;
- (KalturaESearchUserResponse*)searchUserWithSearchParams:(KalturaESearchUserParams*)aSearchParams;
@end

@interface KalturaElasticSearchClientPlugin : KalturaClientPlugin
{
	KalturaESearchService* _ESearch;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaESearchService* ESearch;
@end

