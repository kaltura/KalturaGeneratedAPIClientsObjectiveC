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
#import "KalturaReachClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaEntryVendorTaskCreationMode
+ (int)MANUAL
{
    return 1;
}
+ (int)AUTOMATIC
{
    return 2;
}
@end

@implementation KalturaEntryVendorTaskStatus
+ (int)PENDING
{
    return 1;
}
+ (int)READY
{
    return 2;
}
+ (int)PROCESSING
{
    return 3;
}
+ (int)PENDING_MODERATION
{
    return 4;
}
+ (int)REJECTED
{
    return 5;
}
+ (int)ERROR
{
    return 6;
}
+ (int)ABORTED
{
    return 7;
}
+ (int)PENDING_ENTRY_READY
{
    return 8;
}
@end

@implementation KalturaReachProfileContentDeletionPolicy
+ (int)DO_NOTHING
{
    return 1;
}
+ (int)DELETE_ONCE_PROCESSED
{
    return 2;
}
+ (int)DELETE_AFTER_WEEK
{
    return 3;
}
+ (int)DELETE_AFTER_MONTH
{
    return 4;
}
+ (int)DELETE_AFTER_THREE_MONTHS
{
    return 5;
}
@end

@implementation KalturaReachProfileStatus
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

@implementation KalturaReachProfileType
+ (int)FREE_TRIAL
{
    return 1;
}
+ (int)PAID
{
    return 2;
}
@end

@implementation KalturaVendorCatalogItemOutputFormat
+ (int)SRT
{
    return 1;
}
+ (int)DFXP
{
    return 2;
}
@end

@implementation KalturaVendorCatalogItemStatus
+ (int)DEPRECATED
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

@implementation KalturaVendorServiceFeature
+ (int)CAPTIONS
{
    return 1;
}
+ (int)TRANSLATION
{
    return 2;
}
+ (int)ALIGNMENT
{
    return 3;
}
@end

@implementation KalturaVendorServiceTurnAroundTime
+ (int)BEST_EFFORT
{
    return -1;
}
+ (int)IMMEDIATE
{
    return 0;
}
+ (int)THIRTY_MINUTES
{
    return 1800;
}
+ (int)TWO_HOURS
{
    return 7200;
}
+ (int)THREE_HOURS
{
    return 10800;
}
+ (int)SIX_HOURS
{
    return 21600;
}
+ (int)EIGHT_HOURS
{
    return 28800;
}
+ (int)TWELVE_HOURS
{
    return 43200;
}
+ (int)TWENTY_FOUR_HOURS
{
    return 86400;
}
+ (int)FORTY_EIGHT_HOURS
{
    return 172800;
}
+ (int)TEN_DAYS
{
    return 864000;
}
@end

@implementation KalturaVendorServiceType
+ (int)HUMAN
{
    return 1;
}
+ (int)MACHINE
{
    return 2;
}
@end

@implementation KalturaCatalogItemLanguage
+ (NSString*)AR
{
    return @"Arabic";
}
+ (NSString*)YUE
{
    return @"Cantonese";
}
+ (NSString*)ZH
{
    return @"Chinese";
}
+ (NSString*)NL
{
    return @"Dutch";
}
+ (NSString*)EN
{
    return @"English";
}
+ (NSString*)EN_US
{
    return @"English (American)";
}
+ (NSString*)EN_GB
{
    return @"English (British)";
}
+ (NSString*)FR
{
    return @"French";
}
+ (NSString*)DE
{
    return @"German";
}
+ (NSString*)HE
{
    return @"Hebrew";
}
+ (NSString*)HI
{
    return @"Hindi";
}
+ (NSString*)IT
{
    return @"Italian";
}
+ (NSString*)JA
{
    return @"Japanese";
}
+ (NSString*)KO
{
    return @"Korean";
}
+ (NSString*)CMN
{
    return @"Mandarin Chinese";
}
+ (NSString*)PT
{
    return @"Portuguese";
}
+ (NSString*)RU
{
    return @"Russian";
}
+ (NSString*)ES
{
    return @"Spanish";
}
+ (NSString*)TH
{
    return @"Thai";
}
+ (NSString*)TR
{
    return @"Turkish";
}
@end

@implementation KalturaEntryVendorTaskOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)FINISH_TIME_ASC
{
    return @"+finishTime";
}
+ (NSString*)ID_ASC
{
    return @"+id";
}
+ (NSString*)PRICE_ASC
{
    return @"+price";
}
+ (NSString*)QUEUE_TIME_ASC
{
    return @"+queueTime";
}
+ (NSString*)STATUS_ASC
{
    return @"+status";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)FINISH_TIME_DESC
{
    return @"-finishTime";
}
+ (NSString*)ID_DESC
{
    return @"-id";
}
+ (NSString*)PRICE_DESC
{
    return @"-price";
}
+ (NSString*)QUEUE_TIME_DESC
{
    return @"-queueTime";
}
+ (NSString*)STATUS_DESC
{
    return @"-status";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaReachProfileOrderBy
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

@implementation KalturaVendorCaptionsCatalogItemOrderBy
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

@implementation KalturaVendorCatalogItemOrderBy
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

@implementation KalturaVendorCatalogItemPriceFunction
+ (NSString*)PRICE_PER_MINUTE
{
    return @"kReachUtils::calcPricePerMinute";
}
+ (NSString*)PRICE_PER_SECOND
{
    return @"kReachUtils::calcPricePerSecond";
}
@end

@implementation KalturaVendorCreditRecurrenceFrequency
+ (NSString*)DAILY
{
    return @"day";
}
+ (NSString*)MONTHLY
{
    return @"month";
}
+ (NSString*)WEEKLY
{
    return @"week";
}
+ (NSString*)YEARLY
{
    return @"year";
}
@end

@implementation KalturaVendorTranslationCatalogItemOrderBy
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
@implementation KalturaBaseVendorCredit
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBaseVendorCredit"];
}

@end

@implementation KalturaDictionary
@synthesize language = _language;
@synthesize data = _data;

- (KalturaFieldType)getTypeOfLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfData
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDictionary"];
    [aParams addIfDefinedKey:@"language" withString:self.language];
    [aParams addIfDefinedKey:@"data" withString:self.data];
}

- (void)dealloc
{
    [self->_language release];
    [self->_data release];
    [super dealloc];
}

@end

@implementation KalturaVendorTaskData
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorTaskData"];
}

@end

@interface KalturaEntryVendorTask()
@property (nonatomic,assign) int id;
@property (nonatomic,assign) int partnerId;
@property (nonatomic,assign) int vendorPartnerId;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@property (nonatomic,assign) int queueTime;
@property (nonatomic,assign) int finishTime;
@property (nonatomic,assign) double price;
@property (nonatomic,copy) NSString* userId;
@property (nonatomic,copy) NSString* moderatingUser;
@property (nonatomic,copy) NSString* accessKey;
@property (nonatomic,copy) NSString* version;
@property (nonatomic,copy) NSString* dictionary;
@property (nonatomic,assign) int creationMode;
@end

@implementation KalturaEntryVendorTask
@synthesize id = _id;
@synthesize partnerId = _partnerId;
@synthesize vendorPartnerId = _vendorPartnerId;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@synthesize queueTime = _queueTime;
@synthesize finishTime = _finishTime;
@synthesize entryId = _entryId;
@synthesize status = _status;
@synthesize reachProfileId = _reachProfileId;
@synthesize catalogItemId = _catalogItemId;
@synthesize price = _price;
@synthesize userId = _userId;
@synthesize moderatingUser = _moderatingUser;
@synthesize errDescription = _errDescription;
@synthesize accessKey = _accessKey;
@synthesize version = _version;
@synthesize notes = _notes;
@synthesize dictionary = _dictionary;
@synthesize context = _context;
@synthesize accuracy = _accuracy;
@synthesize outputObjectId = _outputObjectId;
@synthesize partnerData = _partnerData;
@synthesize creationMode = _creationMode;
@synthesize taskJobData = _taskJobData;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_vendorPartnerId = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    self->_updatedAt = KALTURA_UNDEF_INT;
    self->_queueTime = KALTURA_UNDEF_INT;
    self->_finishTime = KALTURA_UNDEF_INT;
    self->_status = KALTURA_UNDEF_INT;
    self->_reachProfileId = KALTURA_UNDEF_INT;
    self->_catalogItemId = KALTURA_UNDEF_INT;
    self->_price = KALTURA_UNDEF_FLOAT;
    self->_accuracy = KALTURA_UNDEF_INT;
    self->_creationMode = KALTURA_UNDEF_INT;
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

- (KalturaFieldType)getTypeOfVendorPartnerId
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

- (KalturaFieldType)getTypeOfQueueTime
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFinishTime
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEntryId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfReachProfileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCatalogItemId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPrice
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfModeratingUser
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfErrDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAccessKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVersion
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfNotes
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDictionary
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfContext
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAccuracy
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfOutputObjectId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPartnerData
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreationMode
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTaskJobData
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfTaskJobData
{
    return @"KalturaVendorTaskData";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setVendorPartnerIdFromString:(NSString*)aPropVal
{
    self.vendorPartnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtFromString:(NSString*)aPropVal
{
    self.updatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setQueueTimeFromString:(NSString*)aPropVal
{
    self.queueTime = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFinishTimeFromString:(NSString*)aPropVal
{
    self.finishTime = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setReachProfileIdFromString:(NSString*)aPropVal
{
    self.reachProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCatalogItemIdFromString:(NSString*)aPropVal
{
    self.catalogItemId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPriceFromString:(NSString*)aPropVal
{
    self.price = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setAccuracyFromString:(NSString*)aPropVal
{
    self.accuracy = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreationModeFromString:(NSString*)aPropVal
{
    self.creationMode = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEntryVendorTask"];
    [aParams addIfDefinedKey:@"entryId" withString:self.entryId];
    [aParams addIfDefinedKey:@"status" withInt:self.status];
    [aParams addIfDefinedKey:@"reachProfileId" withInt:self.reachProfileId];
    [aParams addIfDefinedKey:@"catalogItemId" withInt:self.catalogItemId];
    [aParams addIfDefinedKey:@"errDescription" withString:self.errDescription];
    [aParams addIfDefinedKey:@"notes" withString:self.notes];
    [aParams addIfDefinedKey:@"context" withString:self.context];
    [aParams addIfDefinedKey:@"accuracy" withInt:self.accuracy];
    [aParams addIfDefinedKey:@"outputObjectId" withString:self.outputObjectId];
    [aParams addIfDefinedKey:@"partnerData" withString:self.partnerData];
    [aParams addIfDefinedKey:@"taskJobData" withObject:self.taskJobData];
}

- (void)dealloc
{
    [self->_entryId release];
    [self->_userId release];
    [self->_moderatingUser release];
    [self->_errDescription release];
    [self->_accessKey release];
    [self->_version release];
    [self->_notes release];
    [self->_dictionary release];
    [self->_context release];
    [self->_outputObjectId release];
    [self->_partnerData release];
    [self->_taskJobData release];
    [super dealloc];
}

@end

@interface KalturaReachProfile()
@property (nonatomic,assign) int id;
@property (nonatomic,assign) int partnerId;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@property (nonatomic,assign) int status;
@property (nonatomic,assign) double usedCredit;
@end

@implementation KalturaReachProfile
@synthesize id = _id;
@synthesize name = _name;
@synthesize partnerId = _partnerId;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@synthesize status = _status;
@synthesize profileType = _profileType;
@synthesize defaultOutputFormat = _defaultOutputFormat;
@synthesize enableMachineModeration = _enableMachineModeration;
@synthesize enableHumanModeration = _enableHumanModeration;
@synthesize autoDisplayMachineCaptionsOnPlayer = _autoDisplayMachineCaptionsOnPlayer;
@synthesize autoDisplayHumanCaptionsOnPlayer = _autoDisplayHumanCaptionsOnPlayer;
@synthesize enableMetadataExtraction = _enableMetadataExtraction;
@synthesize enableSpeakerChangeIndication = _enableSpeakerChangeIndication;
@synthesize enableAudioTags = _enableAudioTags;
@synthesize enableProfanityRemoval = _enableProfanityRemoval;
@synthesize maxCharactersPerCaptionLine = _maxCharactersPerCaptionLine;
@synthesize contentDeletionPolicy = _contentDeletionPolicy;
@synthesize rules = _rules;
@synthesize credit = _credit;
@synthesize usedCredit = _usedCredit;
@synthesize dictionaries = _dictionaries;
@synthesize flavorParamsIds = _flavorParamsIds;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    self->_updatedAt = KALTURA_UNDEF_INT;
    self->_status = KALTURA_UNDEF_INT;
    self->_profileType = KALTURA_UNDEF_INT;
    self->_defaultOutputFormat = KALTURA_UNDEF_INT;
    self->_enableMachineModeration = KALTURA_UNDEF_INT;
    self->_enableHumanModeration = KALTURA_UNDEF_INT;
    self->_autoDisplayMachineCaptionsOnPlayer = KALTURA_UNDEF_INT;
    self->_autoDisplayHumanCaptionsOnPlayer = KALTURA_UNDEF_INT;
    self->_enableMetadataExtraction = KALTURA_UNDEF_INT;
    self->_enableSpeakerChangeIndication = KALTURA_UNDEF_INT;
    self->_enableAudioTags = KALTURA_UNDEF_INT;
    self->_enableProfanityRemoval = KALTURA_UNDEF_INT;
    self->_maxCharactersPerCaptionLine = KALTURA_UNDEF_INT;
    self->_contentDeletionPolicy = KALTURA_UNDEF_INT;
    self->_usedCredit = KALTURA_UNDEF_FLOAT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPartnerId
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

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfProfileType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDefaultOutputFormat
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEnableMachineModeration
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEnableHumanModeration
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAutoDisplayMachineCaptionsOnPlayer
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAutoDisplayHumanCaptionsOnPlayer
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEnableMetadataExtraction
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEnableSpeakerChangeIndication
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEnableAudioTags
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEnableProfanityRemoval
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMaxCharactersPerCaptionLine
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfContentDeletionPolicy
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRules
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfRules
{
    return @"KalturaRule";
}

- (KalturaFieldType)getTypeOfCredit
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfCredit
{
    return @"KalturaBaseVendorCredit";
}

- (KalturaFieldType)getTypeOfUsedCredit
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfDictionaries
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfDictionaries
{
    return @"KalturaDictionary";
}

- (KalturaFieldType)getTypeOfFlavorParamsIds
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtFromString:(NSString*)aPropVal
{
    self.updatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setProfileTypeFromString:(NSString*)aPropVal
{
    self.profileType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDefaultOutputFormatFromString:(NSString*)aPropVal
{
    self.defaultOutputFormat = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEnableMachineModerationFromString:(NSString*)aPropVal
{
    self.enableMachineModeration = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEnableHumanModerationFromString:(NSString*)aPropVal
{
    self.enableHumanModeration = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAutoDisplayMachineCaptionsOnPlayerFromString:(NSString*)aPropVal
{
    self.autoDisplayMachineCaptionsOnPlayer = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAutoDisplayHumanCaptionsOnPlayerFromString:(NSString*)aPropVal
{
    self.autoDisplayHumanCaptionsOnPlayer = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEnableMetadataExtractionFromString:(NSString*)aPropVal
{
    self.enableMetadataExtraction = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEnableSpeakerChangeIndicationFromString:(NSString*)aPropVal
{
    self.enableSpeakerChangeIndication = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEnableAudioTagsFromString:(NSString*)aPropVal
{
    self.enableAudioTags = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEnableProfanityRemovalFromString:(NSString*)aPropVal
{
    self.enableProfanityRemoval = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMaxCharactersPerCaptionLineFromString:(NSString*)aPropVal
{
    self.maxCharactersPerCaptionLine = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setContentDeletionPolicyFromString:(NSString*)aPropVal
{
    self.contentDeletionPolicy = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUsedCreditFromString:(NSString*)aPropVal
{
    self.usedCredit = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaReachProfile"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"profileType" withInt:self.profileType];
    [aParams addIfDefinedKey:@"defaultOutputFormat" withInt:self.defaultOutputFormat];
    [aParams addIfDefinedKey:@"enableMachineModeration" withInt:self.enableMachineModeration];
    [aParams addIfDefinedKey:@"enableHumanModeration" withInt:self.enableHumanModeration];
    [aParams addIfDefinedKey:@"autoDisplayMachineCaptionsOnPlayer" withInt:self.autoDisplayMachineCaptionsOnPlayer];
    [aParams addIfDefinedKey:@"autoDisplayHumanCaptionsOnPlayer" withInt:self.autoDisplayHumanCaptionsOnPlayer];
    [aParams addIfDefinedKey:@"enableMetadataExtraction" withInt:self.enableMetadataExtraction];
    [aParams addIfDefinedKey:@"enableSpeakerChangeIndication" withInt:self.enableSpeakerChangeIndication];
    [aParams addIfDefinedKey:@"enableAudioTags" withInt:self.enableAudioTags];
    [aParams addIfDefinedKey:@"enableProfanityRemoval" withInt:self.enableProfanityRemoval];
    [aParams addIfDefinedKey:@"maxCharactersPerCaptionLine" withInt:self.maxCharactersPerCaptionLine];
    [aParams addIfDefinedKey:@"contentDeletionPolicy" withInt:self.contentDeletionPolicy];
    [aParams addIfDefinedKey:@"rules" withArray:self.rules];
    [aParams addIfDefinedKey:@"credit" withObject:self.credit];
    [aParams addIfDefinedKey:@"dictionaries" withArray:self.dictionaries];
    [aParams addIfDefinedKey:@"flavorParamsIds" withString:self.flavorParamsIds];
}

- (void)dealloc
{
    [self->_name release];
    [self->_rules release];
    [self->_credit release];
    [self->_dictionaries release];
    [self->_flavorParamsIds release];
    [super dealloc];
}

@end

@implementation KalturaVendorCatalogItemPricing
@synthesize pricePerUnit = _pricePerUnit;
@synthesize priceFunction = _priceFunction;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_pricePerUnit = KALTURA_UNDEF_FLOAT;
    return self;
}

- (KalturaFieldType)getTypeOfPricePerUnit
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfPriceFunction
{
    return KFT_String;
}

- (void)setPricePerUnitFromString:(NSString*)aPropVal
{
    self.pricePerUnit = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorCatalogItemPricing"];
    [aParams addIfDefinedKey:@"pricePerUnit" withFloat:self.pricePerUnit];
    [aParams addIfDefinedKey:@"priceFunction" withString:self.priceFunction];
}

- (void)dealloc
{
    [self->_priceFunction release];
    [super dealloc];
}

@end

@interface KalturaVendorCatalogItem()
@property (nonatomic,assign) int id;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@property (nonatomic,assign) int status;
@property (nonatomic,assign) int serviceFeature;
@end

@implementation KalturaVendorCatalogItem
@synthesize id = _id;
@synthesize vendorPartnerId = _vendorPartnerId;
@synthesize name = _name;
@synthesize systemName = _systemName;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@synthesize status = _status;
@synthesize serviceType = _serviceType;
@synthesize serviceFeature = _serviceFeature;
@synthesize turnAroundTime = _turnAroundTime;
@synthesize pricing = _pricing;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_vendorPartnerId = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    self->_updatedAt = KALTURA_UNDEF_INT;
    self->_status = KALTURA_UNDEF_INT;
    self->_serviceType = KALTURA_UNDEF_INT;
    self->_serviceFeature = KALTURA_UNDEF_INT;
    self->_turnAroundTime = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfVendorPartnerId
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

- (KalturaFieldType)getTypeOfCreatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfServiceType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfServiceFeature
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTurnAroundTime
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPricing
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfPricing
{
    return @"KalturaVendorCatalogItemPricing";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setVendorPartnerIdFromString:(NSString*)aPropVal
{
    self.vendorPartnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtFromString:(NSString*)aPropVal
{
    self.updatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setServiceTypeFromString:(NSString*)aPropVal
{
    self.serviceType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setServiceFeatureFromString:(NSString*)aPropVal
{
    self.serviceFeature = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTurnAroundTimeFromString:(NSString*)aPropVal
{
    self.turnAroundTime = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorCatalogItem"];
    [aParams addIfDefinedKey:@"vendorPartnerId" withInt:self.vendorPartnerId];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"systemName" withString:self.systemName];
    [aParams addIfDefinedKey:@"serviceType" withInt:self.serviceType];
    [aParams addIfDefinedKey:@"turnAroundTime" withInt:self.turnAroundTime];
    [aParams addIfDefinedKey:@"pricing" withObject:self.pricing];
}

- (void)dealloc
{
    [self->_name release];
    [self->_systemName release];
    [self->_pricing release];
    [super dealloc];
}

@end

@implementation KalturaAddEntryVendorTaskAction
@synthesize catalogItemIds = _catalogItemIds;

- (KalturaFieldType)getTypeOfCatalogItemIds
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAddEntryVendorTaskAction"];
    [aParams addIfDefinedKey:@"catalogItemIds" withString:self.catalogItemIds];
}

- (void)dealloc
{
    [self->_catalogItemIds release];
    [super dealloc];
}

@end

@implementation KalturaAlignmentVendorTaskData
@synthesize textTranscriptAssetId = _textTranscriptAssetId;
@synthesize jsonTranscriptAssetId = _jsonTranscriptAssetId;
@synthesize captionAssetId = _captionAssetId;

- (KalturaFieldType)getTypeOfTextTranscriptAssetId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfJsonTranscriptAssetId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionAssetId
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAlignmentVendorTaskData"];
    [aParams addIfDefinedKey:@"textTranscriptAssetId" withString:self.textTranscriptAssetId];
    [aParams addIfDefinedKey:@"jsonTranscriptAssetId" withString:self.jsonTranscriptAssetId];
    [aParams addIfDefinedKey:@"captionAssetId" withString:self.captionAssetId];
}

- (void)dealloc
{
    [self->_textTranscriptAssetId release];
    [self->_jsonTranscriptAssetId release];
    [self->_captionAssetId release];
    [super dealloc];
}

@end

@implementation KalturaCatalogItemAdvancedFilter
@synthesize serviceTypeEqual = _serviceTypeEqual;
@synthesize serviceTypeIn = _serviceTypeIn;
@synthesize serviceFeatureEqual = _serviceFeatureEqual;
@synthesize serviceFeatureIn = _serviceFeatureIn;
@synthesize turnAroundTimeEqual = _turnAroundTimeEqual;
@synthesize turnAroundTimeIn = _turnAroundTimeIn;
@synthesize sourceLanguageEqual = _sourceLanguageEqual;
@synthesize targetLanguageEqual = _targetLanguageEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_serviceTypeEqual = KALTURA_UNDEF_INT;
    self->_serviceFeatureEqual = KALTURA_UNDEF_INT;
    self->_turnAroundTimeEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfServiceTypeEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfServiceTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfServiceFeatureEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfServiceFeatureIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTurnAroundTimeEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTurnAroundTimeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSourceLanguageEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTargetLanguageEqual
{
    return KFT_String;
}

- (void)setServiceTypeEqualFromString:(NSString*)aPropVal
{
    self.serviceTypeEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setServiceFeatureEqualFromString:(NSString*)aPropVal
{
    self.serviceFeatureEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTurnAroundTimeEqualFromString:(NSString*)aPropVal
{
    self.turnAroundTimeEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCatalogItemAdvancedFilter"];
    [aParams addIfDefinedKey:@"serviceTypeEqual" withInt:self.serviceTypeEqual];
    [aParams addIfDefinedKey:@"serviceTypeIn" withString:self.serviceTypeIn];
    [aParams addIfDefinedKey:@"serviceFeatureEqual" withInt:self.serviceFeatureEqual];
    [aParams addIfDefinedKey:@"serviceFeatureIn" withString:self.serviceFeatureIn];
    [aParams addIfDefinedKey:@"turnAroundTimeEqual" withInt:self.turnAroundTimeEqual];
    [aParams addIfDefinedKey:@"turnAroundTimeIn" withString:self.turnAroundTimeIn];
    [aParams addIfDefinedKey:@"sourceLanguageEqual" withString:self.sourceLanguageEqual];
    [aParams addIfDefinedKey:@"targetLanguageEqual" withString:self.targetLanguageEqual];
}

- (void)dealloc
{
    [self->_serviceTypeIn release];
    [self->_serviceFeatureIn release];
    [self->_turnAroundTimeIn release];
    [self->_sourceLanguageEqual release];
    [self->_targetLanguageEqual release];
    [super dealloc];
}

@end

@implementation KalturaCategoryEntryCondition
@synthesize categoryId = _categoryId;
@synthesize categoryUserPermission = _categoryUserPermission;
@synthesize comparison = _comparison;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_categoryId = KALTURA_UNDEF_INT;
    self->_categoryUserPermission = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfCategoryId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCategoryUserPermission
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfComparison
{
    return KFT_String;
}

- (void)setCategoryIdFromString:(NSString*)aPropVal
{
    self.categoryId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCategoryUserPermissionFromString:(NSString*)aPropVal
{
    self.categoryUserPermission = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCategoryEntryCondition"];
    [aParams addIfDefinedKey:@"categoryId" withInt:self.categoryId];
    [aParams addIfDefinedKey:@"categoryUserPermission" withInt:self.categoryUserPermission];
    [aParams addIfDefinedKey:@"comparison" withString:self.comparison];
}

- (void)dealloc
{
    [self->_comparison release];
    [super dealloc];
}

@end

@implementation KalturaEntryVendorTaskBaseFilter
@synthesize idEqual = _idEqual;
@synthesize idIn = _idIn;
@synthesize vendorPartnerIdEqual = _vendorPartnerIdEqual;
@synthesize vendorPartnerIdIn = _vendorPartnerIdIn;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;
@synthesize queueTimeGreaterThanOrEqual = _queueTimeGreaterThanOrEqual;
@synthesize queueTimeLessThanOrEqual = _queueTimeLessThanOrEqual;
@synthesize finishTimeGreaterThanOrEqual = _finishTimeGreaterThanOrEqual;
@synthesize finishTimeLessThanOrEqual = _finishTimeLessThanOrEqual;
@synthesize entryIdEqual = _entryIdEqual;
@synthesize statusEqual = _statusEqual;
@synthesize statusIn = _statusIn;
@synthesize reachProfileIdEqual = _reachProfileIdEqual;
@synthesize reachProfileIdIn = _reachProfileIdIn;
@synthesize catalogItemIdEqual = _catalogItemIdEqual;
@synthesize catalogItemIdIn = _catalogItemIdIn;
@synthesize userIdEqual = _userIdEqual;
@synthesize contextEqual = _contextEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_idEqual = KALTURA_UNDEF_INT;
    self->_vendorPartnerIdEqual = KALTURA_UNDEF_INT;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_queueTimeGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_queueTimeLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_finishTimeGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_finishTimeLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_statusEqual = KALTURA_UNDEF_INT;
    self->_reachProfileIdEqual = KALTURA_UNDEF_INT;
    self->_catalogItemIdEqual = KALTURA_UNDEF_INT;
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

- (KalturaFieldType)getTypeOfVendorPartnerIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfVendorPartnerIdIn
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

- (KalturaFieldType)getTypeOfQueueTimeGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfQueueTimeLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFinishTimeGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFinishTimeLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEntryIdEqual
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

- (KalturaFieldType)getTypeOfReachProfileIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfReachProfileIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCatalogItemIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCatalogItemIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfContextEqual
{
    return KFT_String;
}

- (void)setIdEqualFromString:(NSString*)aPropVal
{
    self.idEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setVendorPartnerIdEqualFromString:(NSString*)aPropVal
{
    self.vendorPartnerIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
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

- (void)setQueueTimeGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.queueTimeGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setQueueTimeLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.queueTimeLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFinishTimeGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.finishTimeGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFinishTimeLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.finishTimeLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusEqualFromString:(NSString*)aPropVal
{
    self.statusEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setReachProfileIdEqualFromString:(NSString*)aPropVal
{
    self.reachProfileIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCatalogItemIdEqualFromString:(NSString*)aPropVal
{
    self.catalogItemIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEntryVendorTaskBaseFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
    [aParams addIfDefinedKey:@"vendorPartnerIdEqual" withInt:self.vendorPartnerIdEqual];
    [aParams addIfDefinedKey:@"vendorPartnerIdIn" withString:self.vendorPartnerIdIn];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"queueTimeGreaterThanOrEqual" withInt:self.queueTimeGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"queueTimeLessThanOrEqual" withInt:self.queueTimeLessThanOrEqual];
    [aParams addIfDefinedKey:@"finishTimeGreaterThanOrEqual" withInt:self.finishTimeGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"finishTimeLessThanOrEqual" withInt:self.finishTimeLessThanOrEqual];
    [aParams addIfDefinedKey:@"entryIdEqual" withString:self.entryIdEqual];
    [aParams addIfDefinedKey:@"statusEqual" withInt:self.statusEqual];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"reachProfileIdEqual" withInt:self.reachProfileIdEqual];
    [aParams addIfDefinedKey:@"reachProfileIdIn" withString:self.reachProfileIdIn];
    [aParams addIfDefinedKey:@"catalogItemIdEqual" withInt:self.catalogItemIdEqual];
    [aParams addIfDefinedKey:@"catalogItemIdIn" withString:self.catalogItemIdIn];
    [aParams addIfDefinedKey:@"userIdEqual" withString:self.userIdEqual];
    [aParams addIfDefinedKey:@"contextEqual" withString:self.contextEqual];
}

- (void)dealloc
{
    [self->_idIn release];
    [self->_vendorPartnerIdIn release];
    [self->_entryIdEqual release];
    [self->_statusIn release];
    [self->_reachProfileIdIn release];
    [self->_catalogItemIdIn release];
    [self->_userIdEqual release];
    [self->_contextEqual release];
    [super dealloc];
}

@end

@implementation KalturaEntryVendorTaskFilter
@synthesize freeText = _freeText;

- (KalturaFieldType)getTypeOfFreeText
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEntryVendorTaskFilter"];
    [aParams addIfDefinedKey:@"freeText" withString:self.freeText];
}

- (void)dealloc
{
    [self->_freeText release];
    [super dealloc];
}

@end

@implementation KalturaEntryVendorTaskCsvJobData
@synthesize filter = _filter;
@synthesize userName = _userName;
@synthesize userMail = _userMail;
@synthesize outputPath = _outputPath;

- (KalturaFieldType)getTypeOfFilter
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfFilter
{
    return @"KalturaEntryVendorTaskFilter";
}

- (KalturaFieldType)getTypeOfUserName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserMail
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOutputPath
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEntryVendorTaskCsvJobData"];
    [aParams addIfDefinedKey:@"filter" withObject:self.filter];
    [aParams addIfDefinedKey:@"userName" withString:self.userName];
    [aParams addIfDefinedKey:@"userMail" withString:self.userMail];
    [aParams addIfDefinedKey:@"outputPath" withString:self.outputPath];
}

- (void)dealloc
{
    [self->_filter release];
    [self->_userName release];
    [self->_userMail release];
    [self->_outputPath release];
    [super dealloc];
}

@end

@interface KalturaEntryVendorTaskListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaEntryVendorTaskListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaEntryVendorTask";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEntryVendorTaskListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaReachProfileListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaReachProfileListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaReachProfile";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaReachProfileListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaUnlimitedVendorCredit()
@property (nonatomic,assign) int credit;
@end

@implementation KalturaUnlimitedVendorCredit
@synthesize credit = _credit;
@synthesize fromDate = _fromDate;
@synthesize toDate = _toDate;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_credit = KALTURA_UNDEF_INT;
    self->_fromDate = KALTURA_UNDEF_INT;
    self->_toDate = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfCredit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFromDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfToDate
{
    return KFT_Int;
}

- (void)setCreditFromString:(NSString*)aPropVal
{
    self.credit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFromDateFromString:(NSString*)aPropVal
{
    self.fromDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setToDateFromString:(NSString*)aPropVal
{
    self.toDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUnlimitedVendorCredit"];
    [aParams addIfDefinedKey:@"fromDate" withInt:self.fromDate];
    [aParams addIfDefinedKey:@"toDate" withInt:self.toDate];
}

@end

@implementation KalturaVendorAlignmentCatalogItem
@synthesize sourceLanguage = _sourceLanguage;
@synthesize outputFormat = _outputFormat;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_outputFormat = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfSourceLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOutputFormat
{
    return KFT_Int;
}

- (void)setOutputFormatFromString:(NSString*)aPropVal
{
    self.outputFormat = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorAlignmentCatalogItem"];
    [aParams addIfDefinedKey:@"sourceLanguage" withString:self.sourceLanguage];
    [aParams addIfDefinedKey:@"outputFormat" withInt:self.outputFormat];
}

- (void)dealloc
{
    [self->_sourceLanguage release];
    [super dealloc];
}

@end

@implementation KalturaVendorCaptionsCatalogItem
@synthesize sourceLanguage = _sourceLanguage;
@synthesize outputFormat = _outputFormat;
@synthesize enableSpeakerId = _enableSpeakerId;
@synthesize fixedPriceAddons = _fixedPriceAddons;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_outputFormat = KALTURA_UNDEF_INT;
    self->_enableSpeakerId = KALTURA_UNDEF_INT;
    self->_fixedPriceAddons = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfSourceLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOutputFormat
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEnableSpeakerId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFixedPriceAddons
{
    return KFT_Int;
}

- (void)setOutputFormatFromString:(NSString*)aPropVal
{
    self.outputFormat = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEnableSpeakerIdFromString:(NSString*)aPropVal
{
    self.enableSpeakerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFixedPriceAddonsFromString:(NSString*)aPropVal
{
    self.fixedPriceAddons = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorCaptionsCatalogItem"];
    [aParams addIfDefinedKey:@"sourceLanguage" withString:self.sourceLanguage];
    [aParams addIfDefinedKey:@"outputFormat" withInt:self.outputFormat];
    [aParams addIfDefinedKey:@"enableSpeakerId" withInt:self.enableSpeakerId];
    [aParams addIfDefinedKey:@"fixedPriceAddons" withInt:self.fixedPriceAddons];
}

- (void)dealloc
{
    [self->_sourceLanguage release];
    [super dealloc];
}

@end

@interface KalturaVendorCatalogItemListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaVendorCatalogItemListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaVendorCatalogItem";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorCatalogItemListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaVendorCredit
@synthesize credit = _credit;
@synthesize fromDate = _fromDate;
@synthesize overageCredit = _overageCredit;
@synthesize addOn = _addOn;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_credit = KALTURA_UNDEF_INT;
    self->_fromDate = KALTURA_UNDEF_INT;
    self->_overageCredit = KALTURA_UNDEF_INT;
    self->_addOn = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfCredit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFromDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfOverageCredit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAddOn
{
    return KFT_Int;
}

- (void)setCreditFromString:(NSString*)aPropVal
{
    self.credit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFromDateFromString:(NSString*)aPropVal
{
    self.fromDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setOverageCreditFromString:(NSString*)aPropVal
{
    self.overageCredit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAddOnFromString:(NSString*)aPropVal
{
    self.addOn = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorCredit"];
    [aParams addIfDefinedKey:@"credit" withInt:self.credit];
    [aParams addIfDefinedKey:@"fromDate" withInt:self.fromDate];
    [aParams addIfDefinedKey:@"overageCredit" withInt:self.overageCredit];
    [aParams addIfDefinedKey:@"addOn" withInt:self.addOn];
}

@end

@implementation KalturaReachProfileBaseFilter
@synthesize idEqual = _idEqual;
@synthesize idIn = _idIn;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;
@synthesize statusEqual = _statusEqual;
@synthesize statusIn = _statusIn;
@synthesize profileTypeEqual = _profileTypeEqual;
@synthesize profileTypeIn = _profileTypeIn;

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
    self->_statusEqual = KALTURA_UNDEF_INT;
    self->_profileTypeEqual = KALTURA_UNDEF_INT;
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

- (KalturaFieldType)getTypeOfStatusEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatusIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfProfileTypeEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfProfileTypeIn
{
    return KFT_String;
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

- (void)setStatusEqualFromString:(NSString*)aPropVal
{
    self.statusEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setProfileTypeEqualFromString:(NSString*)aPropVal
{
    self.profileTypeEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaReachProfileBaseFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"statusEqual" withInt:self.statusEqual];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"profileTypeEqual" withInt:self.profileTypeEqual];
    [aParams addIfDefinedKey:@"profileTypeIn" withString:self.profileTypeIn];
}

- (void)dealloc
{
    [self->_idIn release];
    [self->_statusIn release];
    [self->_profileTypeIn release];
    [super dealloc];
}

@end

@implementation KalturaReachReportInputFilter
@synthesize serviceType = _serviceType;
@synthesize serviceFeature = _serviceFeature;
@synthesize turnAroundTime = _turnAroundTime;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_serviceType = KALTURA_UNDEF_INT;
    self->_serviceFeature = KALTURA_UNDEF_INT;
    self->_turnAroundTime = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfServiceType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfServiceFeature
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTurnAroundTime
{
    return KFT_Int;
}

- (void)setServiceTypeFromString:(NSString*)aPropVal
{
    self.serviceType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setServiceFeatureFromString:(NSString*)aPropVal
{
    self.serviceFeature = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTurnAroundTimeFromString:(NSString*)aPropVal
{
    self.turnAroundTime = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaReachReportInputFilter"];
    [aParams addIfDefinedKey:@"serviceType" withInt:self.serviceType];
    [aParams addIfDefinedKey:@"serviceFeature" withInt:self.serviceFeature];
    [aParams addIfDefinedKey:@"turnAroundTime" withInt:self.turnAroundTime];
}

@end

@implementation KalturaTimeRangeVendorCredit
@synthesize toDate = _toDate;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_toDate = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfToDate
{
    return KFT_Int;
}

- (void)setToDateFromString:(NSString*)aPropVal
{
    self.toDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTimeRangeVendorCredit"];
    [aParams addIfDefinedKey:@"toDate" withInt:self.toDate];
}

@end

@implementation KalturaVendorCatalogItemBaseFilter
@synthesize idEqual = _idEqual;
@synthesize idIn = _idIn;
@synthesize idNotIn = _idNotIn;
@synthesize vendorPartnerIdEqual = _vendorPartnerIdEqual;
@synthesize vendorPartnerIdIn = _vendorPartnerIdIn;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;
@synthesize statusEqual = _statusEqual;
@synthesize statusIn = _statusIn;
@synthesize serviceTypeEqual = _serviceTypeEqual;
@synthesize serviceTypeIn = _serviceTypeIn;
@synthesize serviceFeatureEqual = _serviceFeatureEqual;
@synthesize serviceFeatureIn = _serviceFeatureIn;
@synthesize turnAroundTimeEqual = _turnAroundTimeEqual;
@synthesize turnAroundTimeIn = _turnAroundTimeIn;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_idEqual = KALTURA_UNDEF_INT;
    self->_vendorPartnerIdEqual = KALTURA_UNDEF_INT;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_statusEqual = KALTURA_UNDEF_INT;
    self->_serviceTypeEqual = KALTURA_UNDEF_INT;
    self->_serviceFeatureEqual = KALTURA_UNDEF_INT;
    self->_turnAroundTimeEqual = KALTURA_UNDEF_INT;
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

- (KalturaFieldType)getTypeOfVendorPartnerIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfVendorPartnerIdIn
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

- (KalturaFieldType)getTypeOfStatusEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatusIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfServiceTypeEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfServiceTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfServiceFeatureEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfServiceFeatureIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTurnAroundTimeEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTurnAroundTimeIn
{
    return KFT_String;
}

- (void)setIdEqualFromString:(NSString*)aPropVal
{
    self.idEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setVendorPartnerIdEqualFromString:(NSString*)aPropVal
{
    self.vendorPartnerIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
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

- (void)setStatusEqualFromString:(NSString*)aPropVal
{
    self.statusEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setServiceTypeEqualFromString:(NSString*)aPropVal
{
    self.serviceTypeEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setServiceFeatureEqualFromString:(NSString*)aPropVal
{
    self.serviceFeatureEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTurnAroundTimeEqualFromString:(NSString*)aPropVal
{
    self.turnAroundTimeEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorCatalogItemBaseFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
    [aParams addIfDefinedKey:@"idNotIn" withString:self.idNotIn];
    [aParams addIfDefinedKey:@"vendorPartnerIdEqual" withInt:self.vendorPartnerIdEqual];
    [aParams addIfDefinedKey:@"vendorPartnerIdIn" withString:self.vendorPartnerIdIn];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"statusEqual" withInt:self.statusEqual];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"serviceTypeEqual" withInt:self.serviceTypeEqual];
    [aParams addIfDefinedKey:@"serviceTypeIn" withString:self.serviceTypeIn];
    [aParams addIfDefinedKey:@"serviceFeatureEqual" withInt:self.serviceFeatureEqual];
    [aParams addIfDefinedKey:@"serviceFeatureIn" withString:self.serviceFeatureIn];
    [aParams addIfDefinedKey:@"turnAroundTimeEqual" withInt:self.turnAroundTimeEqual];
    [aParams addIfDefinedKey:@"turnAroundTimeIn" withString:self.turnAroundTimeIn];
}

- (void)dealloc
{
    [self->_idIn release];
    [self->_idNotIn release];
    [self->_vendorPartnerIdIn release];
    [self->_statusIn release];
    [self->_serviceTypeIn release];
    [self->_serviceFeatureIn release];
    [self->_turnAroundTimeIn release];
    [super dealloc];
}

@end

@implementation KalturaVendorTranslationCatalogItem
@synthesize targetLanguage = _targetLanguage;

- (KalturaFieldType)getTypeOfTargetLanguage
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorTranslationCatalogItem"];
    [aParams addIfDefinedKey:@"targetLanguage" withString:self.targetLanguage];
}

- (void)dealloc
{
    [self->_targetLanguage release];
    [super dealloc];
}

@end

@implementation KalturaReachProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaReachProfileFilter"];
}

@end

@implementation KalturaReoccurringVendorCredit
@synthesize frequency = _frequency;

- (KalturaFieldType)getTypeOfFrequency
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaReoccurringVendorCredit"];
    [aParams addIfDefinedKey:@"frequency" withString:self.frequency];
}

- (void)dealloc
{
    [self->_frequency release];
    [super dealloc];
}

@end

@implementation KalturaVendorCatalogItemFilter
@synthesize partnerIdEqual = _partnerIdEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_partnerIdEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfPartnerIdEqual
{
    return KFT_Int;
}

- (void)setPartnerIdEqualFromString:(NSString*)aPropVal
{
    self.partnerIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorCatalogItemFilter"];
    [aParams addIfDefinedKey:@"partnerIdEqual" withInt:self.partnerIdEqual];
}

@end

@implementation KalturaVendorCaptionsCatalogItemBaseFilter
@synthesize sourceLanguageEqual = _sourceLanguageEqual;
@synthesize sourceLanguageIn = _sourceLanguageIn;
@synthesize outputFormatEqual = _outputFormatEqual;
@synthesize outputFormatIn = _outputFormatIn;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_outputFormatEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfSourceLanguageEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSourceLanguageIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOutputFormatEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfOutputFormatIn
{
    return KFT_String;
}

- (void)setOutputFormatEqualFromString:(NSString*)aPropVal
{
    self.outputFormatEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorCaptionsCatalogItemBaseFilter"];
    [aParams addIfDefinedKey:@"sourceLanguageEqual" withString:self.sourceLanguageEqual];
    [aParams addIfDefinedKey:@"sourceLanguageIn" withString:self.sourceLanguageIn];
    [aParams addIfDefinedKey:@"outputFormatEqual" withInt:self.outputFormatEqual];
    [aParams addIfDefinedKey:@"outputFormatIn" withString:self.outputFormatIn];
}

- (void)dealloc
{
    [self->_sourceLanguageEqual release];
    [self->_sourceLanguageIn release];
    [self->_outputFormatIn release];
    [super dealloc];
}

@end

@implementation KalturaVendorAlignmentCatalogItemFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorAlignmentCatalogItemFilter"];
}

@end

@implementation KalturaVendorCaptionsCatalogItemFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorCaptionsCatalogItemFilter"];
}

@end

@implementation KalturaVendorTranslationCatalogItemBaseFilter
@synthesize targetLanguageEqual = _targetLanguageEqual;
@synthesize targetLanguageIn = _targetLanguageIn;

- (KalturaFieldType)getTypeOfTargetLanguageEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTargetLanguageIn
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorTranslationCatalogItemBaseFilter"];
    [aParams addIfDefinedKey:@"targetLanguageEqual" withString:self.targetLanguageEqual];
    [aParams addIfDefinedKey:@"targetLanguageIn" withString:self.targetLanguageIn];
}

- (void)dealloc
{
    [self->_targetLanguageEqual release];
    [self->_targetLanguageIn release];
    [super dealloc];
}

@end

@implementation KalturaVendorTranslationCatalogItemFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVendorTranslationCatalogItemFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaVendorCatalogItemService
- (KalturaVendorCatalogItem*)addWithVendorCatalogItem:(KalturaVendorCatalogItem*)aVendorCatalogItem
{
    [self.client.params addIfDefinedKey:@"vendorCatalogItem" withObject:aVendorCatalogItem];
    return [self.client queueObjectService:@"reach_vendorcatalogitem" withAction:@"add" withExpectedType:@"KalturaVendorCatalogItem"];
}

- (void)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client queueVoidService:@"reach_vendorcatalogitem" withAction:@"delete"];
}

- (KalturaVendorCatalogItem*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"reach_vendorcatalogitem" withAction:@"get" withExpectedType:@"KalturaVendorCatalogItem"];
}

- (KalturaVendorCatalogItemListResponse*)listWithFilter:(KalturaVendorCatalogItemFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"reach_vendorcatalogitem" withAction:@"list" withExpectedType:@"KalturaVendorCatalogItemListResponse"];
}

- (KalturaVendorCatalogItemListResponse*)listWithFilter:(KalturaVendorCatalogItemFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaVendorCatalogItemListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaVendorCatalogItem*)updateWithId:(int)aId withVendorCatalogItem:(KalturaVendorCatalogItem*)aVendorCatalogItem
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"vendorCatalogItem" withObject:aVendorCatalogItem];
    return [self.client queueObjectService:@"reach_vendorcatalogitem" withAction:@"update" withExpectedType:@"KalturaVendorCatalogItem"];
}

- (KalturaVendorCatalogItem*)updateStatusWithId:(int)aId withStatus:(int)aStatus
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"status" withInt:aStatus];
    return [self.client queueObjectService:@"reach_vendorcatalogitem" withAction:@"updateStatus" withExpectedType:@"KalturaVendorCatalogItem"];
}

@end

@implementation KalturaReachProfileService
- (KalturaReachProfile*)addWithReachProfile:(KalturaReachProfile*)aReachProfile
{
    [self.client.params addIfDefinedKey:@"reachProfile" withObject:aReachProfile];
    return [self.client queueObjectService:@"reach_reachprofile" withAction:@"add" withExpectedType:@"KalturaReachProfile"];
}

- (void)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client queueVoidService:@"reach_reachprofile" withAction:@"delete"];
}

- (KalturaReachProfile*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"reach_reachprofile" withAction:@"get" withExpectedType:@"KalturaReachProfile"];
}

- (KalturaReachProfileListResponse*)listWithFilter:(KalturaReachProfileFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"reach_reachprofile" withAction:@"list" withExpectedType:@"KalturaReachProfileListResponse"];
}

- (KalturaReachProfileListResponse*)listWithFilter:(KalturaReachProfileFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaReachProfileListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaReachProfile*)syncCreditWithReachProfileId:(int)aReachProfileId
{
    [self.client.params addIfDefinedKey:@"reachProfileId" withInt:aReachProfileId];
    return [self.client queueObjectService:@"reach_reachprofile" withAction:@"syncCredit" withExpectedType:@"KalturaReachProfile"];
}

- (KalturaReachProfile*)updateWithId:(int)aId withReachProfile:(KalturaReachProfile*)aReachProfile
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"reachProfile" withObject:aReachProfile];
    return [self.client queueObjectService:@"reach_reachprofile" withAction:@"update" withExpectedType:@"KalturaReachProfile"];
}

- (KalturaReachProfile*)updateStatusWithId:(int)aId withStatus:(int)aStatus
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"status" withInt:aStatus];
    return [self.client queueObjectService:@"reach_reachprofile" withAction:@"updateStatus" withExpectedType:@"KalturaReachProfile"];
}

@end

@implementation KalturaEntryVendorTaskService
- (KalturaEntryVendorTask*)abortWithId:(int)aId withAbortReason:(NSString*)aAbortReason
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"abortReason" withString:aAbortReason];
    return [self.client queueObjectService:@"reach_entryvendortask" withAction:@"abort" withExpectedType:@"KalturaEntryVendorTask"];
}

- (KalturaEntryVendorTask*)abortWithId:(int)aId
{
    return [self abortWithId:aId withAbortReason:nil];
}

- (KalturaEntryVendorTask*)addWithEntryVendorTask:(KalturaEntryVendorTask*)aEntryVendorTask
{
    [self.client.params addIfDefinedKey:@"entryVendorTask" withObject:aEntryVendorTask];
    return [self.client queueObjectService:@"reach_entryvendortask" withAction:@"add" withExpectedType:@"KalturaEntryVendorTask"];
}

- (KalturaEntryVendorTask*)approveWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"reach_entryvendortask" withAction:@"approve" withExpectedType:@"KalturaEntryVendorTask"];
}

- (NSString*)exportToCsvWithFilter:(KalturaEntryVendorTaskFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueStringService:@"reach_entryvendortask" withAction:@"exportToCsv"];
}

- (KalturaEntryVendorTask*)extendAccessKeyWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"reach_entryvendortask" withAction:@"extendAccessKey" withExpectedType:@"KalturaEntryVendorTask"];
}

- (KalturaEntryVendorTask*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"reach_entryvendortask" withAction:@"get" withExpectedType:@"KalturaEntryVendorTask"];
}

- (KalturaEntryVendorTaskListResponse*)getJobsWithFilter:(KalturaEntryVendorTaskFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"reach_entryvendortask" withAction:@"getJobs" withExpectedType:@"KalturaEntryVendorTaskListResponse"];
}

- (KalturaEntryVendorTaskListResponse*)getJobsWithFilter:(KalturaEntryVendorTaskFilter*)aFilter
{
    return [self getJobsWithFilter:aFilter withPager:nil];
}

- (KalturaEntryVendorTaskListResponse*)getJobs
{
    return [self getJobsWithFilter:nil];
}

- (KalturaEntryVendorTaskListResponse*)listWithFilter:(KalturaEntryVendorTaskFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"reach_entryvendortask" withAction:@"list" withExpectedType:@"KalturaEntryVendorTaskListResponse"];
}

- (KalturaEntryVendorTaskListResponse*)listWithFilter:(KalturaEntryVendorTaskFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaEntryVendorTaskListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaEntryVendorTask*)rejectWithId:(int)aId withRejectReason:(NSString*)aRejectReason
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"rejectReason" withString:aRejectReason];
    return [self.client queueObjectService:@"reach_entryvendortask" withAction:@"reject" withExpectedType:@"KalturaEntryVendorTask"];
}

- (KalturaEntryVendorTask*)rejectWithId:(int)aId
{
    return [self rejectWithId:aId withRejectReason:nil];
}

- (NSString*)serveCsvWithId:(NSString*)aId
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    return [self.client queueStringService:@"reach_entryvendortask" withAction:@"serveCsv"];
}

- (KalturaEntryVendorTask*)updateWithId:(int)aId withEntryVendorTask:(KalturaEntryVendorTask*)aEntryVendorTask
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"entryVendorTask" withObject:aEntryVendorTask];
    return [self.client queueObjectService:@"reach_entryvendortask" withAction:@"update" withExpectedType:@"KalturaEntryVendorTask"];
}

- (KalturaEntryVendorTask*)updateJobWithId:(int)aId withEntryVendorTask:(KalturaEntryVendorTask*)aEntryVendorTask
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"entryVendorTask" withObject:aEntryVendorTask];
    return [self.client queueObjectService:@"reach_entryvendortask" withAction:@"updateJob" withExpectedType:@"KalturaEntryVendorTask"];
}

@end

@implementation KalturaPartnerCatalogItemService
- (KalturaVendorCatalogItem*)addWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"reach_partnercatalogitem" withAction:@"add" withExpectedType:@"KalturaVendorCatalogItem"];
}

- (void)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client queueVoidService:@"reach_partnercatalogitem" withAction:@"delete"];
}

@end

@implementation KalturaReachClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaVendorCatalogItemService*)vendorCatalogItem
{
    if (self->_vendorCatalogItem == nil)
    	self->_vendorCatalogItem = [[KalturaVendorCatalogItemService alloc] initWithClient:self.client];
    return self->_vendorCatalogItem;
}

- (KalturaReachProfileService*)reachProfile
{
    if (self->_reachProfile == nil)
    	self->_reachProfile = [[KalturaReachProfileService alloc] initWithClient:self.client];
    return self->_reachProfile;
}

- (KalturaEntryVendorTaskService*)entryVendorTask
{
    if (self->_entryVendorTask == nil)
    	self->_entryVendorTask = [[KalturaEntryVendorTaskService alloc] initWithClient:self.client];
    return self->_entryVendorTask;
}

- (KalturaPartnerCatalogItemService*)partnerCatalogItem
{
    if (self->_partnerCatalogItem == nil)
    	self->_partnerCatalogItem = [[KalturaPartnerCatalogItemService alloc] initWithClient:self.client];
    return self->_partnerCatalogItem;
}

- (void)dealloc
{
    [self->_vendorCatalogItem release];
    [self->_reachProfile release];
    [self->_entryVendorTask release];
    [self->_partnerCatalogItem release];
	[super dealloc];
}

@end

