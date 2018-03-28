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
#import "KalturaElasticSearchClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaESearchItemType
+ (int)EXACT_MATCH
{
    return 1;
}
+ (int)PARTIAL
{
    return 2;
}
+ (int)STARTS_WITH
{
    return 3;
}
+ (int)EXISTS
{
    return 4;
}
+ (int)RANGE
{
    return 5;
}
@end

@implementation KalturaESearchOperatorType
+ (int)AND_OP
{
    return 1;
}
+ (int)OR_OP
{
    return 2;
}
+ (int)NOT_OP
{
    return 3;
}
@end

@implementation KalturaESearchCaptionFieldName
+ (NSString*)CONTENT
{
    return @"content";
}
+ (NSString*)END_TIME
{
    return @"end_time";
}
+ (NSString*)START_TIME
{
    return @"start_time";
}
@end

@implementation KalturaESearchCategoryEntryFieldName
+ (NSString*)ANCESTOR_ID
{
    return @"ancestor_id";
}
+ (NSString*)ANCESTOR_NAME
{
    return @"ancestor_name";
}
+ (NSString*)FULL_IDS
{
    return @"full_ids";
}
+ (NSString*)ID
{
    return @"id";
}
+ (NSString*)NAME
{
    return @"name";
}
@end

@implementation KalturaESearchCategoryFieldName
+ (NSString*)CONTRIBUTION_POLICY
{
    return @"contribution_policy";
}
+ (NSString*)CREATED_AT
{
    return @"created_at";
}
+ (NSString*)DEPTH
{
    return @"depth";
}
+ (NSString*)DESCRIPTION
{
    return @"description";
}
+ (NSString*)DIRECT_ENTRIES_COUNT
{
    return @"direct_entries_count";
}
+ (NSString*)DIRECT_SUB_CATEGORIES_COUNT
{
    return @"direct_sub_categories_count";
}
+ (NSString*)DISPLAY_IN_SEARCH
{
    return @"display_in_search";
}
+ (NSString*)ENTRIES_COUNT
{
    return @"entries_count";
}
+ (NSString*)FULL_IDS
{
    return @"full_ids";
}
+ (NSString*)FULL_NAME
{
    return @"full_name";
}
+ (NSString*)ID
{
    return @"id";
}
+ (NSString*)INHERITANCE_TYPE
{
    return @"inheritance_type";
}
+ (NSString*)INHERITED_PARENT_ID
{
    return @"inherited_parent_id";
}
+ (NSString*)MEMBERS_COUNT
{
    return @"members_count";
}
+ (NSString*)MODERATION
{
    return @"moderation";
}
+ (NSString*)NAME
{
    return @"name";
}
+ (NSString*)PARENT_ID
{
    return @"parent_id";
}
+ (NSString*)PENDING_ENTRIES_COUNT
{
    return @"pending_entries_count";
}
+ (NSString*)PENDING_MEMBERS_COUNT
{
    return @"pending_members_count";
}
+ (NSString*)PRIVACY
{
    return @"privacy";
}
+ (NSString*)PRIVACY_CONTEXT
{
    return @"privacy_context";
}
+ (NSString*)PRIVACY_CONTEXTS
{
    return @"privacy_contexts";
}
+ (NSString*)REFERENCE_ID
{
    return @"reference_id";
}
+ (NSString*)TAGS
{
    return @"tags";
}
+ (NSString*)UPDATED_AT
{
    return @"updated_at";
}
+ (NSString*)USER_ID
{
    return @"user_id";
}
+ (NSString*)USER_IDS
{
    return @"user_ids";
}
@end

@implementation KalturaESearchCategoryOrderByFieldName
+ (NSString*)CREATED_AT
{
    return @"created_at";
}
+ (NSString*)ENTRIES_COUNT
{
    return @"entries_count";
}
+ (NSString*)MEMBERS_COUNT
{
    return @"members_count";
}
+ (NSString*)NAME
{
    return @"name";
}
+ (NSString*)UPDATED_AT
{
    return @"updated_at";
}
@end

@implementation KalturaESearchCuePointFieldName
+ (NSString*)ANSWERS
{
    return @"answers";
}
+ (NSString*)END_TIME
{
    return @"end_time";
}
+ (NSString*)EXPLANATION
{
    return @"explanation";
}
+ (NSString*)HINT
{
    return @"hint";
}
+ (NSString*)ID
{
    return @"id";
}
+ (NSString*)NAME
{
    return @"name";
}
+ (NSString*)QUESTION
{
    return @"question";
}
+ (NSString*)START_TIME
{
    return @"start_time";
}
+ (NSString*)SUB_TYPE
{
    return @"sub_type";
}
+ (NSString*)TAGS
{
    return @"tags";
}
+ (NSString*)TEXT
{
    return @"text";
}
+ (NSString*)TYPE
{
    return @"type";
}
@end

@implementation KalturaESearchEntryFieldName
+ (NSString*)ACCESS_CONTROL_ID
{
    return @"access_control_id";
}
+ (NSString*)ADMIN_TAGS
{
    return @"admin_tags";
}
+ (NSString*)CONVERSION_PROFILE_ID
{
    return @"conversion_profile_id";
}
+ (NSString*)CREATED_AT
{
    return @"created_at";
}
+ (NSString*)CREATOR_ID
{
    return @"creator_kuser_id";
}
+ (NSString*)CREDIT
{
    return @"credit";
}
+ (NSString*)DESCRIPTION
{
    return @"description";
}
+ (NSString*)END_DATE
{
    return @"end_date";
}
+ (NSString*)ENTITLED_USER_EDIT
{
    return @"entitled_kusers_edit";
}
+ (NSString*)ENTITLED_USER_PUBLISH
{
    return @"entitled_kusers_publish";
}
+ (NSString*)ENTRY_TYPE
{
    return @"entry_type";
}
+ (NSString*)EXTERNAL_SOURCE_TYPE
{
    return @"external_source_type";
}
+ (NSString*)ID
{
    return @"id";
}
+ (NSString*)IS_LIVE
{
    return @"is_live";
}
+ (NSString*)IS_QUIZ
{
    return @"is_quiz";
}
+ (NSString*)USER_ID
{
    return @"kuser_id";
}
+ (NSString*)LENGTH_IN_MSECS
{
    return @"length_in_msecs";
}
+ (NSString*)MEDIA_TYPE
{
    return @"media_type";
}
+ (NSString*)MODERATION_STATUS
{
    return @"moderation_status";
}
+ (NSString*)NAME
{
    return @"name";
}
+ (NSString*)PARENT_ENTRY_ID
{
    return @"parent_id";
}
+ (NSString*)PUSH_PUBLISH
{
    return @"push_publish";
}
+ (NSString*)RECORDED_ENTRY_ID
{
    return @"recorded_entry_id";
}
+ (NSString*)REDIRECT_ENTRY_ID
{
    return @"redirect_entry_id";
}
+ (NSString*)REFERENCE_ID
{
    return @"reference_id";
}
+ (NSString*)ROOT_ID
{
    return @"root_id";
}
+ (NSString*)SITE_URL
{
    return @"site_url";
}
+ (NSString*)SOURCE_TYPE
{
    return @"source_type";
}
+ (NSString*)START_DATE
{
    return @"start_date";
}
+ (NSString*)TAGS
{
    return @"tags";
}
+ (NSString*)TEMPLATE_ENTRY_ID
{
    return @"template_entry_id";
}
+ (NSString*)UPDATED_AT
{
    return @"updated_at";
}
+ (NSString*)USER_NAMES
{
    return @"user_names";
}
@end

@implementation KalturaESearchEntryOrderByFieldName
+ (NSString*)CREATED_AT
{
    return @"created_at";
}
+ (NSString*)END_DATE
{
    return @"end_date";
}
+ (NSString*)LAST_PLAYED_AT
{
    return @"last_played_at";
}
+ (NSString*)NAME
{
    return @"name";
}
+ (NSString*)PLAYS
{
    return @"plays";
}
+ (NSString*)START_DATE
{
    return @"start_date";
}
+ (NSString*)UPDATED_AT
{
    return @"updated_at";
}
+ (NSString*)VIEWS
{
    return @"views";
}
+ (NSString*)VOTES
{
    return @"votes";
}
@end

@implementation KalturaESearchSortOrder
+ (NSString*)ORDER_BY_ASC
{
    return @"asc";
}
+ (NSString*)ORDER_BY_DESC
{
    return @"desc";
}
@end

@implementation KalturaESearchUserFieldName
+ (NSString*)CREATED_AT
{
    return @"created_at";
}
+ (NSString*)EMAIL
{
    return @"email";
}
+ (NSString*)FIRST_NAME
{
    return @"first_name";
}
+ (NSString*)GROUP_IDS
{
    return @"group_ids";
}
+ (NSString*)LAST_NAME
{
    return @"last_name";
}
+ (NSString*)PERMISSION_NAMES
{
    return @"permission_names";
}
+ (NSString*)ROLE_IDS
{
    return @"role_ids";
}
+ (NSString*)SCREEN_NAME
{
    return @"screen_name";
}
+ (NSString*)TAGS
{
    return @"tags";
}
+ (NSString*)UPDATED_AT
{
    return @"updated_at";
}
+ (NSString*)TYPE
{
    return @"user_type";
}
@end

@implementation KalturaESearchUserOrderByFieldName
+ (NSString*)CREATED_AT
{
    return @"created_at";
}
+ (NSString*)UPDATED_AT
{
    return @"updated_at";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaESearchBaseItem
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchBaseItem"];
}

@end

@implementation KalturaESearchCategoryBaseItem
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCategoryBaseItem"];
}

@end

@implementation KalturaESearchEntryBaseItem
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryBaseItem"];
}

@end

@implementation KalturaESearchEntryBaseNestedObject
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryBaseNestedObject"];
}

@end

@implementation KalturaESearchEntryNestedBaseItem
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryNestedBaseItem"];
}

@end

@implementation KalturaESearchHighlight
@synthesize fieldName = _fieldName;
@synthesize hits = _hits;

- (KalturaFieldType)getTypeOfFieldName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfHits
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfHits
{
    return @"KalturaString";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchHighlight"];
    [aParams addIfDefinedKey:@"fieldName" withString:self.fieldName];
    [aParams addIfDefinedKey:@"hits" withArray:self.hits];
}

- (void)dealloc
{
    [self->_fieldName release];
    [self->_hits release];
    [super dealloc];
}

@end

@implementation KalturaESearchItemData
@synthesize highlight = _highlight;

- (KalturaFieldType)getTypeOfHighlight
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfHighlight
{
    return @"KalturaESearchHighlight";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchItemData"];
    [aParams addIfDefinedKey:@"highlight" withArray:self.highlight];
}

- (void)dealloc
{
    [self->_highlight release];
    [super dealloc];
}

@end

@implementation KalturaESearchItemDataResult
@synthesize totalCount = _totalCount;
@synthesize items = _items;
@synthesize itemsType = _itemsType;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_totalCount = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfTotalCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfItems
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfItems
{
    return @"KalturaESearchItemData";
}

- (KalturaFieldType)getTypeOfItemsType
{
    return KFT_String;
}

- (void)setTotalCountFromString:(NSString*)aPropVal
{
    self.totalCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchItemDataResult"];
    [aParams addIfDefinedKey:@"totalCount" withInt:self.totalCount];
    [aParams addIfDefinedKey:@"items" withArray:self.items];
    [aParams addIfDefinedKey:@"itemsType" withString:self.itemsType];
}

- (void)dealloc
{
    [self->_items release];
    [self->_itemsType release];
    [super dealloc];
}

@end

@implementation KalturaESearchOrderByItem
@synthesize sortOrder = _sortOrder;

- (KalturaFieldType)getTypeOfSortOrder
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchOrderByItem"];
    [aParams addIfDefinedKey:@"sortOrder" withString:self.sortOrder];
}

- (void)dealloc
{
    [self->_sortOrder release];
    [super dealloc];
}

@end

@implementation KalturaESearchOrderBy
@synthesize orderItems = _orderItems;

- (KalturaFieldType)getTypeOfOrderItems
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfOrderItems
{
    return @"KalturaESearchOrderByItem";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchOrderBy"];
    [aParams addIfDefinedKey:@"orderItems" withArray:self.orderItems];
}

- (void)dealloc
{
    [self->_orderItems release];
    [super dealloc];
}

@end

@implementation KalturaESearchParams
@synthesize objectStatuses = _objectStatuses;
@synthesize objectId = _objectId;
@synthesize orderBy = _orderBy;

- (KalturaFieldType)getTypeOfObjectStatuses
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfObjectId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOrderBy
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfOrderBy
{
    return @"KalturaESearchOrderBy";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchParams"];
    [aParams addIfDefinedKey:@"objectStatuses" withString:self.objectStatuses];
    [aParams addIfDefinedKey:@"objectId" withString:self.objectId];
    [aParams addIfDefinedKey:@"orderBy" withObject:self.orderBy];
}

- (void)dealloc
{
    [self->_objectStatuses release];
    [self->_objectId release];
    [self->_orderBy release];
    [super dealloc];
}

@end

@implementation KalturaESearchRange
@synthesize greaterThanOrEqual = _greaterThanOrEqual;
@synthesize lessThanOrEqual = _lessThanOrEqual;
@synthesize greaterThan = _greaterThan;
@synthesize lessThan = _lessThan;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_greaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_lessThanOrEqual = KALTURA_UNDEF_INT;
    self->_greaterThan = KALTURA_UNDEF_INT;
    self->_lessThan = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfGreaterThan
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLessThan
{
    return KFT_Int;
}

- (void)setGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.greaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.lessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setGreaterThanFromString:(NSString*)aPropVal
{
    self.greaterThan = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLessThanFromString:(NSString*)aPropVal
{
    self.lessThan = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchRange"];
    [aParams addIfDefinedKey:@"greaterThanOrEqual" withInt:self.greaterThanOrEqual];
    [aParams addIfDefinedKey:@"lessThanOrEqual" withInt:self.lessThanOrEqual];
    [aParams addIfDefinedKey:@"greaterThan" withInt:self.greaterThan];
    [aParams addIfDefinedKey:@"lessThan" withInt:self.lessThan];
}

@end

@implementation KalturaESearchResult
@synthesize highlight = _highlight;
@synthesize itemsData = _itemsData;

- (KalturaFieldType)getTypeOfHighlight
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfHighlight
{
    return @"KalturaESearchHighlight";
}

- (KalturaFieldType)getTypeOfItemsData
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfItemsData
{
    return @"KalturaESearchItemDataResult";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchResult"];
    [aParams addIfDefinedKey:@"highlight" withArray:self.highlight];
    [aParams addIfDefinedKey:@"itemsData" withArray:self.itemsData];
}

- (void)dealloc
{
    [self->_highlight release];
    [self->_itemsData release];
    [super dealloc];
}

@end

@interface KalturaESearchResponse()
@property (nonatomic,assign) int totalCount;
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaESearchResponse
@synthesize totalCount = _totalCount;
@synthesize objects = _objects;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_totalCount = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfTotalCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaESearchResult";
}

- (void)setTotalCountFromString:(NSString*)aPropVal
{
    self.totalCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaESearchUserBaseItem
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchUserBaseItem"];
}

@end

@implementation KalturaESearchCaptionItemData
@synthesize line = _line;
@synthesize startsAt = _startsAt;
@synthesize endsAt = _endsAt;
@synthesize language = _language;
@synthesize captionAssetId = _captionAssetId;
@synthesize label = _label;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_startsAt = KALTURA_UNDEF_INT;
    self->_endsAt = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfLine
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStartsAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndsAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionAssetId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLabel
{
    return KFT_String;
}

- (void)setStartsAtFromString:(NSString*)aPropVal
{
    self.startsAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndsAtFromString:(NSString*)aPropVal
{
    self.endsAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCaptionItemData"];
    [aParams addIfDefinedKey:@"line" withString:self.line];
    [aParams addIfDefinedKey:@"startsAt" withInt:self.startsAt];
    [aParams addIfDefinedKey:@"endsAt" withInt:self.endsAt];
    [aParams addIfDefinedKey:@"language" withString:self.language];
    [aParams addIfDefinedKey:@"captionAssetId" withString:self.captionAssetId];
    [aParams addIfDefinedKey:@"label" withString:self.label];
}

- (void)dealloc
{
    [self->_line release];
    [self->_language release];
    [self->_captionAssetId release];
    [self->_label release];
    [super dealloc];
}

@end

@implementation KalturaESearchCategoryOrderByItem
@synthesize sortField = _sortField;

- (KalturaFieldType)getTypeOfSortField
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCategoryOrderByItem"];
    [aParams addIfDefinedKey:@"sortField" withString:self.sortField];
}

- (void)dealloc
{
    [self->_sortField release];
    [super dealloc];
}

@end

@implementation KalturaESearchCategoryOperator
@synthesize operator = _operator;
@synthesize searchItems = _searchItems;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_operator = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfOperator
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSearchItems
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfSearchItems
{
    return @"KalturaESearchCategoryBaseItem";
}

- (void)setOperatorFromString:(NSString*)aPropVal
{
    self.operator = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCategoryOperator"];
    [aParams addIfDefinedKey:@"operator" withInt:self.operator];
    [aParams addIfDefinedKey:@"searchItems" withArray:self.searchItems];
}

- (void)dealloc
{
    [self->_searchItems release];
    [super dealloc];
}

@end

@implementation KalturaESearchCategoryParams
@synthesize searchOperator = _searchOperator;

- (KalturaFieldType)getTypeOfSearchOperator
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfSearchOperator
{
    return @"KalturaESearchCategoryOperator";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCategoryParams"];
    [aParams addIfDefinedKey:@"searchOperator" withObject:self.searchOperator];
}

- (void)dealloc
{
    [self->_searchOperator release];
    [super dealloc];
}

@end

@implementation KalturaESearchCategoryResult
@synthesize object = _object;

- (KalturaFieldType)getTypeOfObject
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfObject
{
    return @"KalturaCategory";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCategoryResult"];
    [aParams addIfDefinedKey:@"object" withObject:self.object];
}

- (void)dealloc
{
    [self->_object release];
    [super dealloc];
}

@end

@implementation KalturaESearchCuePointItemData
@synthesize cuePointType = _cuePointType;
@synthesize id = _id;
@synthesize name = _name;
@synthesize text = _text;
@synthesize tags = _tags;
@synthesize startTime = _startTime;
@synthesize endTime = _endTime;
@synthesize subType = _subType;
@synthesize question = _question;
@synthesize answers = _answers;
@synthesize hint = _hint;
@synthesize explanation = _explanation;
@synthesize assetId = _assetId;

- (KalturaFieldType)getTypeOfCuePointType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfText
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTags
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfTags
{
    return @"KalturaString";
}

- (KalturaFieldType)getTypeOfStartTime
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEndTime
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSubType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfQuestion
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAnswers
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfAnswers
{
    return @"KalturaString";
}

- (KalturaFieldType)getTypeOfHint
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExplanation
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCuePointItemData"];
    [aParams addIfDefinedKey:@"cuePointType" withString:self.cuePointType];
    [aParams addIfDefinedKey:@"id" withString:self.id];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"text" withString:self.text];
    [aParams addIfDefinedKey:@"tags" withArray:self.tags];
    [aParams addIfDefinedKey:@"startTime" withString:self.startTime];
    [aParams addIfDefinedKey:@"endTime" withString:self.endTime];
    [aParams addIfDefinedKey:@"subType" withString:self.subType];
    [aParams addIfDefinedKey:@"question" withString:self.question];
    [aParams addIfDefinedKey:@"answers" withArray:self.answers];
    [aParams addIfDefinedKey:@"hint" withString:self.hint];
    [aParams addIfDefinedKey:@"explanation" withString:self.explanation];
    [aParams addIfDefinedKey:@"assetId" withString:self.assetId];
}

- (void)dealloc
{
    [self->_cuePointType release];
    [self->_id release];
    [self->_name release];
    [self->_text release];
    [self->_tags release];
    [self->_startTime release];
    [self->_endTime release];
    [self->_subType release];
    [self->_question release];
    [self->_answers release];
    [self->_hint release];
    [self->_explanation release];
    [self->_assetId release];
    [super dealloc];
}

@end

@implementation KalturaESearchEntryOrderByItem
@synthesize sortField = _sortField;

- (KalturaFieldType)getTypeOfSortField
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryOrderByItem"];
    [aParams addIfDefinedKey:@"sortField" withString:self.sortField];
}

- (void)dealloc
{
    [self->_sortField release];
    [super dealloc];
}

@end

@implementation KalturaESearchEntryOperator
@synthesize operator = _operator;
@synthesize searchItems = _searchItems;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_operator = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfOperator
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSearchItems
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfSearchItems
{
    return @"KalturaESearchEntryBaseItem";
}

- (void)setOperatorFromString:(NSString*)aPropVal
{
    self.operator = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryOperator"];
    [aParams addIfDefinedKey:@"operator" withInt:self.operator];
    [aParams addIfDefinedKey:@"searchItems" withArray:self.searchItems];
}

- (void)dealloc
{
    [self->_searchItems release];
    [super dealloc];
}

@end

@implementation KalturaESearchEntryParams
@synthesize searchOperator = _searchOperator;

- (KalturaFieldType)getTypeOfSearchOperator
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfSearchOperator
{
    return @"KalturaESearchEntryOperator";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryParams"];
    [aParams addIfDefinedKey:@"searchOperator" withObject:self.searchOperator];
}

- (void)dealloc
{
    [self->_searchOperator release];
    [super dealloc];
}

@end

@implementation KalturaESearchEntryResult
@synthesize object = _object;

- (KalturaFieldType)getTypeOfObject
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfObject
{
    return @"KalturaBaseEntry";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryResult"];
    [aParams addIfDefinedKey:@"object" withObject:self.object];
}

- (void)dealloc
{
    [self->_object release];
    [super dealloc];
}

@end

@implementation KalturaESearchMetadataItemData
@synthesize xpath = _xpath;
@synthesize metadataProfileId = _metadataProfileId;
@synthesize metadataFieldId = _metadataFieldId;
@synthesize valueText = _valueText;
@synthesize valueInt = _valueInt;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_metadataProfileId = KALTURA_UNDEF_INT;
    self->_metadataFieldId = KALTURA_UNDEF_INT;
    self->_valueInt = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfXpath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMetadataProfileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMetadataFieldId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfValueText
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfValueInt
{
    return KFT_Int;
}

- (void)setMetadataProfileIdFromString:(NSString*)aPropVal
{
    self.metadataProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMetadataFieldIdFromString:(NSString*)aPropVal
{
    self.metadataFieldId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setValueIntFromString:(NSString*)aPropVal
{
    self.valueInt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchMetadataItemData"];
    [aParams addIfDefinedKey:@"xpath" withString:self.xpath];
    [aParams addIfDefinedKey:@"metadataProfileId" withInt:self.metadataProfileId];
    [aParams addIfDefinedKey:@"metadataFieldId" withInt:self.metadataFieldId];
    [aParams addIfDefinedKey:@"valueText" withString:self.valueText];
    [aParams addIfDefinedKey:@"valueInt" withInt:self.valueInt];
}

- (void)dealloc
{
    [self->_xpath release];
    [self->_valueText release];
    [super dealloc];
}

@end

@implementation KalturaESearchMetadataOrderByItem
@synthesize xpath = _xpath;
@synthesize metadataProfileId = _metadataProfileId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_metadataProfileId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfXpath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMetadataProfileId
{
    return KFT_Int;
}

- (void)setMetadataProfileIdFromString:(NSString*)aPropVal
{
    self.metadataProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchMetadataOrderByItem"];
    [aParams addIfDefinedKey:@"xpath" withString:self.xpath];
    [aParams addIfDefinedKey:@"metadataProfileId" withInt:self.metadataProfileId];
}

- (void)dealloc
{
    [self->_xpath release];
    [super dealloc];
}

@end

@implementation KalturaESearchUserOrderByItem
@synthesize sortField = _sortField;

- (KalturaFieldType)getTypeOfSortField
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchUserOrderByItem"];
    [aParams addIfDefinedKey:@"sortField" withString:self.sortField];
}

- (void)dealloc
{
    [self->_sortField release];
    [super dealloc];
}

@end

@implementation KalturaESearchUserOperator
@synthesize operator = _operator;
@synthesize searchItems = _searchItems;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_operator = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfOperator
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSearchItems
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfSearchItems
{
    return @"KalturaESearchUserBaseItem";
}

- (void)setOperatorFromString:(NSString*)aPropVal
{
    self.operator = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchUserOperator"];
    [aParams addIfDefinedKey:@"operator" withInt:self.operator];
    [aParams addIfDefinedKey:@"searchItems" withArray:self.searchItems];
}

- (void)dealloc
{
    [self->_searchItems release];
    [super dealloc];
}

@end

@implementation KalturaESearchUserParams
@synthesize searchOperator = _searchOperator;

- (KalturaFieldType)getTypeOfSearchOperator
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfSearchOperator
{
    return @"KalturaESearchUserOperator";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchUserParams"];
    [aParams addIfDefinedKey:@"searchOperator" withObject:self.searchOperator];
}

- (void)dealloc
{
    [self->_searchOperator release];
    [super dealloc];
}

@end

@implementation KalturaESearchUserResult
@synthesize object = _object;

- (KalturaFieldType)getTypeOfObject
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfObject
{
    return @"KalturaUser";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchUserResult"];
    [aParams addIfDefinedKey:@"object" withObject:self.object];
}

- (void)dealloc
{
    [self->_object release];
    [super dealloc];
}

@end

@implementation KalturaESearchAbstractCategoryItem
@synthesize searchTerm = _searchTerm;
@synthesize itemType = _itemType;
@synthesize range = _range;
@synthesize addHighlight = _addHighlight;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_itemType = KALTURA_UNDEF_INT;
    self->_addHighlight = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfSearchTerm
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRange
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfRange
{
    return @"KalturaESearchRange";
}

- (KalturaFieldType)getTypeOfAddHighlight
{
    return KFT_Bool;
}

- (void)setItemTypeFromString:(NSString*)aPropVal
{
    self.itemType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAddHighlightFromString:(NSString*)aPropVal
{
    self.addHighlight = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchAbstractCategoryItem"];
    [aParams addIfDefinedKey:@"searchTerm" withString:self.searchTerm];
    [aParams addIfDefinedKey:@"itemType" withInt:self.itemType];
    [aParams addIfDefinedKey:@"range" withObject:self.range];
    [aParams addIfDefinedKey:@"addHighlight" withBool:self.addHighlight];
}

- (void)dealloc
{
    [self->_searchTerm release];
    [self->_range release];
    [super dealloc];
}

@end

@implementation KalturaESearchAbstractEntryItem
@synthesize searchTerm = _searchTerm;
@synthesize itemType = _itemType;
@synthesize range = _range;
@synthesize addHighlight = _addHighlight;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_itemType = KALTURA_UNDEF_INT;
    self->_addHighlight = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfSearchTerm
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRange
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfRange
{
    return @"KalturaESearchRange";
}

- (KalturaFieldType)getTypeOfAddHighlight
{
    return KFT_Bool;
}

- (void)setItemTypeFromString:(NSString*)aPropVal
{
    self.itemType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAddHighlightFromString:(NSString*)aPropVal
{
    self.addHighlight = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchAbstractEntryItem"];
    [aParams addIfDefinedKey:@"searchTerm" withString:self.searchTerm];
    [aParams addIfDefinedKey:@"itemType" withInt:self.itemType];
    [aParams addIfDefinedKey:@"range" withObject:self.range];
    [aParams addIfDefinedKey:@"addHighlight" withBool:self.addHighlight];
}

- (void)dealloc
{
    [self->_searchTerm release];
    [self->_range release];
    [super dealloc];
}

@end

@implementation KalturaESearchAbstractUserItem
@synthesize searchTerm = _searchTerm;
@synthesize itemType = _itemType;
@synthesize range = _range;
@synthesize addHighlight = _addHighlight;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_itemType = KALTURA_UNDEF_INT;
    self->_addHighlight = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfSearchTerm
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRange
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfRange
{
    return @"KalturaESearchRange";
}

- (KalturaFieldType)getTypeOfAddHighlight
{
    return KFT_Bool;
}

- (void)setItemTypeFromString:(NSString*)aPropVal
{
    self.itemType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAddHighlightFromString:(NSString*)aPropVal
{
    self.addHighlight = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchAbstractUserItem"];
    [aParams addIfDefinedKey:@"searchTerm" withString:self.searchTerm];
    [aParams addIfDefinedKey:@"itemType" withInt:self.itemType];
    [aParams addIfDefinedKey:@"range" withObject:self.range];
    [aParams addIfDefinedKey:@"addHighlight" withBool:self.addHighlight];
}

- (void)dealloc
{
    [self->_searchTerm release];
    [self->_range release];
    [super dealloc];
}

@end

@implementation KalturaESearchCategoryQuery
@synthesize eSearchQuery = _eSearchQuery;

- (KalturaFieldType)getTypeOfESearchQuery
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCategoryQuery"];
    [aParams addIfDefinedKey:@"eSearchQuery" withString:self.eSearchQuery];
}

- (void)dealloc
{
    [self->_eSearchQuery release];
    [super dealloc];
}

@end

@implementation KalturaESearchEntryQuery
@synthesize eSearchQuery = _eSearchQuery;

- (KalturaFieldType)getTypeOfESearchQuery
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryQuery"];
    [aParams addIfDefinedKey:@"eSearchQuery" withString:self.eSearchQuery];
}

- (void)dealloc
{
    [self->_eSearchQuery release];
    [super dealloc];
}

@end

@implementation KalturaESearchUserQuery
@synthesize eSearchQuery = _eSearchQuery;

- (KalturaFieldType)getTypeOfESearchQuery
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchUserQuery"];
    [aParams addIfDefinedKey:@"eSearchQuery" withString:self.eSearchQuery];
}

- (void)dealloc
{
    [self->_eSearchQuery release];
    [super dealloc];
}

@end

@implementation KalturaESearchCategoryEntryItem
@synthesize fieldName = _fieldName;
@synthesize categoryEntryStatus = _categoryEntryStatus;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_categoryEntryStatus = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfFieldName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCategoryEntryStatus
{
    return KFT_Int;
}

- (void)setCategoryEntryStatusFromString:(NSString*)aPropVal
{
    self.categoryEntryStatus = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCategoryEntryItem"];
    [aParams addIfDefinedKey:@"fieldName" withString:self.fieldName];
    [aParams addIfDefinedKey:@"categoryEntryStatus" withInt:self.categoryEntryStatus];
}

- (void)dealloc
{
    [self->_fieldName release];
    [super dealloc];
}

@end

@implementation KalturaESearchCategoryItem
@synthesize fieldName = _fieldName;

- (KalturaFieldType)getTypeOfFieldName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCategoryItem"];
    [aParams addIfDefinedKey:@"fieldName" withString:self.fieldName];
}

- (void)dealloc
{
    [self->_fieldName release];
    [super dealloc];
}

@end

@implementation KalturaESearchCategoryMetadataItem
@synthesize xpath = _xpath;
@synthesize metadataProfileId = _metadataProfileId;
@synthesize metadataFieldId = _metadataFieldId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_metadataProfileId = KALTURA_UNDEF_INT;
    self->_metadataFieldId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfXpath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMetadataProfileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMetadataFieldId
{
    return KFT_Int;
}

- (void)setMetadataProfileIdFromString:(NSString*)aPropVal
{
    self.metadataProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMetadataFieldIdFromString:(NSString*)aPropVal
{
    self.metadataFieldId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCategoryMetadataItem"];
    [aParams addIfDefinedKey:@"xpath" withString:self.xpath];
    [aParams addIfDefinedKey:@"metadataProfileId" withInt:self.metadataProfileId];
    [aParams addIfDefinedKey:@"metadataFieldId" withInt:self.metadataFieldId];
}

- (void)dealloc
{
    [self->_xpath release];
    [super dealloc];
}

@end

@implementation KalturaESearchEntryItem
@synthesize fieldName = _fieldName;

- (KalturaFieldType)getTypeOfFieldName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryItem"];
    [aParams addIfDefinedKey:@"fieldName" withString:self.fieldName];
}

- (void)dealloc
{
    [self->_fieldName release];
    [super dealloc];
}

@end

@implementation KalturaESearchUnifiedItem
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchUnifiedItem"];
}

@end

@implementation KalturaESearchUserItem
@synthesize fieldName = _fieldName;

- (KalturaFieldType)getTypeOfFieldName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchUserItem"];
    [aParams addIfDefinedKey:@"fieldName" withString:self.fieldName];
}

- (void)dealloc
{
    [self->_fieldName release];
    [super dealloc];
}

@end

@implementation KalturaESearchUserMetadataItem
@synthesize xpath = _xpath;
@synthesize metadataProfileId = _metadataProfileId;
@synthesize metadataFieldId = _metadataFieldId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_metadataProfileId = KALTURA_UNDEF_INT;
    self->_metadataFieldId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfXpath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMetadataProfileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMetadataFieldId
{
    return KFT_Int;
}

- (void)setMetadataProfileIdFromString:(NSString*)aPropVal
{
    self.metadataProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMetadataFieldIdFromString:(NSString*)aPropVal
{
    self.metadataFieldId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchUserMetadataItem"];
    [aParams addIfDefinedKey:@"xpath" withString:self.xpath];
    [aParams addIfDefinedKey:@"metadataProfileId" withInt:self.metadataProfileId];
    [aParams addIfDefinedKey:@"metadataFieldId" withInt:self.metadataFieldId];
}

- (void)dealloc
{
    [self->_xpath release];
    [super dealloc];
}

@end

@implementation KalturaESearchEntryAbstractNestedItem
@synthesize searchTerm = _searchTerm;
@synthesize itemType = _itemType;
@synthesize range = _range;
@synthesize addHighlight = _addHighlight;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_itemType = KALTURA_UNDEF_INT;
    self->_addHighlight = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfSearchTerm
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRange
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfRange
{
    return @"KalturaESearchRange";
}

- (KalturaFieldType)getTypeOfAddHighlight
{
    return KFT_Bool;
}

- (void)setItemTypeFromString:(NSString*)aPropVal
{
    self.itemType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAddHighlightFromString:(NSString*)aPropVal
{
    self.addHighlight = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryAbstractNestedItem"];
    [aParams addIfDefinedKey:@"searchTerm" withString:self.searchTerm];
    [aParams addIfDefinedKey:@"itemType" withInt:self.itemType];
    [aParams addIfDefinedKey:@"range" withObject:self.range];
    [aParams addIfDefinedKey:@"addHighlight" withBool:self.addHighlight];
}

- (void)dealloc
{
    [self->_searchTerm release];
    [self->_range release];
    [super dealloc];
}

@end

@implementation KalturaESearchNestedOperator
@synthesize operator = _operator;
@synthesize searchItems = _searchItems;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_operator = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfOperator
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSearchItems
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfSearchItems
{
    return @"KalturaESearchEntryNestedBaseItem";
}

- (void)setOperatorFromString:(NSString*)aPropVal
{
    self.operator = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchNestedOperator"];
    [aParams addIfDefinedKey:@"operator" withInt:self.operator];
    [aParams addIfDefinedKey:@"searchItems" withArray:self.searchItems];
}

- (void)dealloc
{
    [self->_searchItems release];
    [super dealloc];
}

@end

@implementation KalturaESearchCaptionItem
@synthesize fieldName = _fieldName;

- (KalturaFieldType)getTypeOfFieldName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCaptionItem"];
    [aParams addIfDefinedKey:@"fieldName" withString:self.fieldName];
}

- (void)dealloc
{
    [self->_fieldName release];
    [super dealloc];
}

@end

@implementation KalturaESearchCuePointItem
@synthesize fieldName = _fieldName;

- (KalturaFieldType)getTypeOfFieldName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCuePointItem"];
    [aParams addIfDefinedKey:@"fieldName" withString:self.fieldName];
}

- (void)dealloc
{
    [self->_fieldName release];
    [super dealloc];
}

@end

@implementation KalturaESearchEntryMetadataItem
@synthesize xpath = _xpath;
@synthesize metadataProfileId = _metadataProfileId;
@synthesize metadataFieldId = _metadataFieldId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_metadataProfileId = KALTURA_UNDEF_INT;
    self->_metadataFieldId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfXpath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMetadataProfileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMetadataFieldId
{
    return KFT_Int;
}

- (void)setMetadataProfileIdFromString:(NSString*)aPropVal
{
    self.metadataProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMetadataFieldIdFromString:(NSString*)aPropVal
{
    self.metadataFieldId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryMetadataItem"];
    [aParams addIfDefinedKey:@"xpath" withString:self.xpath];
    [aParams addIfDefinedKey:@"metadataProfileId" withInt:self.metadataProfileId];
    [aParams addIfDefinedKey:@"metadataFieldId" withInt:self.metadataFieldId];
}

- (void)dealloc
{
    [self->_xpath release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaESearchService
- (KalturaESearchResponse*)searchCategoryWithSearchParams:(KalturaESearchCategoryParams*)aSearchParams withPager:(KalturaPager*)aPager
{
    [self.client.params addIfDefinedKey:@"searchParams" withObject:aSearchParams];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"elasticsearch_esearch" withAction:@"searchCategory" withExpectedType:@"KalturaESearchResponse"];
}

- (KalturaESearchResponse*)searchCategoryWithSearchParams:(KalturaESearchCategoryParams*)aSearchParams
{
    return [self searchCategoryWithSearchParams:aSearchParams withPager:nil];
}

- (KalturaESearchResponse*)searchEntryWithSearchParams:(KalturaESearchEntryParams*)aSearchParams withPager:(KalturaPager*)aPager
{
    [self.client.params addIfDefinedKey:@"searchParams" withObject:aSearchParams];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"elasticsearch_esearch" withAction:@"searchEntry" withExpectedType:@"KalturaESearchResponse"];
}

- (KalturaESearchResponse*)searchEntryWithSearchParams:(KalturaESearchEntryParams*)aSearchParams
{
    return [self searchEntryWithSearchParams:aSearchParams withPager:nil];
}

- (KalturaESearchResponse*)searchUserWithSearchParams:(KalturaESearchUserParams*)aSearchParams withPager:(KalturaPager*)aPager
{
    [self.client.params addIfDefinedKey:@"searchParams" withObject:aSearchParams];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"elasticsearch_esearch" withAction:@"searchUser" withExpectedType:@"KalturaESearchResponse"];
}

- (KalturaESearchResponse*)searchUserWithSearchParams:(KalturaESearchUserParams*)aSearchParams
{
    return [self searchUserWithSearchParams:aSearchParams withPager:nil];
}

@end

@implementation KalturaElasticSearchClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaESearchService*)ESearch
{
    if (self->_ESearch == nil)
    	self->_ESearch = [[KalturaESearchService alloc] initWithClient:self.client];
    return self->_ESearch;
}

- (void)dealloc
{
    [self->_ESearch release];
	[super dealloc];
}

@end

