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
#import "KalturaBusinessProcessNotificationClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaBusinessProcessAbortNotificationTemplateOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)ID_ASC
{
    return @"+id";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)ID_DESC
{
    return @"-id";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaBusinessProcessNotificationTemplateOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)ID_ASC
{
    return @"+id";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)ID_DESC
{
    return @"-id";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaBusinessProcessProvider
+ (NSString*)ACTIVITI
{
    return @"activitiBusinessProcessNotification.Activiti";
}
@end

@implementation KalturaBusinessProcessServerOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaBusinessProcessServerStatus
+ (NSString*)DISABLED
{
    return @"1";
}
+ (NSString*)ENABLED
{
    return @"2";
}
+ (NSString*)DELETED
{
    return @"3";
}
@end

@implementation KalturaBusinessProcessSignalNotificationTemplateOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)ID_ASC
{
    return @"+id";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)ID_DESC
{
    return @"-id";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaBusinessProcessStartNotificationTemplateOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)ID_ASC
{
    return @"+id";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)ID_DESC
{
    return @"-id";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaBusinessProcessCase
@synthesize id = _id;
@synthesize businessProcessId = _businessProcessId;
@synthesize businessProcessStartNotificationTemplateId = _businessProcessStartNotificationTemplateId;
@synthesize suspended = _suspended;
@synthesize activityId = _activityId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_businessProcessStartNotificationTemplateId = KALTURA_UNDEF_INT;
    self->_suspended = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfBusinessProcessId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfBusinessProcessStartNotificationTemplateId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSuspended
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfActivityId
{
    return KFT_String;
}

- (void)setBusinessProcessStartNotificationTemplateIdFromString:(NSString*)aPropVal
{
    self.businessProcessStartNotificationTemplateId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSuspendedFromString:(NSString*)aPropVal
{
    self.suspended = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessCase"];
    [aParams addIfDefinedKey:@"id" withString:self.id];
    [aParams addIfDefinedKey:@"businessProcessId" withString:self.businessProcessId];
    [aParams addIfDefinedKey:@"businessProcessStartNotificationTemplateId" withInt:self.businessProcessStartNotificationTemplateId];
    [aParams addIfDefinedKey:@"suspended" withBool:self.suspended];
    [aParams addIfDefinedKey:@"activityId" withString:self.activityId];
}

- (void)dealloc
{
    [self->_id release];
    [self->_businessProcessId release];
    [self->_activityId release];
    [super dealloc];
}

@end

@interface KalturaBusinessProcessServer()
@property (nonatomic,assign) int id;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@property (nonatomic,assign) int partnerId;
@property (nonatomic,copy) NSString* status;
@property (nonatomic,copy) NSString* type;
@end

@implementation KalturaBusinessProcessServer
@synthesize id = _id;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@synthesize partnerId = _partnerId;
@synthesize name = _name;
@synthesize systemName = _systemName;
@synthesize description = _description;
@synthesize status = _status;
@synthesize type = _type;
@synthesize dc = _dc;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    self->_updatedAt = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_dc = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCreatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSystemName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDc
{
    return KFT_Int;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtFromString:(NSString*)aPropVal
{
    self.updatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDcFromString:(NSString*)aPropVal
{
    self.dc = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessServer"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"systemName" withString:self.systemName];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"dc" withInt:self.dc];
}

- (void)dealloc
{
    [self->_name release];
    [self->_systemName release];
    [self->_description release];
    [self->_status release];
    [self->_type release];
    [super dealloc];
}

@end

@implementation KalturaBusinessProcessNotificationTemplate
@synthesize serverId = _serverId;
@synthesize processId = _processId;
@synthesize mainObjectCode = _mainObjectCode;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_serverId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfServerId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfProcessId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMainObjectCode
{
    return KFT_String;
}

- (void)setServerIdFromString:(NSString*)aPropVal
{
    self.serverId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessNotificationTemplate"];
    [aParams addIfDefinedKey:@"serverId" withInt:self.serverId];
    [aParams addIfDefinedKey:@"processId" withString:self.processId];
    [aParams addIfDefinedKey:@"mainObjectCode" withString:self.mainObjectCode];
}

- (void)dealloc
{
    [self->_processId release];
    [self->_mainObjectCode release];
    [super dealloc];
}

@end

@implementation KalturaBusinessProcessServerBaseFilter
@synthesize idEqual = _idEqual;
@synthesize idIn = _idIn;
@synthesize idNotIn = _idNotIn;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;
@synthesize partnerIdEqual = _partnerIdEqual;
@synthesize partnerIdIn = _partnerIdIn;
@synthesize statusEqual = _statusEqual;
@synthesize statusNotEqual = _statusNotEqual;
@synthesize statusIn = _statusIn;
@synthesize statusNotIn = _statusNotIn;
@synthesize typeEqual = _typeEqual;
@synthesize typeIn = _typeIn;
@synthesize dcEqual = _dcEqual;
@synthesize dcEqOrNull = _dcEqOrNull;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_idEqual = KALTURA_UNDEF_INT;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_partnerIdEqual = KALTURA_UNDEF_INT;
    self->_dcEqual = KALTURA_UNDEF_INT;
    self->_dcEqOrNull = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIdNotIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatusEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatusNotEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatusIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatusNotIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTypeEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDcEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDcEqOrNull
{
    return KFT_Int;
}

- (void)setIdEqualFromString:(NSString*)aPropVal
{
    self.idEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.createdAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.createdAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.updatedAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.updatedAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdEqualFromString:(NSString*)aPropVal
{
    self.partnerIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDcEqualFromString:(NSString*)aPropVal
{
    self.dcEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDcEqOrNullFromString:(NSString*)aPropVal
{
    self.dcEqOrNull = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessServerBaseFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
    [aParams addIfDefinedKey:@"idNotIn" withString:self.idNotIn];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"partnerIdEqual" withInt:self.partnerIdEqual];
    [aParams addIfDefinedKey:@"partnerIdIn" withString:self.partnerIdIn];
    [aParams addIfDefinedKey:@"statusEqual" withString:self.statusEqual];
    [aParams addIfDefinedKey:@"statusNotEqual" withString:self.statusNotEqual];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"statusNotIn" withString:self.statusNotIn];
    [aParams addIfDefinedKey:@"typeEqual" withString:self.typeEqual];
    [aParams addIfDefinedKey:@"typeIn" withString:self.typeIn];
    [aParams addIfDefinedKey:@"dcEqual" withInt:self.dcEqual];
    [aParams addIfDefinedKey:@"dcEqOrNull" withInt:self.dcEqOrNull];
}

- (void)dealloc
{
    [self->_idIn release];
    [self->_idNotIn release];
    [self->_partnerIdIn release];
    [self->_statusEqual release];
    [self->_statusNotEqual release];
    [self->_statusIn release];
    [self->_statusNotIn release];
    [self->_typeEqual release];
    [self->_typeIn release];
    [super dealloc];
}

@end

@interface KalturaBusinessProcessServerListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaBusinessProcessServerListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaBusinessProcessServer";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessServerListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaBusinessProcessAbortNotificationTemplate
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessAbortNotificationTemplate"];
}

@end

@implementation KalturaBusinessProcessNotificationDispatchJobData
@synthesize server = _server;
@synthesize caseId = _caseId;

- (KalturaFieldType)getTypeOfServer
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfServer
{
    return @"KalturaBusinessProcessServer";
}

- (KalturaFieldType)getTypeOfCaseId
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessNotificationDispatchJobData"];
    [aParams addIfDefinedKey:@"server" withObject:self.server];
    [aParams addIfDefinedKey:@"caseId" withString:self.caseId];
}

- (void)dealloc
{
    [self->_server release];
    [self->_caseId release];
    [super dealloc];
}

@end

@implementation KalturaBusinessProcessServerFilter
@synthesize currentDcOrExternal = _currentDcOrExternal;
@synthesize currentDc = _currentDc;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_currentDcOrExternal = KALTURA_UNDEF_INT;
    self->_currentDc = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfCurrentDcOrExternal
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCurrentDc
{
    return KFT_Int;
}

- (void)setCurrentDcOrExternalFromString:(NSString*)aPropVal
{
    self.currentDcOrExternal = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCurrentDcFromString:(NSString*)aPropVal
{
    self.currentDc = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessServerFilter"];
    [aParams addIfDefinedKey:@"currentDcOrExternal" withInt:self.currentDcOrExternal];
    [aParams addIfDefinedKey:@"currentDc" withInt:self.currentDc];
}

@end

@implementation KalturaBusinessProcessSignalNotificationTemplate
@synthesize message = _message;
@synthesize eventId = _eventId;

- (KalturaFieldType)getTypeOfMessage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEventId
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessSignalNotificationTemplate"];
    [aParams addIfDefinedKey:@"message" withString:self.message];
    [aParams addIfDefinedKey:@"eventId" withString:self.eventId];
}

- (void)dealloc
{
    [self->_message release];
    [self->_eventId release];
    [super dealloc];
}

@end

@implementation KalturaBusinessProcessStartNotificationTemplate
@synthesize abortOnDeletion = _abortOnDeletion;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_abortOnDeletion = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfAbortOnDeletion
{
    return KFT_Bool;
}

- (void)setAbortOnDeletionFromString:(NSString*)aPropVal
{
    self.abortOnDeletion = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessStartNotificationTemplate"];
    [aParams addIfDefinedKey:@"abortOnDeletion" withBool:self.abortOnDeletion];
}

@end

@implementation KalturaBusinessProcessNotificationTemplateBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessNotificationTemplateBaseFilter"];
}

@end

@implementation KalturaBusinessProcessNotificationTemplateFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessNotificationTemplateFilter"];
}

@end

@implementation KalturaBusinessProcessAbortNotificationTemplateBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessAbortNotificationTemplateBaseFilter"];
}

@end

@implementation KalturaBusinessProcessSignalNotificationTemplateBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessSignalNotificationTemplateBaseFilter"];
}

@end

@implementation KalturaBusinessProcessStartNotificationTemplateBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessStartNotificationTemplateBaseFilter"];
}

@end

@implementation KalturaBusinessProcessAbortNotificationTemplateFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessAbortNotificationTemplateFilter"];
}

@end

@implementation KalturaBusinessProcessSignalNotificationTemplateFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessSignalNotificationTemplateFilter"];
}

@end

@implementation KalturaBusinessProcessStartNotificationTemplateFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBusinessProcessStartNotificationTemplateFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaBusinessProcessCaseService
- (void)abortWithObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId withBusinessProcessStartNotificationTemplateId:(int)aBusinessProcessStartNotificationTemplateId
{
    [self.client.params addIfDefinedKey:@"objectType" withString:aObjectType];
    [self.client.params addIfDefinedKey:@"objectId" withString:aObjectId];
    [self.client.params addIfDefinedKey:@"businessProcessStartNotificationTemplateId" withInt:aBusinessProcessStartNotificationTemplateId];
    [self.client queueVoidService:@"businessprocessnotification_businessprocesscase" withAction:@"abort"];
}

- (NSMutableArray*)listWithObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId
{
    [self.client.params addIfDefinedKey:@"objectType" withString:aObjectType];
    [self.client.params addIfDefinedKey:@"objectId" withString:aObjectId];
    return [self.client queueArrayService:@"businessprocessnotification_businessprocesscase" withAction:@"list" withExpectedType:@"KalturaBusinessProcessCase"];
}

- (NSString*)serveDiagramWithObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId withBusinessProcessStartNotificationTemplateId:(int)aBusinessProcessStartNotificationTemplateId
{
    [self.client.params addIfDefinedKey:@"objectType" withString:aObjectType];
    [self.client.params addIfDefinedKey:@"objectId" withString:aObjectId];
    [self.client.params addIfDefinedKey:@"businessProcessStartNotificationTemplateId" withInt:aBusinessProcessStartNotificationTemplateId];
    return [self.client queueServeService:@"businessprocessnotification_businessprocesscase" withAction:@"serveDiagram"];
}

@end

@implementation KalturaBusinessProcessNotificationClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaBusinessProcessCaseService*)businessProcessCase
{
    if (self->_businessProcessCase == nil)
    	self->_businessProcessCase = [[KalturaBusinessProcessCaseService alloc] initWithClient:self.client];
    return self->_businessProcessCase;
}

- (void)dealloc
{
    [self->_businessProcessCase release];
	[super dealloc];
}

@end

