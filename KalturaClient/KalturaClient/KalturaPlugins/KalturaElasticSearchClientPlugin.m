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
+ (NSString*)CAPTION_CONTENT
{
    return @"caption_assets.lines.content";
}
+ (NSString*)CAPTION_END_TIME
{
    return @"caption_assets.lines.end_time";
}
+ (NSString*)CAPTION_START_TIME
{
    return @"caption_assets.lines.start_time";
}
@end

@implementation KalturaESearchCategoryFieldName
+ (NSString*)CATEGORY_CONTRIBUTION_POLICY
{
    return @"contribution_policy";
}
+ (NSString*)CATEGORY_CREATED_AT
{
    return @"created_at";
}
+ (NSString*)CATEGORY_DEPTH
{
    return @"depth";
}
+ (NSString*)CATEGORY_DESCRIPTION
{
    return @"description";
}
+ (NSString*)CATEGORY_DIRECT_ENTRIES_COUNT
{
    return @"direct_entries_count";
}
+ (NSString*)CATEGORY_DIRECT_SUB_CATEGORIES_COUNT
{
    return @"direct_sub_categories_count";
}
+ (NSString*)CATEGORY_DISPLAY_IN_SEARCH
{
    return @"display_in_search";
}
+ (NSString*)CATEGORY_ENTRIES_COUNT
{
    return @"entries_count";
}
+ (NSString*)CATEGORY_FULL_IDS
{
    return @"full_ids";
}
+ (NSString*)CATEGORY_FULL_NAME
{
    return @"full_name";
}
+ (NSString*)CATEGORY_INHERITANCE_TYPE
{
    return @"inheritance_type";
}
+ (NSString*)CATEGORY_INHERITED_PARENT_ID
{
    return @"inherited_parent_id";
}
+ (NSString*)CATEGORY_KUSER_ID
{
    return @"kuser_id";
}
+ (NSString*)CATEGORY_KUSER_IDS
{
    return @"kuser_ids";
}
+ (NSString*)CATEGORY_MEMBERS_COUNT
{
    return @"members_count";
}
+ (NSString*)CATEGORY_MODERATION
{
    return @"moderation";
}
+ (NSString*)CATEGORY_NAME
{
    return @"name";
}
+ (NSString*)CATEGORY_PARENT_ID
{
    return @"parent_id";
}
+ (NSString*)CATEGORY_PENDING_ENTRIES_COUNT
{
    return @"pending_entries_count";
}
+ (NSString*)CATEGORY_PENDING_MEMBERS_COUNT
{
    return @"pending_members_count";
}
+ (NSString*)CATEGORY_PRIVACY
{
    return @"privacy";
}
+ (NSString*)CATEGORY_PRIVACY_CONTEXT
{
    return @"privacy_context";
}
+ (NSString*)CATEGORY_PRIVACY_CONTEXTS
{
    return @"privacy_contexts";
}
+ (NSString*)CATEGORY_REFERENCE_ID
{
    return @"reference_id";
}
+ (NSString*)CATEGORY_TAGS
{
    return @"tags";
}
+ (NSString*)CATEGORY_UPDATED_AT
{
    return @"updated_at";
}
@end

@implementation KalturaESearchCategoryOrderByFieldName
+ (NSString*)CATEGORY_CREATED_AT
{
    return @"created_at";
}
+ (NSString*)CATEGORY_UPDATED_AT
{
    return @"updated_at";
}
@end

@implementation KalturaESearchCuePointFieldName
+ (NSString*)CUE_POINT_ANSWERS
{
    return @"cue_points.cue_point_answers";
}
+ (NSString*)CUE_POINT_END_TIME
{
    return @"cue_points.cue_point_end_time";
}
+ (NSString*)CUE_POINT_EXPLANATION
{
    return @"cue_points.cue_point_explanation";
}
+ (NSString*)CUE_POINT_HINT
{
    return @"cue_points.cue_point_hint";
}
+ (NSString*)CUE_POINT_ID
{
    return @"cue_points.cue_point_id";
}
+ (NSString*)CUE_POINT_NAME
{
    return @"cue_points.cue_point_name";
}
+ (NSString*)CUE_POINT_QUESTION
{
    return @"cue_points.cue_point_question";
}
+ (NSString*)CUE_POINT_START_TIME
{
    return @"cue_points.cue_point_start_time";
}
+ (NSString*)CUE_POINT_SUB_TYPE
{
    return @"cue_points.cue_point_sub_type";
}
+ (NSString*)CUE_POINT_TAGS
{
    return @"cue_points.cue_point_tags";
}
+ (NSString*)CUE_POINT_TEXT
{
    return @"cue_points.cue_point_text";
}
+ (NSString*)CUE_POINT_TYPE
{
    return @"cue_points.cue_point_type";
}
@end

@implementation KalturaESearchEntryFieldName
+ (NSString*)ENTRY_ID
{
    return @"_id";
}
+ (NSString*)ENTRY_ACCESS_CONTROL_ID
{
    return @"access_control_id";
}
+ (NSString*)ENTRY_ADMIN_TAGS
{
    return @"admin_tags";
}
+ (NSString*)ENTRY_CATEGORIES
{
    return @"categories";
}
+ (NSString*)ENTRY_CATEGORY_IDS
{
    return @"category_ids";
}
+ (NSString*)ENTRY_CONVERSION_PROFILE_ID
{
    return @"conversion_profile_id";
}
+ (NSString*)ENTRY_CREATED_AT
{
    return @"created_at";
}
+ (NSString*)ENTRY_CREATOR_ID
{
    return @"creator_puser_id";
}
+ (NSString*)ENTRY_CREDIT
{
    return @"credit";
}
+ (NSString*)ENTRY_DESCRIPTION
{
    return @"description";
}
+ (NSString*)ENTRY_DISPLAY_IN_SEARCH
{
    return @"display_in_search";
}
+ (NSString*)ENTRY_END_DATE
{
    return @"end_date";
}
+ (NSString*)ENTRY_ENTITLED_USER_EDIT
{
    return @"entitled_pusers_edit";
}
+ (NSString*)ENTRY_ENTITLED_USER_PUBLISH
{
    return @"entitled_pusers_publish";
}
+ (NSString*)ENTRY_TYPE
{
    return @"entry_type";
}
+ (NSString*)ENTRY_LENGTH_IN_MSECS
{
    return @"length_in_msecs";
}
+ (NSString*)ENTRY_MEDIA_TYPE
{
    return @"media_type";
}
+ (NSString*)ENTRY_MODERATION_STATUS
{
    return @"moderation_status";
}
+ (NSString*)ENTRY_NAME
{
    return @"name";
}
+ (NSString*)ENTRY_PARENT_ENTRY_ID
{
    return @"parent_id";
}
+ (NSString*)ENTRY_USER_ID
{
    return @"puser_id";
}
+ (NSString*)ENTRY_PUSH_PUBLISH
{
    return @"push_publish";
}
+ (NSString*)ENTRY_RECORDED_ENTRY_ID
{
    return @"recorded_entry_id";
}
+ (NSString*)ENTRY_REDIRECT_ENTRY_ID
{
    return @"redirect_entry_id";
}
+ (NSString*)ENTRY_REFERENCE_ID
{
    return @"reference_id";
}
+ (NSString*)ENTRY_SITE_URL
{
    return @"site_url";
}
+ (NSString*)ENTRY_SOURCE_TYPE
{
    return @"source_type";
}
+ (NSString*)ENTRY_START_DATE
{
    return @"start_date";
}
+ (NSString*)ENTRY_TAGS
{
    return @"tags";
}
+ (NSString*)ENTRY_TEMPLATE_ENTRY_ID
{
    return @"template_entry_id";
}
+ (NSString*)ENTRY_UPDATED_AT
{
    return @"updated_at";
}
+ (NSString*)ENTRY_VIEWS
{
    return @"views";
}
+ (NSString*)ENTRY_VOTES
{
    return @"votes";
}
@end

@implementation KalturaESearchEntryOrderByFieldName
+ (NSString*)ENTRY_CREATED_AT
{
    return @"created_at";
}
+ (NSString*)ENTRY_END_DATE
{
    return @"end_date";
}
+ (NSString*)ENTRY_NAME
{
    return @"name.keyword";
}
+ (NSString*)ENTRY_START_DATE
{
    return @"start_date";
}
+ (NSString*)ENTRY_UPDATED_AT
{
    return @"updated_at";
}
+ (NSString*)ENTRY_VIEWS
{
    return @"views";
}
+ (NSString*)ENTRY_VOTES
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
+ (NSString*)USER_CREATED_AT
{
    return @"created_at";
}
+ (NSString*)USER_EMAIL
{
    return @"email";
}
+ (NSString*)USER_FIRST_NAME
{
    return @"first_name";
}
+ (NSString*)USER_GROUP_IDS
{
    return @"group_ids";
}
+ (NSString*)USER_TYPE
{
    return @"kuser_type";
}
+ (NSString*)USER_LAST_NAME
{
    return @"last_name";
}
+ (NSString*)USER_PERMISSION_NAMES
{
    return @"permission_names";
}
+ (NSString*)USER_ROLE_IDS
{
    return @"role_ids";
}
+ (NSString*)USER_SCREEN_NAME
{
    return @"screen_name";
}
+ (NSString*)USER_TAGS
{
    return @"tags";
}
+ (NSString*)USER_UPDATED_AT
{
    return @"updated_at";
}
@end

@implementation KalturaESearchUserOrderByFieldName
+ (NSString*)USER_CREATED_AT
{
    return @"created_at";
}
+ (NSString*)USER_UPDATED_AT
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

@implementation KalturaESearchItemData
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchItemData"];
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

@implementation KalturaESearchObject
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchObject"];
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
@synthesize object = _object;
@synthesize itemsData = _itemsData;

- (KalturaFieldType)getTypeOfObject
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfObject
{
    return @"KalturaObjectBase";
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
    [aParams addIfDefinedKey:@"object" withObject:self.object];
    [aParams addIfDefinedKey:@"itemsData" withArray:self.itemsData];
}

- (void)dealloc
{
    [self->_object release];
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

@implementation KalturaESearchCaptionItemData
@synthesize line = _line;
@synthesize startsAt = _startsAt;
@synthesize endsAt = _endsAt;
@synthesize language = _language;
@synthesize captionAssetId = _captionAssetId;

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
}

- (void)dealloc
{
    [self->_line release];
    [self->_language release];
    [self->_captionAssetId release];
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

@implementation KalturaESearchCategoryResult
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchCategoryResult"];
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
    return KFT_String;
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
    return KFT_String;
}

- (KalturaFieldType)getTypeOfHint
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExplanation
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
    [aParams addIfDefinedKey:@"tags" withString:self.tags];
    [aParams addIfDefinedKey:@"startTime" withString:self.startTime];
    [aParams addIfDefinedKey:@"endTime" withString:self.endTime];
    [aParams addIfDefinedKey:@"subType" withString:self.subType];
    [aParams addIfDefinedKey:@"question" withString:self.question];
    [aParams addIfDefinedKey:@"answers" withString:self.answers];
    [aParams addIfDefinedKey:@"hint" withString:self.hint];
    [aParams addIfDefinedKey:@"explanation" withString:self.explanation];
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

@implementation KalturaESearchEntryResult
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchEntryResult"];
}

@end

@implementation KalturaESearchItem
@synthesize searchTerm = _searchTerm;
@synthesize itemType = _itemType;
@synthesize range = _range;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_itemType = KALTURA_UNDEF_INT;
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

- (void)setItemTypeFromString:(NSString*)aPropVal
{
    self.itemType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchItem"];
    [aParams addIfDefinedKey:@"searchTerm" withString:self.searchTerm];
    [aParams addIfDefinedKey:@"itemType" withInt:self.itemType];
    [aParams addIfDefinedKey:@"range" withObject:self.range];
}

- (void)dealloc
{
    [self->_searchTerm release];
    [self->_range release];
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

@implementation KalturaESearchOperator
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
    return @"KalturaESearchBaseItem";
}

- (void)setOperatorFromString:(NSString*)aPropVal
{
    self.operator = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchOperator"];
    [aParams addIfDefinedKey:@"operator" withInt:self.operator];
    [aParams addIfDefinedKey:@"searchItems" withArray:self.searchItems];
}

- (void)dealloc
{
    [self->_searchItems release];
    [super dealloc];
}

@end

@implementation KalturaESearchParams
@synthesize searchOperator = _searchOperator;
@synthesize objectStatuses = _objectStatuses;
@synthesize orderBy = _orderBy;

- (KalturaFieldType)getTypeOfSearchOperator
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfSearchOperator
{
    return @"KalturaESearchOperator";
}

- (KalturaFieldType)getTypeOfObjectStatuses
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
    [aParams addIfDefinedKey:@"searchOperator" withObject:self.searchOperator];
    [aParams addIfDefinedKey:@"objectStatuses" withString:self.objectStatuses];
    [aParams addIfDefinedKey:@"orderBy" withObject:self.orderBy];
}

- (void)dealloc
{
    [self->_searchOperator release];
    [self->_objectStatuses release];
    [self->_orderBy release];
    [super dealloc];
}

@end

@implementation KalturaESearchQuery
@synthesize eSearchQuery = _eSearchQuery;

- (KalturaFieldType)getTypeOfESearchQuery
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchQuery"];
    [aParams addIfDefinedKey:@"eSearchQuery" withString:self.eSearchQuery];
}

- (void)dealloc
{
    [self->_eSearchQuery release];
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

@implementation KalturaESearchUserResult
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchUserResult"];
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

@implementation KalturaESearchMetadataItem
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
        [aParams putKey:@"objectType" withString:@"KalturaESearchMetadataItem"];
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

///////////////////////// services /////////////////////////
@implementation KalturaESearchService
- (NSMutableArray*)getAllowedSearchTypesWithSearchItem:(KalturaESearchItem*)aSearchItem
{
    [self.client.params addIfDefinedKey:@"searchItem" withObject:aSearchItem];
    return [self.client queueArrayService:@"elasticsearch_esearch" withAction:@"getAllowedSearchTypes" withExpectedType:@"KalturaKeyValue"];
}

- (KalturaESearchResponse*)searchCategoryWithSearchParams:(KalturaESearchObject*)aSearchParams withPager:(KalturaPager*)aPager
{
    [self.client.params addIfDefinedKey:@"searchParams" withObject:aSearchParams];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"elasticsearch_esearch" withAction:@"searchCategory" withExpectedType:@"KalturaESearchResponse"];
}

- (KalturaESearchResponse*)searchCategoryWithSearchParams:(KalturaESearchObject*)aSearchParams
{
    return [self searchCategoryWithSearchParams:aSearchParams withPager:nil];
}

- (KalturaESearchResponse*)searchEntryWithSearchParams:(KalturaESearchObject*)aSearchParams withPager:(KalturaPager*)aPager
{
    [self.client.params addIfDefinedKey:@"searchParams" withObject:aSearchParams];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"elasticsearch_esearch" withAction:@"searchEntry" withExpectedType:@"KalturaESearchResponse"];
}

- (KalturaESearchResponse*)searchEntryWithSearchParams:(KalturaESearchObject*)aSearchParams
{
    return [self searchEntryWithSearchParams:aSearchParams withPager:nil];
}

- (KalturaESearchResponse*)searchUserWithSearchParams:(KalturaESearchObject*)aSearchParams withPager:(KalturaPager*)aPager
{
    [self.client.params addIfDefinedKey:@"searchParams" withObject:aSearchParams];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"elasticsearch_esearch" withAction:@"searchUser" withExpectedType:@"KalturaESearchResponse"];
}

- (KalturaESearchResponse*)searchUserWithSearchParams:(KalturaESearchObject*)aSearchParams
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

