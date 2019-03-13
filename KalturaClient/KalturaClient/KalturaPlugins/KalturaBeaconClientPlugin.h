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
#import "KalturaElasticSearchClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaBeaconIndexType : NSObject
+ (NSString*)LOG;
+ (NSString*)STATE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconObjectTypes : NSObject
+ (NSString*)SCHEDULE_RESOURCE_BEACON;
+ (NSString*)ENTRY_SERVER_NODE_BEACON;
+ (NSString*)SERVER_NODE_BEACON;
+ (NSString*)ENTRY_BEACON;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconOrderBy : NSObject
+ (NSString*)OBJECT_ID_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)OBJECT_ID_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconScheduledResourceFieldName : NSObject
+ (NSString*)EVENT_TYPE;
+ (NSString*)IS_LOG;
+ (NSString*)OBJECT_ID;
+ (NSString*)RECORDING;
+ (NSString*)RESOURCE_NAME;
+ (NSString*)STATUS;
+ (NSString*)UPDATED_AT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconScheduledResourceOrderByFieldName : NSObject
+ (NSString*)STATUS;
+ (NSString*)RECORDING;
+ (NSString*)RESOURCE_NAME;
+ (NSString*)UPDATED_AT;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaBeacon : KalturaObjectBase
// Beacon id
@property (nonatomic,copy,readonly) NSString* id;
// Beacon indexType
@property (nonatomic,copy,readonly) NSString* indexType;
// Beacon update date as Unix timestamp (In seconds)
@property (nonatomic,assign,readonly) int updatedAt;
// The object which this beacon belongs to
@property (nonatomic,copy) NSString* relatedObjectType;	// enum KalturaBeaconObjectTypes
@property (nonatomic,copy) NSString* eventType;
@property (nonatomic,copy) NSString* objectId;
@property (nonatomic,copy) NSString* privateData;
@property (nonatomic,copy) NSString* rawData;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfIndexType;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfRelatedObjectType;
- (KalturaFieldType)getTypeOfEventType;
- (KalturaFieldType)getTypeOfObjectId;
- (KalturaFieldType)getTypeOfPrivateData;
- (KalturaFieldType)getTypeOfRawData;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconSearchParams : KalturaObjectBase
@property (nonatomic,copy) NSString* objectId;
- (KalturaFieldType)getTypeOfObjectId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconSearchScheduledResourceOrderByItem : KalturaESearchOrderByItem
@property (nonatomic,copy) NSString* sortField;	// enum KalturaBeaconScheduledResourceOrderByFieldName
- (KalturaFieldType)getTypeOfSortField;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconSearchScheduledResourceOrderBy : KalturaObjectBase
@property (nonatomic,retain) NSMutableArray* orderItems;	// of KalturaBeaconSearchScheduledResourceOrderByItem elements
- (KalturaFieldType)getTypeOfOrderItems;
- (NSString*)getObjectTypeOfOrderItems;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconBaseFilter : KalturaFilter
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
@property (nonatomic,copy) NSString* relatedObjectTypeIn;
@property (nonatomic,copy) NSString* relatedObjectTypeEqual;	// enum KalturaBeaconObjectTypes
@property (nonatomic,copy) NSString* eventTypeIn;
@property (nonatomic,copy) NSString* objectIdIn;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfRelatedObjectTypeIn;
- (KalturaFieldType)getTypeOfRelatedObjectTypeEqual;
- (KalturaFieldType)getTypeOfEventTypeIn;
- (KalturaFieldType)getTypeOfObjectIdIn;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconEnhanceFilter : KalturaFilter
@property (nonatomic,copy) NSString* externalElasticQueryObject;
@property (nonatomic,copy) NSString* indexTypeEqual;	// enum KalturaBeaconIndexType
- (KalturaFieldType)getTypeOfExternalElasticQueryObject;
- (KalturaFieldType)getTypeOfIndexTypeEqual;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaBeacon elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconScheduledResourceOperator : KalturaBeaconScheduledResourceBaseItem
@property (nonatomic,assign) int operator;	// enum KalturaESearchOperatorType
@property (nonatomic,retain) NSMutableArray* searchItems;	// of KalturaBeaconScheduledResourceBaseItem elements
- (KalturaFieldType)getTypeOfOperator;
- (KalturaFieldType)getTypeOfSearchItems;
- (NSString*)getObjectTypeOfSearchItems;
- (void)setOperatorFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconScheduledResourceSearchParams : KalturaBeaconSearchParams
@property (nonatomic,retain) KalturaBeaconScheduledResourceOperator* searchOperator;
@property (nonatomic,retain) KalturaBeaconSearchScheduledResourceOrderBy* orderBy;
- (KalturaFieldType)getTypeOfSearchOperator;
- (NSString*)getObjectTypeOfSearchOperator;
- (KalturaFieldType)getTypeOfOrderBy;
- (NSString*)getObjectTypeOfOrderBy;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconFilter : KalturaBeaconBaseFilter
@property (nonatomic,copy) NSString* indexTypeEqual;	// enum KalturaBeaconIndexType
- (KalturaFieldType)getTypeOfIndexTypeEqual;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBeaconScheduledResourceItem : KalturaBeaconAbstractScheduledResourceItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaBeaconScheduledResourceFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Sending beacons on objects
@interface KalturaBeaconService : KalturaServiceBase
- (KALTURA_BOOL)addWithBeacon:(KalturaBeacon*)aBeacon withShouldLog:(int)aShouldLog;
- (KALTURA_BOOL)addWithBeacon:(KalturaBeacon*)aBeacon;
- (KalturaBeaconListResponse*)enhanceSearchWithFilter:(KalturaBeaconEnhanceFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaBeaconListResponse*)enhanceSearchWithFilter:(KalturaBeaconEnhanceFilter*)aFilter;
- (KalturaBeaconListResponse*)enhanceSearch;
- (KalturaBeaconListResponse*)listWithFilter:(KalturaBeaconFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaBeaconListResponse*)listWithFilter:(KalturaBeaconFilter*)aFilter;
- (KalturaBeaconListResponse*)list;
- (KalturaBeaconListResponse*)searchScheduledResourceWithSearchParams:(KalturaBeaconSearchParams*)aSearchParams withPager:(KalturaPager*)aPager;
- (KalturaBeaconListResponse*)searchScheduledResourceWithSearchParams:(KalturaBeaconSearchParams*)aSearchParams;
@end

@interface KalturaBeaconClientPlugin : KalturaClientPlugin
{
	KalturaBeaconService* _beacon;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaBeaconService* beacon;
@end

