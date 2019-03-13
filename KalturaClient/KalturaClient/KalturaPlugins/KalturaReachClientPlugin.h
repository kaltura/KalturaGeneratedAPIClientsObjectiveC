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
#import "KalturaEventNotificationClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaEntryVendorTaskCreationMode : NSObject
+ (int)MANUAL;
+ (int)AUTOMATIC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryVendorTaskStatus : NSObject
+ (int)PENDING;
+ (int)READY;
+ (int)PROCESSING;
+ (int)PENDING_MODERATION;
+ (int)REJECTED;
+ (int)ERROR;
+ (int)ABORTED;
+ (int)PENDING_ENTRY_READY;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaReachProfileContentDeletionPolicy : NSObject
+ (int)DO_NOTHING;
+ (int)DELETE_ONCE_PROCESSED;
+ (int)DELETE_AFTER_WEEK;
+ (int)DELETE_AFTER_MONTH;
+ (int)DELETE_AFTER_THREE_MONTHS;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaReachProfileStatus : NSObject
+ (int)DISABLED;
+ (int)ACTIVE;
+ (int)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaReachProfileType : NSObject
+ (int)FREE_TRIAL;
+ (int)PAID;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCatalogItemOutputFormat : NSObject
+ (int)SRT;
+ (int)DFXP;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCatalogItemStatus : NSObject
+ (int)DEPRECATED;
+ (int)ACTIVE;
+ (int)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorServiceFeature : NSObject
+ (int)CAPTIONS;
+ (int)TRANSLATION;
+ (int)ALIGNMENT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorServiceTurnAroundTime : NSObject
+ (int)BEST_EFFORT;
+ (int)IMMEDIATE;
+ (int)THIRTY_MINUTES;
+ (int)TWO_HOURS;
+ (int)THREE_HOURS;
+ (int)SIX_HOURS;
+ (int)EIGHT_HOURS;
+ (int)TWELVE_HOURS;
+ (int)TWENTY_FOUR_HOURS;
+ (int)FORTY_EIGHT_HOURS;
+ (int)TEN_DAYS;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorServiceType : NSObject
+ (int)HUMAN;
+ (int)MACHINE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCatalogItemLanguage : NSObject
+ (NSString*)AR;
+ (NSString*)YUE;
+ (NSString*)ZH;
+ (NSString*)NL;
+ (NSString*)EN;
+ (NSString*)EN_US;
+ (NSString*)EN_GB;
+ (NSString*)FR;
+ (NSString*)DE;
+ (NSString*)HE;
+ (NSString*)HI;
+ (NSString*)IT;
+ (NSString*)JA;
+ (NSString*)KO;
+ (NSString*)CMN;
+ (NSString*)PT;
+ (NSString*)RU;
+ (NSString*)ES;
+ (NSString*)TH;
+ (NSString*)TR;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryVendorTaskOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)FINISH_TIME_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)PRICE_ASC;
+ (NSString*)QUEUE_TIME_ASC;
+ (NSString*)STATUS_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)FINISH_TIME_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)PRICE_DESC;
+ (NSString*)QUEUE_TIME_DESC;
+ (NSString*)STATUS_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaReachProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCaptionsCatalogItemOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCatalogItemOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCatalogItemPriceFunction : NSObject
+ (NSString*)PRICE_PER_MINUTE;
+ (NSString*)PRICE_PER_SECOND;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCreditRecurrenceFrequency : NSObject
+ (NSString*)DAILY;
+ (NSString*)MONTHLY;
+ (NSString*)WEEKLY;
+ (NSString*)YEARLY;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorTranslationCatalogItemOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaBaseVendorCredit : KalturaObjectBase
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDictionary : KalturaObjectBase
@property (nonatomic,copy) NSString* language;	// enum KalturaCatalogItemLanguage
@property (nonatomic,copy) NSString* data;
- (KalturaFieldType)getTypeOfLanguage;
- (KalturaFieldType)getTypeOfData;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorTaskData : KalturaObjectBase
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryVendorTask : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,assign,readonly) int partnerId;
@property (nonatomic,assign,readonly) int vendorPartnerId;
@property (nonatomic,assign,readonly) int createdAt;
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,assign,readonly) int queueTime;
@property (nonatomic,assign,readonly) int finishTime;
@property (nonatomic,copy) NSString* entryId;	// insertonly
@property (nonatomic,assign) int status;	// enum KalturaEntryVendorTaskStatus
// The profile id from which this task base config is taken from
@property (nonatomic,assign) int reachProfileId;	// insertonly
// The catalog item Id containing the task description
@property (nonatomic,assign) int catalogItemId;	// insertonly
// The charged price to execute this task
@property (nonatomic,assign,readonly) double price;
// The ID of the user who created this task
@property (nonatomic,copy,readonly) NSString* userId;
// The user ID that approved this task for execution (in case moderation is requested)
@property (nonatomic,copy,readonly) NSString* moderatingUser;
// Err description provided by provider in case job execution has failed
@property (nonatomic,copy) NSString* errDescription;
// Access key generated by Kaltura to allow vendors to ingest the end result to the destination
@property (nonatomic,copy,readonly) NSString* accessKey;
// Vendor generated by Kaltura representing the entry vendor task version correlated to the entry version
@property (nonatomic,copy,readonly) NSString* version;
// User generated notes that should be taken into account by the vendor while executing the task
@property (nonatomic,copy) NSString* notes;
@property (nonatomic,copy,readonly) NSString* dictionary;
// Task context
@property (nonatomic,copy) NSString* context;
// Task result accuracy percentage
@property (nonatomic,assign) int accuracy;
// Task main object generated by executing the task
@property (nonatomic,copy) NSString* outputObjectId;
// Json object containing extra task data required by the requester
@property (nonatomic,copy) NSString* partnerData;
// Task creation mode
@property (nonatomic,assign,readonly) int creationMode;	// enum KalturaEntryVendorTaskCreationMode
@property (nonatomic,retain) KalturaVendorTaskData* taskJobData;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfVendorPartnerId;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfQueueTime;
- (KalturaFieldType)getTypeOfFinishTime;
- (KalturaFieldType)getTypeOfEntryId;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfReachProfileId;
- (KalturaFieldType)getTypeOfCatalogItemId;
- (KalturaFieldType)getTypeOfPrice;
- (KalturaFieldType)getTypeOfUserId;
- (KalturaFieldType)getTypeOfModeratingUser;
- (KalturaFieldType)getTypeOfErrDescription;
- (KalturaFieldType)getTypeOfAccessKey;
- (KalturaFieldType)getTypeOfVersion;
- (KalturaFieldType)getTypeOfNotes;
- (KalturaFieldType)getTypeOfDictionary;
- (KalturaFieldType)getTypeOfContext;
- (KalturaFieldType)getTypeOfAccuracy;
- (KalturaFieldType)getTypeOfOutputObjectId;
- (KalturaFieldType)getTypeOfPartnerData;
- (KalturaFieldType)getTypeOfCreationMode;
- (KalturaFieldType)getTypeOfTaskJobData;
- (NSString*)getObjectTypeOfTaskJobData;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setVendorPartnerIdFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
- (void)setQueueTimeFromString:(NSString*)aPropVal;
- (void)setFinishTimeFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
- (void)setReachProfileIdFromString:(NSString*)aPropVal;
- (void)setCatalogItemIdFromString:(NSString*)aPropVal;
- (void)setPriceFromString:(NSString*)aPropVal;
- (void)setAccuracyFromString:(NSString*)aPropVal;
- (void)setCreationModeFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaReachProfile : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
// The name of the profile
@property (nonatomic,copy) NSString* name;
@property (nonatomic,assign,readonly) int partnerId;
@property (nonatomic,assign,readonly) int createdAt;
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,assign,readonly) int status;	// enum KalturaReachProfileStatus
@property (nonatomic,assign) int profileType;	// enum KalturaReachProfileType
@property (nonatomic,assign) int defaultOutputFormat;	// enum KalturaVendorCatalogItemOutputFormat
@property (nonatomic,assign) int enableMachineModeration;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int enableHumanModeration;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int autoDisplayMachineCaptionsOnPlayer;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int autoDisplayHumanCaptionsOnPlayer;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int enableMetadataExtraction;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int enableSpeakerChangeIndication;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int enableAudioTags;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int enableProfanityRemoval;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int maxCharactersPerCaptionLine;
@property (nonatomic,assign) int contentDeletionPolicy;	// enum KalturaReachProfileContentDeletionPolicy
@property (nonatomic,retain) NSMutableArray* rules;	// of KalturaRule elements
@property (nonatomic,retain) KalturaBaseVendorCredit* credit;
@property (nonatomic,assign,readonly) double usedCredit;
@property (nonatomic,retain) NSMutableArray* dictionaries;	// of KalturaDictionary elements
// Comma separated flavorParamsIds that the vendor should look for it matching asset when trying to download the asset
@property (nonatomic,copy) NSString* flavorParamsIds;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfProfileType;
- (KalturaFieldType)getTypeOfDefaultOutputFormat;
- (KalturaFieldType)getTypeOfEnableMachineModeration;
- (KalturaFieldType)getTypeOfEnableHumanModeration;
- (KalturaFieldType)getTypeOfAutoDisplayMachineCaptionsOnPlayer;
- (KalturaFieldType)getTypeOfAutoDisplayHumanCaptionsOnPlayer;
- (KalturaFieldType)getTypeOfEnableMetadataExtraction;
- (KalturaFieldType)getTypeOfEnableSpeakerChangeIndication;
- (KalturaFieldType)getTypeOfEnableAudioTags;
- (KalturaFieldType)getTypeOfEnableProfanityRemoval;
- (KalturaFieldType)getTypeOfMaxCharactersPerCaptionLine;
- (KalturaFieldType)getTypeOfContentDeletionPolicy;
- (KalturaFieldType)getTypeOfRules;
- (NSString*)getObjectTypeOfRules;
- (KalturaFieldType)getTypeOfCredit;
- (NSString*)getObjectTypeOfCredit;
- (KalturaFieldType)getTypeOfUsedCredit;
- (KalturaFieldType)getTypeOfDictionaries;
- (NSString*)getObjectTypeOfDictionaries;
- (KalturaFieldType)getTypeOfFlavorParamsIds;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
- (void)setProfileTypeFromString:(NSString*)aPropVal;
- (void)setDefaultOutputFormatFromString:(NSString*)aPropVal;
- (void)setEnableMachineModerationFromString:(NSString*)aPropVal;
- (void)setEnableHumanModerationFromString:(NSString*)aPropVal;
- (void)setAutoDisplayMachineCaptionsOnPlayerFromString:(NSString*)aPropVal;
- (void)setAutoDisplayHumanCaptionsOnPlayerFromString:(NSString*)aPropVal;
- (void)setEnableMetadataExtractionFromString:(NSString*)aPropVal;
- (void)setEnableSpeakerChangeIndicationFromString:(NSString*)aPropVal;
- (void)setEnableAudioTagsFromString:(NSString*)aPropVal;
- (void)setEnableProfanityRemovalFromString:(NSString*)aPropVal;
- (void)setMaxCharactersPerCaptionLineFromString:(NSString*)aPropVal;
- (void)setContentDeletionPolicyFromString:(NSString*)aPropVal;
- (void)setUsedCreditFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCatalogItemPricing : KalturaObjectBase
@property (nonatomic,assign) double pricePerUnit;
@property (nonatomic,copy) NSString* priceFunction;	// enum KalturaVendorCatalogItemPriceFunction
- (KalturaFieldType)getTypeOfPricePerUnit;
- (KalturaFieldType)getTypeOfPriceFunction;
- (void)setPricePerUnitFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCatalogItem : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,assign) int vendorPartnerId;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* systemName;
@property (nonatomic,assign,readonly) int createdAt;
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,assign,readonly) int status;	// enum KalturaVendorCatalogItemStatus
@property (nonatomic,assign) int serviceType;	// enum KalturaVendorServiceType
@property (nonatomic,assign,readonly) int serviceFeature;	// enum KalturaVendorServiceFeature
@property (nonatomic,assign) int turnAroundTime;	// enum KalturaVendorServiceTurnAroundTime
@property (nonatomic,retain) KalturaVendorCatalogItemPricing* pricing;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfVendorPartnerId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfSystemName;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfServiceType;
- (KalturaFieldType)getTypeOfServiceFeature;
- (KalturaFieldType)getTypeOfTurnAroundTime;
- (KalturaFieldType)getTypeOfPricing;
- (NSString*)getObjectTypeOfPricing;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setVendorPartnerIdFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
- (void)setServiceTypeFromString:(NSString*)aPropVal;
- (void)setServiceFeatureFromString:(NSString*)aPropVal;
- (void)setTurnAroundTimeFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAddEntryVendorTaskAction : KalturaRuleAction
// Catalog Item Id
@property (nonatomic,copy) NSString* catalogItemIds;
- (KalturaFieldType)getTypeOfCatalogItemIds;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAlignmentVendorTaskData : KalturaVendorTaskData
// The id of the text transcript object the vendor should use while runing the alignment task
@property (nonatomic,copy) NSString* textTranscriptAssetId;
// Optional - The id of the json transcript object the vendor should update once alignment task processing is done
@property (nonatomic,copy) NSString* jsonTranscriptAssetId;	// insertonly
// Optional - The id of the caption asset object the vendor should update once alignment task processing is done
@property (nonatomic,copy) NSString* captionAssetId;	// insertonly
- (KalturaFieldType)getTypeOfTextTranscriptAssetId;
- (KalturaFieldType)getTypeOfJsonTranscriptAssetId;
- (KalturaFieldType)getTypeOfCaptionAssetId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCatalogItemAdvancedFilter : KalturaSearchItem
@property (nonatomic,assign) int serviceTypeEqual;	// enum KalturaVendorServiceType
@property (nonatomic,copy) NSString* serviceTypeIn;
@property (nonatomic,assign) int serviceFeatureEqual;	// enum KalturaVendorServiceFeature
@property (nonatomic,copy) NSString* serviceFeatureIn;
@property (nonatomic,assign) int turnAroundTimeEqual;	// enum KalturaVendorServiceTurnAroundTime
@property (nonatomic,copy) NSString* turnAroundTimeIn;
@property (nonatomic,copy) NSString* sourceLanguageEqual;	// enum KalturaCatalogItemLanguage
@property (nonatomic,copy) NSString* targetLanguageEqual;	// enum KalturaCatalogItemLanguage
- (KalturaFieldType)getTypeOfServiceTypeEqual;
- (KalturaFieldType)getTypeOfServiceTypeIn;
- (KalturaFieldType)getTypeOfServiceFeatureEqual;
- (KalturaFieldType)getTypeOfServiceFeatureIn;
- (KalturaFieldType)getTypeOfTurnAroundTimeEqual;
- (KalturaFieldType)getTypeOfTurnAroundTimeIn;
- (KalturaFieldType)getTypeOfSourceLanguageEqual;
- (KalturaFieldType)getTypeOfTargetLanguageEqual;
- (void)setServiceTypeEqualFromString:(NSString*)aPropVal;
- (void)setServiceFeatureEqualFromString:(NSString*)aPropVal;
- (void)setTurnAroundTimeEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCategoryEntryCondition : KalturaCondition
// Category id to check condition for
@property (nonatomic,assign) int categoryId;
// Minimum category user level permission to validate
@property (nonatomic,assign) int categoryUserPermission;	// enum KalturaCategoryUserPermissionLevel
// Comparing operator
@property (nonatomic,copy) NSString* comparison;	// enum KalturaSearchConditionComparison
- (KalturaFieldType)getTypeOfCategoryId;
- (KalturaFieldType)getTypeOfCategoryUserPermission;
- (KalturaFieldType)getTypeOfComparison;
- (void)setCategoryIdFromString:(NSString*)aPropVal;
- (void)setCategoryUserPermissionFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryVendorTaskBaseFilter : KalturaRelatedFilter
@property (nonatomic,assign) int idEqual;
@property (nonatomic,copy) NSString* idIn;
@property (nonatomic,assign) int vendorPartnerIdEqual;
@property (nonatomic,copy) NSString* vendorPartnerIdIn;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
@property (nonatomic,assign) int queueTimeGreaterThanOrEqual;
@property (nonatomic,assign) int queueTimeLessThanOrEqual;
@property (nonatomic,assign) int finishTimeGreaterThanOrEqual;
@property (nonatomic,assign) int finishTimeLessThanOrEqual;
@property (nonatomic,copy) NSString* entryIdEqual;
@property (nonatomic,assign) int statusEqual;	// enum KalturaEntryVendorTaskStatus
@property (nonatomic,copy) NSString* statusIn;
@property (nonatomic,assign) int reachProfileIdEqual;
@property (nonatomic,copy) NSString* reachProfileIdIn;
@property (nonatomic,assign) int catalogItemIdEqual;
@property (nonatomic,copy) NSString* catalogItemIdIn;
@property (nonatomic,copy) NSString* userIdEqual;
@property (nonatomic,copy) NSString* contextEqual;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfIdIn;
- (KalturaFieldType)getTypeOfVendorPartnerIdEqual;
- (KalturaFieldType)getTypeOfVendorPartnerIdIn;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfQueueTimeGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfQueueTimeLessThanOrEqual;
- (KalturaFieldType)getTypeOfFinishTimeGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfFinishTimeLessThanOrEqual;
- (KalturaFieldType)getTypeOfEntryIdEqual;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfReachProfileIdEqual;
- (KalturaFieldType)getTypeOfReachProfileIdIn;
- (KalturaFieldType)getTypeOfCatalogItemIdEqual;
- (KalturaFieldType)getTypeOfCatalogItemIdIn;
- (KalturaFieldType)getTypeOfUserIdEqual;
- (KalturaFieldType)getTypeOfContextEqual;
- (void)setIdEqualFromString:(NSString*)aPropVal;
- (void)setVendorPartnerIdEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setQueueTimeGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setQueueTimeLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setFinishTimeGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setFinishTimeLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
- (void)setReachProfileIdEqualFromString:(NSString*)aPropVal;
- (void)setCatalogItemIdEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryVendorTaskFilter : KalturaEntryVendorTaskBaseFilter
@property (nonatomic,copy) NSString* freeText;
- (KalturaFieldType)getTypeOfFreeText;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryVendorTaskCsvJobData : KalturaJobData
// The filter should return the list of users that need to be specified in the csv.
@property (nonatomic,retain) KalturaEntryVendorTaskFilter* filter;
// The users name
@property (nonatomic,copy) NSString* userName;
// The users email
@property (nonatomic,copy) NSString* userMail;
// The file location
@property (nonatomic,copy) NSString* outputPath;
- (KalturaFieldType)getTypeOfFilter;
- (NSString*)getObjectTypeOfFilter;
- (KalturaFieldType)getTypeOfUserName;
- (KalturaFieldType)getTypeOfUserMail;
- (KalturaFieldType)getTypeOfOutputPath;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryVendorTaskListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaEntryVendorTask elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaReachProfileListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaReachProfile elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUnlimitedVendorCredit : KalturaBaseVendorCredit
@property (nonatomic,assign,readonly) int credit;
@property (nonatomic,assign) int fromDate;
@property (nonatomic,assign) int toDate;
- (KalturaFieldType)getTypeOfCredit;
- (KalturaFieldType)getTypeOfFromDate;
- (KalturaFieldType)getTypeOfToDate;
- (void)setCreditFromString:(NSString*)aPropVal;
- (void)setFromDateFromString:(NSString*)aPropVal;
- (void)setToDateFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorAlignmentCatalogItem : KalturaVendorCatalogItem
@property (nonatomic,copy) NSString* sourceLanguage;	// enum KalturaCatalogItemLanguage
@property (nonatomic,assign) int outputFormat;	// enum KalturaVendorCatalogItemOutputFormat
- (KalturaFieldType)getTypeOfSourceLanguage;
- (KalturaFieldType)getTypeOfOutputFormat;
- (void)setOutputFormatFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCaptionsCatalogItem : KalturaVendorCatalogItem
@property (nonatomic,copy) NSString* sourceLanguage;	// enum KalturaCatalogItemLanguage
@property (nonatomic,assign) int outputFormat;	// enum KalturaVendorCatalogItemOutputFormat
@property (nonatomic,assign) int enableSpeakerId;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int fixedPriceAddons;
- (KalturaFieldType)getTypeOfSourceLanguage;
- (KalturaFieldType)getTypeOfOutputFormat;
- (KalturaFieldType)getTypeOfEnableSpeakerId;
- (KalturaFieldType)getTypeOfFixedPriceAddons;
- (void)setOutputFormatFromString:(NSString*)aPropVal;
- (void)setEnableSpeakerIdFromString:(NSString*)aPropVal;
- (void)setFixedPriceAddonsFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCatalogItemListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaVendorCatalogItem elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCredit : KalturaBaseVendorCredit
@property (nonatomic,assign) int credit;
@property (nonatomic,assign) int fromDate;
@property (nonatomic,assign) int overageCredit;
@property (nonatomic,assign) int addOn;
- (KalturaFieldType)getTypeOfCredit;
- (KalturaFieldType)getTypeOfFromDate;
- (KalturaFieldType)getTypeOfOverageCredit;
- (KalturaFieldType)getTypeOfAddOn;
- (void)setCreditFromString:(NSString*)aPropVal;
- (void)setFromDateFromString:(NSString*)aPropVal;
- (void)setOverageCreditFromString:(NSString*)aPropVal;
- (void)setAddOnFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaReachProfileBaseFilter : KalturaRelatedFilter
@property (nonatomic,assign) int idEqual;
@property (nonatomic,copy) NSString* idIn;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
@property (nonatomic,assign) int statusEqual;	// enum KalturaReachProfileStatus
@property (nonatomic,copy) NSString* statusIn;
@property (nonatomic,assign) int profileTypeEqual;	// enum KalturaReachProfileType
@property (nonatomic,copy) NSString* profileTypeIn;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfIdIn;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfProfileTypeEqual;
- (KalturaFieldType)getTypeOfProfileTypeIn;
- (void)setIdEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
- (void)setProfileTypeEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaReachReportInputFilter : KalturaReportInputFilter
@property (nonatomic,assign) int serviceType;	// enum KalturaVendorServiceType
@property (nonatomic,assign) int serviceFeature;	// enum KalturaVendorServiceFeature
@property (nonatomic,assign) int turnAroundTime;	// enum KalturaVendorServiceTurnAroundTime
- (KalturaFieldType)getTypeOfServiceType;
- (KalturaFieldType)getTypeOfServiceFeature;
- (KalturaFieldType)getTypeOfTurnAroundTime;
- (void)setServiceTypeFromString:(NSString*)aPropVal;
- (void)setServiceFeatureFromString:(NSString*)aPropVal;
- (void)setTurnAroundTimeFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTimeRangeVendorCredit : KalturaVendorCredit
@property (nonatomic,assign) int toDate;
- (KalturaFieldType)getTypeOfToDate;
- (void)setToDateFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCatalogItemBaseFilter : KalturaRelatedFilter
@property (nonatomic,assign) int idEqual;
@property (nonatomic,copy) NSString* idIn;
@property (nonatomic,copy) NSString* idNotIn;
@property (nonatomic,assign) int vendorPartnerIdEqual;
@property (nonatomic,copy) NSString* vendorPartnerIdIn;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
@property (nonatomic,assign) int statusEqual;	// enum KalturaVendorCatalogItemStatus
@property (nonatomic,copy) NSString* statusIn;
@property (nonatomic,assign) int serviceTypeEqual;	// enum KalturaVendorServiceType
@property (nonatomic,copy) NSString* serviceTypeIn;
@property (nonatomic,assign) int serviceFeatureEqual;	// enum KalturaVendorServiceFeature
@property (nonatomic,copy) NSString* serviceFeatureIn;
@property (nonatomic,assign) int turnAroundTimeEqual;	// enum KalturaVendorServiceTurnAroundTime
@property (nonatomic,copy) NSString* turnAroundTimeIn;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfIdIn;
- (KalturaFieldType)getTypeOfIdNotIn;
- (KalturaFieldType)getTypeOfVendorPartnerIdEqual;
- (KalturaFieldType)getTypeOfVendorPartnerIdIn;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfServiceTypeEqual;
- (KalturaFieldType)getTypeOfServiceTypeIn;
- (KalturaFieldType)getTypeOfServiceFeatureEqual;
- (KalturaFieldType)getTypeOfServiceFeatureIn;
- (KalturaFieldType)getTypeOfTurnAroundTimeEqual;
- (KalturaFieldType)getTypeOfTurnAroundTimeIn;
- (void)setIdEqualFromString:(NSString*)aPropVal;
- (void)setVendorPartnerIdEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
- (void)setServiceTypeEqualFromString:(NSString*)aPropVal;
- (void)setServiceFeatureEqualFromString:(NSString*)aPropVal;
- (void)setTurnAroundTimeEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorTranslationCatalogItem : KalturaVendorCaptionsCatalogItem
@property (nonatomic,copy) NSString* targetLanguage;	// enum KalturaCatalogItemLanguage
- (KalturaFieldType)getTypeOfTargetLanguage;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaReachProfileFilter : KalturaReachProfileBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaReoccurringVendorCredit : KalturaTimeRangeVendorCredit
@property (nonatomic,copy) NSString* frequency;	// enum KalturaVendorCreditRecurrenceFrequency
- (KalturaFieldType)getTypeOfFrequency;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCatalogItemFilter : KalturaVendorCatalogItemBaseFilter
@property (nonatomic,assign) int partnerIdEqual;
- (KalturaFieldType)getTypeOfPartnerIdEqual;
- (void)setPartnerIdEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCaptionsCatalogItemBaseFilter : KalturaVendorCatalogItemFilter
@property (nonatomic,copy) NSString* sourceLanguageEqual;	// enum KalturaCatalogItemLanguage
@property (nonatomic,copy) NSString* sourceLanguageIn;
@property (nonatomic,assign) int outputFormatEqual;	// enum KalturaVendorCatalogItemOutputFormat
@property (nonatomic,copy) NSString* outputFormatIn;
- (KalturaFieldType)getTypeOfSourceLanguageEqual;
- (KalturaFieldType)getTypeOfSourceLanguageIn;
- (KalturaFieldType)getTypeOfOutputFormatEqual;
- (KalturaFieldType)getTypeOfOutputFormatIn;
- (void)setOutputFormatEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorAlignmentCatalogItemFilter : KalturaVendorCaptionsCatalogItemBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorCaptionsCatalogItemFilter : KalturaVendorCaptionsCatalogItemBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorTranslationCatalogItemBaseFilter : KalturaVendorCaptionsCatalogItemFilter
@property (nonatomic,copy) NSString* targetLanguageEqual;	// enum KalturaCatalogItemLanguage
@property (nonatomic,copy) NSString* targetLanguageIn;
- (KalturaFieldType)getTypeOfTargetLanguageEqual;
- (KalturaFieldType)getTypeOfTargetLanguageIn;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaVendorTranslationCatalogItemFilter : KalturaVendorTranslationCatalogItemBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Vendor Catalog Item Service
@interface KalturaVendorCatalogItemService : KalturaServiceBase
// Allows you to add an service catalog item
- (KalturaVendorCatalogItem*)addWithVendorCatalogItem:(KalturaVendorCatalogItem*)aVendorCatalogItem;
// Delete vedor catalog item object
- (void)deleteWithId:(int)aId;
// Retrieve specific catalog item by id
- (KalturaVendorCatalogItem*)getWithId:(int)aId;
// List KalturaVendorCatalogItem objects
- (KalturaVendorCatalogItemListResponse*)listWithFilter:(KalturaVendorCatalogItemFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaVendorCatalogItemListResponse*)listWithFilter:(KalturaVendorCatalogItemFilter*)aFilter;
- (KalturaVendorCatalogItemListResponse*)list;
// Update an existing vedor catalog item object
- (KalturaVendorCatalogItem*)updateWithId:(int)aId withVendorCatalogItem:(KalturaVendorCatalogItem*)aVendorCatalogItem;
// Update vendor catalog item status by id
- (KalturaVendorCatalogItem*)updateStatusWithId:(int)aId withStatus:(int)aStatus;
@end

// @package Kaltura
// @subpackage Client
// Reach Profile Service
@interface KalturaReachProfileService : KalturaServiceBase
// Allows you to add a partner specific reach profile
- (KalturaReachProfile*)addWithReachProfile:(KalturaReachProfile*)aReachProfile;
// Delete vednor profile by id
- (void)deleteWithId:(int)aId;
// Retrieve specific reach profile by id
- (KalturaReachProfile*)getWithId:(int)aId;
// List KalturaReachProfile objects
- (KalturaReachProfileListResponse*)listWithFilter:(KalturaReachProfileFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaReachProfileListResponse*)listWithFilter:(KalturaReachProfileFilter*)aFilter;
- (KalturaReachProfileListResponse*)list;
// sync vednor profile credit
- (KalturaReachProfile*)syncCreditWithReachProfileId:(int)aReachProfileId;
// Update an existing reach profile object
- (KalturaReachProfile*)updateWithId:(int)aId withReachProfile:(KalturaReachProfile*)aReachProfile;
// Update reach profile status by id
- (KalturaReachProfile*)updateStatusWithId:(int)aId withStatus:(int)aStatus;
@end

// @package Kaltura
// @subpackage Client
// Entry Vendor Task Service
@interface KalturaEntryVendorTaskService : KalturaServiceBase
// Cancel entry task. will only occur for task in PENDING or PENDING_MODERATION status
- (KalturaEntryVendorTask*)abortWithId:(int)aId withAbortReason:(NSString*)aAbortReason;
- (KalturaEntryVendorTask*)abortWithId:(int)aId;
// Allows you to add a entry vendor task
- (KalturaEntryVendorTask*)addWithEntryVendorTask:(KalturaEntryVendorTask*)aEntryVendorTask;
// Approve entry vendor task for execution.
- (KalturaEntryVendorTask*)approveWithId:(int)aId;
// add batch job that sends an email with a link to download an updated CSV that contains list of users
- (NSString*)exportToCsvWithFilter:(KalturaEntryVendorTaskFilter*)aFilter;
// Extend access key in case the existing one has expired.
- (KalturaEntryVendorTask*)extendAccessKeyWithId:(int)aId;
// Retrieve specific entry vendor task by id
- (KalturaEntryVendorTask*)getWithId:(int)aId;
// get KalturaEntryVendorTask objects for specific vendor partner
- (KalturaEntryVendorTaskListResponse*)getJobsWithFilter:(KalturaEntryVendorTaskFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaEntryVendorTaskListResponse*)getJobsWithFilter:(KalturaEntryVendorTaskFilter*)aFilter;
- (KalturaEntryVendorTaskListResponse*)getJobs;
// List KalturaEntryVendorTask objects
- (KalturaEntryVendorTaskListResponse*)listWithFilter:(KalturaEntryVendorTaskFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaEntryVendorTaskListResponse*)listWithFilter:(KalturaEntryVendorTaskFilter*)aFilter;
- (KalturaEntryVendorTaskListResponse*)list;
// Reject entry vendor task for execution.
- (KalturaEntryVendorTask*)rejectWithId:(int)aId withRejectReason:(NSString*)aRejectReason;
- (KalturaEntryVendorTask*)rejectWithId:(int)aId;
// Will serve a requested csv
- (NSString*)serveCsvWithId:(NSString*)aId;
// Update entry vendor task. Only the properties that were set will be updated.
- (KalturaEntryVendorTask*)updateWithId:(int)aId withEntryVendorTask:(KalturaEntryVendorTask*)aEntryVendorTask;
// Update entry vendor task. Only the properties that were set will be updated.
- (KalturaEntryVendorTask*)updateJobWithId:(int)aId withEntryVendorTask:(KalturaEntryVendorTask*)aEntryVendorTask;
@end

// @package Kaltura
// @subpackage Client
// Partner Catalog Item Service
@interface KalturaPartnerCatalogItemService : KalturaServiceBase
// Assign existing catalogItem to specific account
- (KalturaVendorCatalogItem*)addWithId:(int)aId;
// Remove existing catalogItem from specific account
- (void)deleteWithId:(int)aId;
@end

@interface KalturaReachClientPlugin : KalturaClientPlugin
{
	KalturaVendorCatalogItemService* _vendorCatalogItem;
	KalturaReachProfileService* _reachProfile;
	KalturaEntryVendorTaskService* _entryVendorTask;
	KalturaPartnerCatalogItemService* _partnerCatalogItem;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaVendorCatalogItemService* vendorCatalogItem;
@property (nonatomic, readonly) KalturaReachProfileService* reachProfile;
@property (nonatomic, readonly) KalturaEntryVendorTaskService* entryVendorTask;
@property (nonatomic, readonly) KalturaPartnerCatalogItemService* partnerCatalogItem;
@end

