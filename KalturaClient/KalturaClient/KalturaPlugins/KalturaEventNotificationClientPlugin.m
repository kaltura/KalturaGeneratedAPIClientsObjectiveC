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
#import "KalturaEventNotificationClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaEventNotificationTemplateStatus
+ (int)DISABLED
{
    return 1;
}
+ (int)ACTIVE
{
    return 2;
}
+ (int)DELETED
{
    return 3;
}
@end

@implementation KalturaEventNotificationEventObjectType
+ (NSString*)AD_CUE_POINT
{
    return @"adCuePointEventNotifications.AdCuePoint";
}
+ (NSString*)ANNOTATION
{
    return @"annotationEventNotifications.Annotation";
}
+ (NSString*)ATTACHMENT_ASSET
{
    return @"attachmentAssetEventNotifications.AttachmentAsset";
}
+ (NSString*)CAPTION_ASSET
{
    return @"captionAssetEventNotifications.CaptionAsset";
}
+ (NSString*)CODE_CUE_POINT
{
    return @"codeCuePointEventNotifications.CodeCuePoint";
}
+ (NSString*)DISTRIBUTION_PROFILE
{
    return @"contentDistributionEventNotifications.DistributionProfile";
}
+ (NSString*)ENTRY_DISTRIBUTION
{
    return @"contentDistributionEventNotifications.EntryDistribution";
}
+ (NSString*)CUE_POINT
{
    return @"cuePointEventNotifications.CuePoint";
}
+ (NSString*)DROP_FOLDER
{
    return @"dropFolderEventNotifications.DropFolder";
}
+ (NSString*)DROP_FOLDER_FILE
{
    return @"dropFolderEventNotifications.DropFolderFile";
}
+ (NSString*)METADATA
{
    return @"metadataEventNotifications.Metadata";
}
+ (NSString*)TRANSCRIPT_ASSET
{
    return @"transcriptAssetEventNotifications.TranscriptAsset";
}
+ (NSString*)ENTRY
{
    return @"1";
}
+ (NSString*)CATEGORY
{
    return @"2";
}
+ (NSString*)ASSET
{
    return @"3";
}
+ (NSString*)FLAVORASSET
{
    return @"4";
}
+ (NSString*)THUMBASSET
{
    return @"5";
}
+ (NSString*)KUSER
{
    return @"8";
}
+ (NSString*)ACCESSCONTROL
{
    return @"9";
}
+ (NSString*)BATCHJOB
{
    return @"10";
}
+ (NSString*)BULKUPLOADRESULT
{
    return @"11";
}
+ (NSString*)CATEGORYKUSER
{
    return @"12";
}
+ (NSString*)CONVERSIONPROFILE2
{
    return @"14";
}
+ (NSString*)FLAVORPARAMS
{
    return @"15";
}
+ (NSString*)FLAVORPARAMSCONVERSIONPROFILE
{
    return @"16";
}
+ (NSString*)FLAVORPARAMSOUTPUT
{
    return @"17";
}
+ (NSString*)GENERICSYNDICATIONFEED
{
    return @"18";
}
+ (NSString*)KUSERTOUSERROLE
{
    return @"19";
}
+ (NSString*)PARTNER
{
    return @"20";
}
+ (NSString*)PERMISSION
{
    return @"21";
}
+ (NSString*)PERMISSIONITEM
{
    return @"22";
}
+ (NSString*)PERMISSIONTOPERMISSIONITEM
{
    return @"23";
}
+ (NSString*)SCHEDULER
{
    return @"24";
}
+ (NSString*)SCHEDULERCONFIG
{
    return @"25";
}
+ (NSString*)SCHEDULERSTATUS
{
    return @"26";
}
+ (NSString*)SCHEDULERWORKER
{
    return @"27";
}
+ (NSString*)STORAGEPROFILE
{
    return @"28";
}
+ (NSString*)SYNDICATIONFEED
{
    return @"29";
}
+ (NSString*)THUMBPARAMS
{
    return @"31";
}
+ (NSString*)THUMBPARAMSOUTPUT
{
    return @"32";
}
+ (NSString*)UPLOADTOKEN
{
    return @"33";
}
+ (NSString*)USERLOGINDATA
{
    return @"34";
}
+ (NSString*)USERROLE
{
    return @"35";
}
+ (NSString*)WIDGET
{
    return @"36";
}
+ (NSString*)CATEGORYENTRY
{
    return @"37";
}
+ (NSString*)LIVE_STREAM
{
    return @"38";
}
+ (NSString*)SERVER_NODE
{
    return @"39";
}
+ (NSString*)ENTRY_SERVER_NODE
{
    return @"40";
}
+ (NSString*)REACH_PROFILE
{
    return @"41";
}
+ (NSString*)ENTRY_VENDOR_TASK
{
    return @"42";
}
@end

@implementation KalturaEventNotificationEventType
+ (NSString*)INTEGRATION_JOB_CLOSED
{
    return @"integrationEventNotifications.INTEGRATION_JOB_CLOSED";
}
+ (NSString*)BATCH_JOB_STATUS
{
    return @"1";
}
+ (NSString*)OBJECT_ADDED
{
    return @"2";
}
+ (NSString*)OBJECT_CHANGED
{
    return @"3";
}
+ (NSString*)OBJECT_COPIED
{
    return @"4";
}
+ (NSString*)OBJECT_CREATED
{
    return @"5";
}
+ (NSString*)OBJECT_DATA_CHANGED
{
    return @"6";
}
+ (NSString*)OBJECT_DELETED
{
    return @"7";
}
+ (NSString*)OBJECT_ERASED
{
    return @"8";
}
+ (NSString*)OBJECT_READY_FOR_REPLACMENT
{
    return @"9";
}
+ (NSString*)OBJECT_SAVED
{
    return @"10";
}
+ (NSString*)OBJECT_UPDATED
{
    return @"11";
}
+ (NSString*)OBJECT_REPLACED
{
    return @"12";
}
+ (NSString*)OBJECT_READY_FOR_INDEX
{
    return @"13";
}
@end

@implementation KalturaEventNotificationTemplateOrderBy
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

@implementation KalturaEventNotificationTemplateType
+ (NSString*)BPM_ABORT
{
    return @"businessProcessNotification.BusinessProcessAbort";
}
+ (NSString*)BPM_SIGNAL
{
    return @"businessProcessNotification.BusinessProcessSignal";
}
+ (NSString*)BPM_START
{
    return @"businessProcessNotification.BusinessProcessStart";
}
+ (NSString*)EMAIL
{
    return @"emailNotification.Email";
}
+ (NSString*)HTTP
{
    return @"httpNotification.Http";
}
+ (NSString*)PUSH
{
    return @"pushNotification.Push";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaEventNotificationParameter
@synthesize key = _key;
@synthesize description = _description;
@synthesize value = _value;

- (KalturaFieldType)getTypeOfKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfValue
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfValue
{
    return @"KalturaStringValue";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEventNotificationParameter"];
    [aParams addIfDefinedKey:@"key" withString:self.key];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"value" withObject:self.value];
}

- (void)dealloc
{
    [self->_key release];
    [self->_description release];
    [self->_value release];
    [super dealloc];
}

@end

@interface KalturaEventNotificationTemplate()
@property (nonatomic,assign) int id;
@property (nonatomic,assign) int partnerId;
@property (nonatomic,assign) int status;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@end

@implementation KalturaEventNotificationTemplate
@synthesize id = _id;
@synthesize partnerId = _partnerId;
@synthesize name = _name;
@synthesize systemName = _systemName;
@synthesize description = _description;
@synthesize type = _type;
@synthesize status = _status;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@synthesize manualDispatchEnabled = _manualDispatchEnabled;
@synthesize automaticDispatchEnabled = _automaticDispatchEnabled;
@synthesize eventType = _eventType;
@synthesize eventObjectType = _eventObjectType;
@synthesize eventConditions = _eventConditions;
@synthesize contentParameters = _contentParameters;
@synthesize userParameters = _userParameters;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_status = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    self->_updatedAt = KALTURA_UNDEF_INT;
    self->_manualDispatchEnabled = KALTURA_UNDEF_BOOL;
    self->_automaticDispatchEnabled = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
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

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
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

- (KalturaFieldType)getTypeOfManualDispatchEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfAutomaticDispatchEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfEventType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEventObjectType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEventConditions
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfEventConditions
{
    return @"KalturaCondition";
}

- (KalturaFieldType)getTypeOfContentParameters
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfContentParameters
{
    return @"KalturaEventNotificationParameter";
}

- (KalturaFieldType)getTypeOfUserParameters
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfUserParameters
{
    return @"KalturaEventNotificationParameter";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtFromString:(NSString*)aPropVal
{
    self.updatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setManualDispatchEnabledFromString:(NSString*)aPropVal
{
    self.manualDispatchEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setAutomaticDispatchEnabledFromString:(NSString*)aPropVal
{
    self.automaticDispatchEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEventNotificationTemplate"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"systemName" withString:self.systemName];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"type" withString:self.type];
    [aParams addIfDefinedKey:@"manualDispatchEnabled" withBool:self.manualDispatchEnabled];
    [aParams addIfDefinedKey:@"automaticDispatchEnabled" withBool:self.automaticDispatchEnabled];
    [aParams addIfDefinedKey:@"eventType" withString:self.eventType];
    [aParams addIfDefinedKey:@"eventObjectType" withString:self.eventObjectType];
    [aParams addIfDefinedKey:@"eventConditions" withArray:self.eventConditions];
    [aParams addIfDefinedKey:@"contentParameters" withArray:self.contentParameters];
    [aParams addIfDefinedKey:@"userParameters" withArray:self.userParameters];
}

- (void)dealloc
{
    [self->_name release];
    [self->_systemName release];
    [self->_description release];
    [self->_type release];
    [self->_eventType release];
    [self->_eventObjectType release];
    [self->_eventConditions release];
    [self->_contentParameters release];
    [self->_userParameters release];
    [super dealloc];
}

@end

@implementation KalturaEventFieldCondition
@synthesize field = _field;

- (KalturaFieldType)getTypeOfField
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfField
{
    return @"KalturaBooleanField";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEventFieldCondition"];
    [aParams addIfDefinedKey:@"field" withObject:self.field];
}

- (void)dealloc
{
    [self->_field release];
    [super dealloc];
}

@end

@implementation KalturaEventNotificationArrayParameter
@synthesize values = _values;
@synthesize allowedValues = _allowedValues;

- (KalturaFieldType)getTypeOfValues
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfValues
{
    return @"KalturaString";
}

- (KalturaFieldType)getTypeOfAllowedValues
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfAllowedValues
{
    return @"KalturaStringValue";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEventNotificationArrayParameter"];
    [aParams addIfDefinedKey:@"values" withArray:self.values];
    [aParams addIfDefinedKey:@"allowedValues" withArray:self.allowedValues];
}

- (void)dealloc
{
    [self->_values release];
    [self->_allowedValues release];
    [super dealloc];
}

@end

@implementation KalturaEventNotificationDispatchJobData
@synthesize templateId = _templateId;
@synthesize contentParameters = _contentParameters;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_templateId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfTemplateId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfContentParameters
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfContentParameters
{
    return @"KalturaKeyValue";
}

- (void)setTemplateIdFromString:(NSString*)aPropVal
{
    self.templateId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEventNotificationDispatchJobData"];
    [aParams addIfDefinedKey:@"templateId" withInt:self.templateId];
    [aParams addIfDefinedKey:@"contentParameters" withArray:self.contentParameters];
}

- (void)dealloc
{
    [self->_contentParameters release];
    [super dealloc];
}

@end

@implementation KalturaEventNotificationScope
@synthesize objectId = _objectId;
@synthesize scopeObjectType = _scopeObjectType;

- (KalturaFieldType)getTypeOfObjectId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfScopeObjectType
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEventNotificationScope"];
    [aParams addIfDefinedKey:@"objectId" withString:self.objectId];
    [aParams addIfDefinedKey:@"scopeObjectType" withString:self.scopeObjectType];
}

- (void)dealloc
{
    [self->_objectId release];
    [self->_scopeObjectType release];
    [super dealloc];
}

@end

@implementation KalturaEventNotificationTemplateBaseFilter
@synthesize idEqual = _idEqual;
@synthesize idIn = _idIn;
@synthesize partnerIdEqual = _partnerIdEqual;
@synthesize partnerIdIn = _partnerIdIn;
@synthesize systemNameEqual = _systemNameEqual;
@synthesize systemNameIn = _systemNameIn;
@synthesize typeEqual = _typeEqual;
@synthesize typeIn = _typeIn;
@synthesize statusEqual = _statusEqual;
@synthesize statusIn = _statusIn;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_idEqual = KALTURA_UNDEF_INT;
    self->_partnerIdEqual = KALTURA_UNDEF_INT;
    self->_statusEqual = KALTURA_UNDEF_INT;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtLessThanOrEqual = KALTURA_UNDEF_INT;
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

- (KalturaFieldType)getTypeOfPartnerIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSystemNameEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSystemNameIn
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

- (KalturaFieldType)getTypeOfStatusEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatusIn
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

- (void)setIdEqualFromString:(NSString*)aPropVal
{
    self.idEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdEqualFromString:(NSString*)aPropVal
{
    self.partnerIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusEqualFromString:(NSString*)aPropVal
{
    self.statusEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
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

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEventNotificationTemplateBaseFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
    [aParams addIfDefinedKey:@"partnerIdEqual" withInt:self.partnerIdEqual];
    [aParams addIfDefinedKey:@"partnerIdIn" withString:self.partnerIdIn];
    [aParams addIfDefinedKey:@"systemNameEqual" withString:self.systemNameEqual];
    [aParams addIfDefinedKey:@"systemNameIn" withString:self.systemNameIn];
    [aParams addIfDefinedKey:@"typeEqual" withString:self.typeEqual];
    [aParams addIfDefinedKey:@"typeIn" withString:self.typeIn];
    [aParams addIfDefinedKey:@"statusEqual" withInt:self.statusEqual];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
}

- (void)dealloc
{
    [self->_idIn release];
    [self->_partnerIdIn release];
    [self->_systemNameEqual release];
    [self->_systemNameIn release];
    [self->_typeEqual release];
    [self->_typeIn release];
    [self->_statusIn release];
    [super dealloc];
}

@end

@interface KalturaEventNotificationTemplateListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaEventNotificationTemplateListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaEventNotificationTemplate";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEventNotificationTemplateListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaEventObjectChangedCondition
@synthesize modifiedColumns = _modifiedColumns;

- (KalturaFieldType)getTypeOfModifiedColumns
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEventObjectChangedCondition"];
    [aParams addIfDefinedKey:@"modifiedColumns" withString:self.modifiedColumns];
}

- (void)dealloc
{
    [self->_modifiedColumns release];
    [super dealloc];
}

@end

@implementation KalturaEventNotificationTemplateFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEventNotificationTemplateFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaEventNotificationTemplateService
- (KalturaEventNotificationTemplate*)addWithEventNotificationTemplate:(KalturaEventNotificationTemplate*)aEventNotificationTemplate
{
    [self.client.params addIfDefinedKey:@"eventNotificationTemplate" withObject:aEventNotificationTemplate];
    return [self.client queueObjectService:@"eventnotification_eventnotificationtemplate" withAction:@"add" withExpectedType:@"KalturaEventNotificationTemplate"];
}

- (KalturaEventNotificationTemplate*)cloneWithId:(int)aId withEventNotificationTemplate:(KalturaEventNotificationTemplate*)aEventNotificationTemplate
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"eventNotificationTemplate" withObject:aEventNotificationTemplate];
    return [self.client queueObjectService:@"eventnotification_eventnotificationtemplate" withAction:@"clone" withExpectedType:@"KalturaEventNotificationTemplate"];
}

- (KalturaEventNotificationTemplate*)cloneWithId:(int)aId
{
    return [self cloneWithId:aId withEventNotificationTemplate:nil];
}

- (void)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client queueVoidService:@"eventnotification_eventnotificationtemplate" withAction:@"delete"];
}

- (int)dispatchWithId:(int)aId withScope:(KalturaEventNotificationScope*)aScope
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"scope" withObject:aScope];
    return [self.client queueIntService:@"eventnotification_eventnotificationtemplate" withAction:@"dispatch"];
}

- (KalturaEventNotificationTemplate*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"eventnotification_eventnotificationtemplate" withAction:@"get" withExpectedType:@"KalturaEventNotificationTemplate"];
}

- (KalturaEventNotificationTemplateListResponse*)listWithFilter:(KalturaEventNotificationTemplateFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"eventnotification_eventnotificationtemplate" withAction:@"list" withExpectedType:@"KalturaEventNotificationTemplateListResponse"];
}

- (KalturaEventNotificationTemplateListResponse*)listWithFilter:(KalturaEventNotificationTemplateFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaEventNotificationTemplateListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaEventNotificationTemplateListResponse*)listByPartnerWithFilter:(KalturaPartnerFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"eventnotification_eventnotificationtemplate" withAction:@"listByPartner" withExpectedType:@"KalturaEventNotificationTemplateListResponse"];
}

- (KalturaEventNotificationTemplateListResponse*)listByPartnerWithFilter:(KalturaPartnerFilter*)aFilter
{
    return [self listByPartnerWithFilter:aFilter withPager:nil];
}

- (KalturaEventNotificationTemplateListResponse*)listByPartner
{
    return [self listByPartnerWithFilter:nil];
}

- (KalturaEventNotificationTemplateListResponse*)listTemplatesWithFilter:(KalturaEventNotificationTemplateFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"eventnotification_eventnotificationtemplate" withAction:@"listTemplates" withExpectedType:@"KalturaEventNotificationTemplateListResponse"];
}

- (KalturaEventNotificationTemplateListResponse*)listTemplatesWithFilter:(KalturaEventNotificationTemplateFilter*)aFilter
{
    return [self listTemplatesWithFilter:aFilter withPager:nil];
}

- (KalturaEventNotificationTemplateListResponse*)listTemplates
{
    return [self listTemplatesWithFilter:nil];
}

- (KalturaPushNotificationData*)registerWithNotificationTemplateSystemName:(NSString*)aNotificationTemplateSystemName withPushNotificationParams:(KalturaPushNotificationParams*)aPushNotificationParams
{
    [self.client.params addIfDefinedKey:@"notificationTemplateSystemName" withString:aNotificationTemplateSystemName];
    [self.client.params addIfDefinedKey:@"pushNotificationParams" withObject:aPushNotificationParams];
    return [self.client queueObjectService:@"eventnotification_eventnotificationtemplate" withAction:@"register" withExpectedType:@"KalturaPushNotificationData"];
}

- (void)sendCommandWithNotificationTemplateSystemName:(NSString*)aNotificationTemplateSystemName withPushNotificationParams:(KalturaPushNotificationParams*)aPushNotificationParams withCommand:(NSString*)aCommand
{
    [self.client.params addIfDefinedKey:@"notificationTemplateSystemName" withString:aNotificationTemplateSystemName];
    [self.client.params addIfDefinedKey:@"pushNotificationParams" withObject:aPushNotificationParams];
    [self.client.params addIfDefinedKey:@"command" withString:aCommand];
    [self.client queueVoidService:@"eventnotification_eventnotificationtemplate" withAction:@"sendCommand"];
}

- (KalturaEventNotificationTemplate*)updateWithId:(int)aId withEventNotificationTemplate:(KalturaEventNotificationTemplate*)aEventNotificationTemplate
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"eventNotificationTemplate" withObject:aEventNotificationTemplate];
    return [self.client queueObjectService:@"eventnotification_eventnotificationtemplate" withAction:@"update" withExpectedType:@"KalturaEventNotificationTemplate"];
}

- (KalturaEventNotificationTemplate*)updateStatusWithId:(int)aId withStatus:(int)aStatus
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"status" withInt:aStatus];
    return [self.client queueObjectService:@"eventnotification_eventnotificationtemplate" withAction:@"updateStatus" withExpectedType:@"KalturaEventNotificationTemplate"];
}

@end

@implementation KalturaEventNotificationClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaEventNotificationTemplateService*)eventNotificationTemplate
{
    if (self->_eventNotificationTemplate == nil)
    	self->_eventNotificationTemplate = [[KalturaEventNotificationTemplateService alloc] initWithClient:self.client];
    return self->_eventNotificationTemplate;
}

- (void)dealloc
{
    [self->_eventNotificationTemplate release];
	[super dealloc];
}

@end

