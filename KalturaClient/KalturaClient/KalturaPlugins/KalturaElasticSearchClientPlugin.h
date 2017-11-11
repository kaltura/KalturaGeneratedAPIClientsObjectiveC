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
// Copyright (C) 2006-2017  Kaltura Inc.
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
+ (NSString*)CAPTION_CONTENT;
+ (NSString*)CAPTION_END_TIME;
+ (NSString*)CAPTION_START_TIME;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryFieldName : NSObject
+ (NSString*)CATEGORY_CONTRIBUTION_POLICY;
+ (NSString*)CATEGORY_CREATED_AT;
+ (NSString*)CATEGORY_DEPTH;
+ (NSString*)CATEGORY_DESCRIPTION;
+ (NSString*)CATEGORY_DIRECT_ENTRIES_COUNT;
+ (NSString*)CATEGORY_DIRECT_SUB_CATEGORIES_COUNT;
+ (NSString*)CATEGORY_DISPLAY_IN_SEARCH;
+ (NSString*)CATEGORY_ENTRIES_COUNT;
+ (NSString*)CATEGORY_FULL_IDS;
+ (NSString*)CATEGORY_FULL_NAME;
+ (NSString*)CATEGORY_INHERITANCE_TYPE;
+ (NSString*)CATEGORY_INHERITED_PARENT_ID;
+ (NSString*)CATEGORY_KUSER_ID;
+ (NSString*)CATEGORY_KUSER_IDS;
+ (NSString*)CATEGORY_MEMBERS_COUNT;
+ (NSString*)CATEGORY_MODERATION;
+ (NSString*)CATEGORY_NAME;
+ (NSString*)CATEGORY_PARENT_ID;
+ (NSString*)CATEGORY_PENDING_ENTRIES_COUNT;
+ (NSString*)CATEGORY_PENDING_MEMBERS_COUNT;
+ (NSString*)CATEGORY_PRIVACY;
+ (NSString*)CATEGORY_PRIVACY_CONTEXT;
+ (NSString*)CATEGORY_PRIVACY_CONTEXTS;
+ (NSString*)CATEGORY_REFERENCE_ID;
+ (NSString*)CATEGORY_TAGS;
+ (NSString*)CATEGORY_UPDATED_AT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryOrderByFieldName : NSObject
+ (NSString*)CATEGORY_CREATED_AT;
+ (NSString*)CATEGORY_UPDATED_AT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCuePointFieldName : NSObject
+ (NSString*)CUE_POINT_ANSWERS;
+ (NSString*)CUE_POINT_END_TIME;
+ (NSString*)CUE_POINT_EXPLANATION;
+ (NSString*)CUE_POINT_HINT;
+ (NSString*)CUE_POINT_ID;
+ (NSString*)CUE_POINT_NAME;
+ (NSString*)CUE_POINT_QUESTION;
+ (NSString*)CUE_POINT_START_TIME;
+ (NSString*)CUE_POINT_SUB_TYPE;
+ (NSString*)CUE_POINT_TAGS;
+ (NSString*)CUE_POINT_TEXT;
+ (NSString*)CUE_POINT_TYPE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryFieldName : NSObject
+ (NSString*)ENTRY_ID;
+ (NSString*)ENTRY_ACCESS_CONTROL_ID;
+ (NSString*)ENTRY_ADMIN_TAGS;
+ (NSString*)ENTRY_CATEGORIES;
+ (NSString*)ENTRY_CATEGORY_IDS;
+ (NSString*)ENTRY_CONVERSION_PROFILE_ID;
+ (NSString*)ENTRY_CREATED_AT;
+ (NSString*)ENTRY_CREATOR_ID;
+ (NSString*)ENTRY_CREDIT;
+ (NSString*)ENTRY_DESCRIPTION;
+ (NSString*)ENTRY_DISPLAY_IN_SEARCH;
+ (NSString*)ENTRY_END_DATE;
+ (NSString*)ENTRY_ENTITLED_USER_EDIT;
+ (NSString*)ENTRY_ENTITLED_USER_PUBLISH;
+ (NSString*)ENTRY_TYPE;
+ (NSString*)ENTRY_LENGTH_IN_MSECS;
+ (NSString*)ENTRY_MEDIA_TYPE;
+ (NSString*)ENTRY_MODERATION_STATUS;
+ (NSString*)ENTRY_NAME;
+ (NSString*)ENTRY_PARENT_ENTRY_ID;
+ (NSString*)ENTRY_USER_ID;
+ (NSString*)ENTRY_PUSH_PUBLISH;
+ (NSString*)ENTRY_RECORDED_ENTRY_ID;
+ (NSString*)ENTRY_REDIRECT_ENTRY_ID;
+ (NSString*)ENTRY_REFERENCE_ID;
+ (NSString*)ENTRY_SITE_URL;
+ (NSString*)ENTRY_SOURCE_TYPE;
+ (NSString*)ENTRY_START_DATE;
+ (NSString*)ENTRY_TAGS;
+ (NSString*)ENTRY_TEMPLATE_ENTRY_ID;
+ (NSString*)ENTRY_UPDATED_AT;
+ (NSString*)ENTRY_VIEWS;
+ (NSString*)ENTRY_VOTES;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryOrderByFieldName : NSObject
+ (NSString*)ENTRY_CREATED_AT;
+ (NSString*)ENTRY_END_DATE;
+ (NSString*)ENTRY_NAME;
+ (NSString*)ENTRY_START_DATE;
+ (NSString*)ENTRY_UPDATED_AT;
+ (NSString*)ENTRY_VIEWS;
+ (NSString*)ENTRY_VOTES;
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
+ (NSString*)USER_CREATED_AT;
+ (NSString*)USER_EMAIL;
+ (NSString*)USER_FIRST_NAME;
+ (NSString*)USER_GROUP_IDS;
+ (NSString*)USER_TYPE;
+ (NSString*)USER_LAST_NAME;
+ (NSString*)USER_PERMISSION_NAMES;
+ (NSString*)USER_ROLE_IDS;
+ (NSString*)USER_SCREEN_NAME;
+ (NSString*)USER_TAGS;
+ (NSString*)USER_UPDATED_AT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserOrderByFieldName : NSObject
+ (NSString*)USER_CREATED_AT;
+ (NSString*)USER_UPDATED_AT;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaESearchBaseItem : KalturaObjectBase
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchItemData : KalturaObjectBase
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
@interface KalturaESearchObject : KalturaObjectBase
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
@interface KalturaESearchResult : KalturaObjectBase
@property (nonatomic,retain) KalturaObjectBase* object;
@property (nonatomic,retain) NSMutableArray* itemsData;	// of KalturaESearchItemDataResult elements
- (KalturaFieldType)getTypeOfObject;
- (NSString*)getObjectTypeOfObject;
- (KalturaFieldType)getTypeOfItemsData;
- (NSString*)getObjectTypeOfItemsData;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchResponse : KalturaObjectBase
@property (nonatomic,assign,readonly) int totalCount;
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaESearchResult elements
- (KalturaFieldType)getTypeOfTotalCount;
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
- (void)setTotalCountFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCaptionItemData : KalturaESearchItemData
@property (nonatomic,copy) NSString* line;
@property (nonatomic,assign) int startsAt;
@property (nonatomic,assign) int endsAt;
@property (nonatomic,copy) NSString* language;
@property (nonatomic,copy) NSString* captionAssetId;
- (KalturaFieldType)getTypeOfLine;
- (KalturaFieldType)getTypeOfStartsAt;
- (KalturaFieldType)getTypeOfEndsAt;
- (KalturaFieldType)getTypeOfLanguage;
- (KalturaFieldType)getTypeOfCaptionAssetId;
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
@interface KalturaESearchCategoryResult : KalturaESearchResult
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCuePointItemData : KalturaESearchItemData
@property (nonatomic,copy) NSString* cuePointType;
@property (nonatomic,copy) NSString* id;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* text;
@property (nonatomic,copy) NSString* tags;
@property (nonatomic,copy) NSString* startTime;
@property (nonatomic,copy) NSString* endTime;
@property (nonatomic,copy) NSString* subType;
@property (nonatomic,copy) NSString* question;
@property (nonatomic,copy) NSString* answers;
@property (nonatomic,copy) NSString* hint;
@property (nonatomic,copy) NSString* explanation;
- (KalturaFieldType)getTypeOfCuePointType;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfText;
- (KalturaFieldType)getTypeOfTags;
- (KalturaFieldType)getTypeOfStartTime;
- (KalturaFieldType)getTypeOfEndTime;
- (KalturaFieldType)getTypeOfSubType;
- (KalturaFieldType)getTypeOfQuestion;
- (KalturaFieldType)getTypeOfAnswers;
- (KalturaFieldType)getTypeOfHint;
- (KalturaFieldType)getTypeOfExplanation;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryOrderByItem : KalturaESearchOrderByItem
@property (nonatomic,copy) NSString* sortField;	// enum KalturaESearchEntryOrderByFieldName
- (KalturaFieldType)getTypeOfSortField;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryResult : KalturaESearchResult
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchItem : KalturaESearchBaseItem
@property (nonatomic,copy) NSString* searchTerm;
@property (nonatomic,assign) int itemType;	// enum KalturaESearchItemType
@property (nonatomic,retain) KalturaESearchRange* range;
- (KalturaFieldType)getTypeOfSearchTerm;
- (KalturaFieldType)getTypeOfItemType;
- (KalturaFieldType)getTypeOfRange;
- (NSString*)getObjectTypeOfRange;
- (void)setItemTypeFromString:(NSString*)aPropVal;
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
@interface KalturaESearchOperator : KalturaESearchBaseItem
@property (nonatomic,assign) int operator;	// enum KalturaESearchOperatorType
@property (nonatomic,retain) NSMutableArray* searchItems;	// of KalturaESearchBaseItem elements
- (KalturaFieldType)getTypeOfOperator;
- (KalturaFieldType)getTypeOfSearchItems;
- (NSString*)getObjectTypeOfSearchItems;
- (void)setOperatorFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchParams : KalturaESearchObject
@property (nonatomic,retain) KalturaESearchOperator* searchOperator;
@property (nonatomic,copy) NSString* objectStatuses;
@property (nonatomic,retain) KalturaESearchOrderBy* orderBy;
- (KalturaFieldType)getTypeOfSearchOperator;
- (NSString*)getObjectTypeOfSearchOperator;
- (KalturaFieldType)getTypeOfObjectStatuses;
- (KalturaFieldType)getTypeOfOrderBy;
- (NSString*)getObjectTypeOfOrderBy;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchQuery : KalturaESearchObject
@property (nonatomic,copy) NSString* eSearchQuery;
- (KalturaFieldType)getTypeOfESearchQuery;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserOrderByItem : KalturaESearchOrderByItem
@property (nonatomic,copy) NSString* sortField;	// enum KalturaESearchUserOrderByFieldName
- (KalturaFieldType)getTypeOfSortField;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserResult : KalturaESearchResult
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCaptionItem : KalturaESearchItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchCaptionFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCategoryItem : KalturaESearchItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchCategoryFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchCuePointItem : KalturaESearchItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchCuePointFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchEntryItem : KalturaESearchItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchEntryFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchMetadataItem : KalturaESearchItem
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
@interface KalturaESearchUnifiedItem : KalturaESearchItem
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchUserItem : KalturaESearchItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchUserFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaESearchService : KalturaServiceBase
- (NSMutableArray*)getAllowedSearchTypesWithSearchItem:(KalturaESearchItem*)aSearchItem;
- (KalturaESearchResponse*)searchCategoryWithSearchParams:(KalturaESearchObject*)aSearchParams withPager:(KalturaPager*)aPager;
- (KalturaESearchResponse*)searchCategoryWithSearchParams:(KalturaESearchObject*)aSearchParams;
- (KalturaESearchResponse*)searchEntryWithSearchParams:(KalturaESearchObject*)aSearchParams withPager:(KalturaPager*)aPager;
- (KalturaESearchResponse*)searchEntryWithSearchParams:(KalturaESearchObject*)aSearchParams;
- (KalturaESearchResponse*)searchUserWithSearchParams:(KalturaESearchObject*)aSearchParams withPager:(KalturaPager*)aPager;
- (KalturaESearchResponse*)searchUserWithSearchParams:(KalturaESearchObject*)aSearchParams;
@end

@interface KalturaElasticSearchClientPlugin : KalturaClientPlugin
{
	KalturaESearchService* _ESearch;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaESearchService* ESearch;
@end

