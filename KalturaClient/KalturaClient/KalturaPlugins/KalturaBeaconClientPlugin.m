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
#import "KalturaBeaconClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaBeaconIndexType
+ (NSString*)LOG
{
    return @"Log";
}
+ (NSString*)STATE
{
    return @"State";
}
@end

@implementation KalturaBeaconObjectTypes
+ (NSString*)SCHEDULE_RESOURCE_BEACON
{
    return @"1";
}
+ (NSString*)ENTRY_SERVER_NODE_BEACON
{
    return @"2";
}
+ (NSString*)SERVER_NODE_BEACON
{
    return @"3";
}
+ (NSString*)ENTRY_BEACON
{
    return @"4";
}
@end

@implementation KalturaBeaconOrderBy
+ (NSString*)OBJECT_ID_ASC
{
    return @"+objectId";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)OBJECT_ID_DESC
{
    return @"-objectId";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaBeaconScheduledResourceFieldName
+ (NSString*)EVENT_TYPE
{
    return @"event_type";
}
+ (NSString*)IS_LOG
{
    return @"is_log";
}
+ (NSString*)OBJECT_ID
{
    return @"object_id";
}
+ (NSString*)RECORDING
{
    return @"recording";
}
+ (NSString*)RESOURCE_NAME
{
    return @"resource_name";
}
+ (NSString*)STATUS
{
    return @"status";
}
+ (NSString*)UPDATED_AT
{
    return @"updated_at";
}
@end

@implementation KalturaBeaconScheduledResourceOrderByFieldName
+ (NSString*)STATUS
{
    return @"app_status";
}
+ (NSString*)RECORDING
{
    return @"recording_phase";
}
+ (NSString*)RESOURCE_NAME
{
    return @"resource_Name";
}
+ (NSString*)UPDATED_AT
{
    return @"updated_at";
}
@end

///////////////////////// classes /////////////////////////
@interface KalturaBeacon()
@property (nonatomic,copy) NSString* id;
@property (nonatomic,copy) NSString* indexType;
@property (nonatomic,assign) int updatedAt;
@end

@implementation KalturaBeacon
@synthesize id = _id;
@synthesize indexType = _indexType;
@synthesize updatedAt = _updatedAt;
@synthesize relatedObjectType = _relatedObjectType;
@synthesize eventType = _eventType;
@synthesize objectId = _objectId;
@synthesize privateData = _privateData;
@synthesize rawData = _rawData;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_updatedAt = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIndexType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUpdatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRelatedObjectType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEventType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfObjectId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPrivateData
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRawData
{
    return KFT_String;
}

- (void)setUpdatedAtFromString:(NSString*)aPropVal
{
    self.updatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeacon"];
    [aParams addIfDefinedKey:@"relatedObjectType" withString:self.relatedObjectType];
    [aParams addIfDefinedKey:@"eventType" withString:self.eventType];
    [aParams addIfDefinedKey:@"objectId" withString:self.objectId];
    [aParams addIfDefinedKey:@"privateData" withString:self.privateData];
    [aParams addIfDefinedKey:@"rawData" withString:self.rawData];
}

- (void)dealloc
{
    [self->_id release];
    [self->_indexType release];
    [self->_relatedObjectType release];
    [self->_eventType release];
    [self->_objectId release];
    [self->_privateData release];
    [self->_rawData release];
    [super dealloc];
}

@end

@implementation KalturaBeaconSearchParams
@synthesize objectId = _objectId;

- (KalturaFieldType)getTypeOfObjectId
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeaconSearchParams"];
    [aParams addIfDefinedKey:@"objectId" withString:self.objectId];
}

- (void)dealloc
{
    [self->_objectId release];
    [super dealloc];
}

@end

@implementation KalturaBeaconSearchScheduledResourceOrderByItem
@synthesize sortField = _sortField;

- (KalturaFieldType)getTypeOfSortField
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeaconSearchScheduledResourceOrderByItem"];
    [aParams addIfDefinedKey:@"sortField" withString:self.sortField];
}

- (void)dealloc
{
    [self->_sortField release];
    [super dealloc];
}

@end

@implementation KalturaBeaconSearchScheduledResourceOrderBy
@synthesize orderItems = _orderItems;

- (KalturaFieldType)getTypeOfOrderItems
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfOrderItems
{
    return @"KalturaBeaconSearchScheduledResourceOrderByItem";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeaconSearchScheduledResourceOrderBy"];
    [aParams addIfDefinedKey:@"orderItems" withArray:self.orderItems];
}

- (void)dealloc
{
    [self->_orderItems release];
    [super dealloc];
}

@end

@implementation KalturaBeaconBaseFilter
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;
@synthesize relatedObjectTypeIn = _relatedObjectTypeIn;
@synthesize relatedObjectTypeEqual = _relatedObjectTypeEqual;
@synthesize eventTypeIn = _eventTypeIn;
@synthesize objectIdIn = _objectIdIn;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_updatedAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtLessThanOrEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRelatedObjectTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRelatedObjectTypeEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEventTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfObjectIdIn
{
    return KFT_String;
}

- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.updatedAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.updatedAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeaconBaseFilter"];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"relatedObjectTypeIn" withString:self.relatedObjectTypeIn];
    [aParams addIfDefinedKey:@"relatedObjectTypeEqual" withString:self.relatedObjectTypeEqual];
    [aParams addIfDefinedKey:@"eventTypeIn" withString:self.eventTypeIn];
    [aParams addIfDefinedKey:@"objectIdIn" withString:self.objectIdIn];
}

- (void)dealloc
{
    [self->_relatedObjectTypeIn release];
    [self->_relatedObjectTypeEqual release];
    [self->_eventTypeIn release];
    [self->_objectIdIn release];
    [super dealloc];
}

@end

@implementation KalturaBeaconEnhanceFilter
@synthesize externalElasticQueryObject = _externalElasticQueryObject;
@synthesize indexTypeEqual = _indexTypeEqual;

- (KalturaFieldType)getTypeOfExternalElasticQueryObject
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIndexTypeEqual
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeaconEnhanceFilter"];
    [aParams addIfDefinedKey:@"externalElasticQueryObject" withString:self.externalElasticQueryObject];
    [aParams addIfDefinedKey:@"indexTypeEqual" withString:self.indexTypeEqual];
}

- (void)dealloc
{
    [self->_externalElasticQueryObject release];
    [self->_indexTypeEqual release];
    [super dealloc];
}

@end

@interface KalturaBeaconListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaBeaconListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaBeacon";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeaconListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaBeaconScheduledResourceOperator
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
    return @"KalturaBeaconScheduledResourceBaseItem";
}

- (void)setOperatorFromString:(NSString*)aPropVal
{
    self.operator = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeaconScheduledResourceOperator"];
    [aParams addIfDefinedKey:@"operator" withInt:self.operator];
    [aParams addIfDefinedKey:@"searchItems" withArray:self.searchItems];
}

- (void)dealloc
{
    [self->_searchItems release];
    [super dealloc];
}

@end

@implementation KalturaBeaconScheduledResourceSearchParams
@synthesize searchOperator = _searchOperator;
@synthesize orderBy = _orderBy;

- (KalturaFieldType)getTypeOfSearchOperator
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfSearchOperator
{
    return @"KalturaBeaconScheduledResourceOperator";
}

- (KalturaFieldType)getTypeOfOrderBy
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfOrderBy
{
    return @"KalturaBeaconSearchScheduledResourceOrderBy";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeaconScheduledResourceSearchParams"];
    [aParams addIfDefinedKey:@"searchOperator" withObject:self.searchOperator];
    [aParams addIfDefinedKey:@"orderBy" withObject:self.orderBy];
}

- (void)dealloc
{
    [self->_searchOperator release];
    [self->_orderBy release];
    [super dealloc];
}

@end

@implementation KalturaBeaconFilter
@synthesize indexTypeEqual = _indexTypeEqual;

- (KalturaFieldType)getTypeOfIndexTypeEqual
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeaconFilter"];
    [aParams addIfDefinedKey:@"indexTypeEqual" withString:self.indexTypeEqual];
}

- (void)dealloc
{
    [self->_indexTypeEqual release];
    [super dealloc];
}

@end

@implementation KalturaBeaconScheduledResourceItem
@synthesize fieldName = _fieldName;

- (KalturaFieldType)getTypeOfFieldName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBeaconScheduledResourceItem"];
    [aParams addIfDefinedKey:@"fieldName" withString:self.fieldName];
}

- (void)dealloc
{
    [self->_fieldName release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaBeaconService
- (KALTURA_BOOL)addWithBeacon:(KalturaBeacon*)aBeacon withShouldLog:(int)aShouldLog
{
    [self.client.params addIfDefinedKey:@"beacon" withObject:aBeacon];
    [self.client.params addIfDefinedKey:@"shouldLog" withInt:aShouldLog];
    return [self.client queueBoolService:@"beacon_beacon" withAction:@"add"];
}

- (KALTURA_BOOL)addWithBeacon:(KalturaBeacon*)aBeacon
{
    return [self addWithBeacon:aBeacon withShouldLog:KALTURA_UNDEF_INT];
}

- (KalturaBeaconListResponse*)enhanceSearchWithFilter:(KalturaBeaconEnhanceFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"beacon_beacon" withAction:@"enhanceSearch" withExpectedType:@"KalturaBeaconListResponse"];
}

- (KalturaBeaconListResponse*)enhanceSearchWithFilter:(KalturaBeaconEnhanceFilter*)aFilter
{
    return [self enhanceSearchWithFilter:aFilter withPager:nil];
}

- (KalturaBeaconListResponse*)enhanceSearch
{
    return [self enhanceSearchWithFilter:nil];
}

- (KalturaBeaconListResponse*)listWithFilter:(KalturaBeaconFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"beacon_beacon" withAction:@"list" withExpectedType:@"KalturaBeaconListResponse"];
}

- (KalturaBeaconListResponse*)listWithFilter:(KalturaBeaconFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaBeaconListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaBeaconListResponse*)searchScheduledResourceWithSearchParams:(KalturaBeaconSearchParams*)aSearchParams withPager:(KalturaPager*)aPager
{
    [self.client.params addIfDefinedKey:@"searchParams" withObject:aSearchParams];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"beacon_beacon" withAction:@"searchScheduledResource" withExpectedType:@"KalturaBeaconListResponse"];
}

- (KalturaBeaconListResponse*)searchScheduledResourceWithSearchParams:(KalturaBeaconSearchParams*)aSearchParams
{
    return [self searchScheduledResourceWithSearchParams:aSearchParams withPager:nil];
}

@end

@implementation KalturaBeaconClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaBeaconService*)beacon
{
    if (self->_beacon == nil)
    	self->_beacon = [[KalturaBeaconService alloc] initWithClient:self.client];
    return self->_beacon;
}

- (void)dealloc
{
    [self->_beacon release];
	[super dealloc];
}

@end

