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
#import "KalturaGroupClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaESearchGroupFieldName
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
+ (NSString*)USER_ID
{
    return @"user_id";
}
@end

@implementation KalturaESearchGroupOrderByFieldName
+ (NSString*)CREATED_AT
{
    return @"created_at";
}
+ (NSString*)MEMBERS_COUNT
{
    return @"members_count";
}
+ (NSString*)USER_ID
{
    return @"puser_id";
}
+ (NSString*)SCREEN_NAME
{
    return @"screen_name";
}
+ (NSString*)UPDATED_AT
{
    return @"updated_at";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaESearchGroupBaseItem
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchGroupBaseItem"];
}

@end

@interface KalturaGroup()
@property (nonatomic,assign) int membersCount;
@end

@implementation KalturaGroup
@synthesize membersCount = _membersCount;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_membersCount = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfMembersCount
{
    return KFT_Int;
}

- (void)setMembersCountFromString:(NSString*)aPropVal
{
    self.membersCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaGroup"];
}

@end

@implementation KalturaESearchGroupOperator
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
    return @"KalturaESearchGroupBaseItem";
}

- (void)setOperatorFromString:(NSString*)aPropVal
{
    self.operator = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchGroupOperator"];
    [aParams addIfDefinedKey:@"operator" withInt:self.operator];
    [aParams addIfDefinedKey:@"searchItems" withArray:self.searchItems];
}

- (void)dealloc
{
    [self->_searchItems release];
    [super dealloc];
}

@end

@interface KalturaGroupListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaGroupListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaGroup";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaGroupListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaESearchAbstractGroupItem
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
        [aParams putKey:@"objectType" withString:@"KalturaESearchAbstractGroupItem"];
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

@implementation KalturaESearchGroupItem
@synthesize fieldName = _fieldName;

- (KalturaFieldType)getTypeOfFieldName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchGroupItem"];
    [aParams addIfDefinedKey:@"fieldName" withString:self.fieldName];
}

- (void)dealloc
{
    [self->_fieldName release];
    [super dealloc];
}

@end

@implementation KalturaESearchGroupMetadataItem
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
        [aParams putKey:@"objectType" withString:@"KalturaESearchGroupMetadataItem"];
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

@implementation KalturaGroupFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaGroupFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaGroupService
- (KalturaGroup*)addWithGroup:(KalturaGroup*)aGroup
{
    [self.client.params addIfDefinedKey:@"group" withObject:aGroup];
    return [self.client queueObjectService:@"group_group" withAction:@"add" withExpectedType:@"KalturaGroup"];
}

- (KalturaGroup*)deleteWithGroupId:(NSString*)aGroupId
{
    [self.client.params addIfDefinedKey:@"groupId" withString:aGroupId];
    return [self.client queueObjectService:@"group_group" withAction:@"delete" withExpectedType:@"KalturaGroup"];
}

- (KalturaGroup*)getWithGroupId:(NSString*)aGroupId
{
    [self.client.params addIfDefinedKey:@"groupId" withString:aGroupId];
    return [self.client queueObjectService:@"group_group" withAction:@"get" withExpectedType:@"KalturaGroup"];
}

- (KalturaGroupListResponse*)listWithFilter:(KalturaGroupFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"group_group" withAction:@"list" withExpectedType:@"KalturaGroupListResponse"];
}

- (KalturaGroupListResponse*)listWithFilter:(KalturaGroupFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaGroupListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaGroup*)updateWithGroupId:(NSString*)aGroupId withGroup:(KalturaGroup*)aGroup
{
    [self.client.params addIfDefinedKey:@"groupId" withString:aGroupId];
    [self.client.params addIfDefinedKey:@"group" withObject:aGroup];
    return [self.client queueObjectService:@"group_group" withAction:@"update" withExpectedType:@"KalturaGroup"];
}

@end

@implementation KalturaGroupClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaGroupService*)group
{
    if (self->_group == nil)
    	self->_group = [[KalturaGroupService alloc] initWithClient:self.client];
    return self->_group;
}

- (void)dealloc
{
    [self->_group release];
	[super dealloc];
}

@end

