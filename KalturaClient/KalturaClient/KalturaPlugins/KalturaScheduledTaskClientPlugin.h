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
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaDeleteFlavorsLogicType : NSObject
+ (int)KEEP_LIST_DELETE_OTHERS;
+ (int)DELETE_LIST;
+ (int)DELETE_KEEP_SMALLEST;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDryRunFileType : NSObject
+ (int)LIST_RESPONSE;
+ (int)CSV;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduledTaskAddOrRemoveType : NSObject
+ (int)ADD;
+ (int)REMOVE;
+ (int)MOVE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduledTaskProfileStatus : NSObject
+ (int)DISABLED;
+ (int)ACTIVE;
+ (int)DELETED;
+ (int)SUSPENDED;
+ (int)DRY_RUN_ONLY;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaObjectFilterEngineType : NSObject
+ (NSString*)ENTRY;
+ (NSString*)ENTRY_VENDOR_TASK;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaObjectTaskType : NSObject
+ (NSString*)DISTRIBUTE;
+ (NSString*)DISPATCH_EVENT_NOTIFICATION;
+ (NSString*)EXECUTE_METADATA_XSLT;
+ (NSString*)DELETE_ENTRY;
+ (NSString*)MODIFY_CATEGORIES;
+ (NSString*)DELETE_ENTRY_FLAVORS;
+ (NSString*)CONVERT_ENTRY_FLAVORS;
+ (NSString*)DELETE_LOCAL_CONTENT;
+ (NSString*)STORAGE_EXPORT;
+ (NSString*)MODIFY_ENTRY;
+ (NSString*)MAIL_NOTIFICATION;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduledTaskProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)LAST_EXECUTION_STARTED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)LAST_EXECUTION_STARTED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaObjectTask : KalturaObjectBase
@property (nonatomic,copy,readonly) NSString* type;	// enum KalturaObjectTaskType
@property (nonatomic,assign) KALTURA_BOOL stopProcessingOnError;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfStopProcessingOnError;
- (void)setStopProcessingOnErrorFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduledTaskProfile : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,assign,readonly) int partnerId;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* systemName;
@property (nonatomic,copy) NSString* description;
@property (nonatomic,assign) int status;	// enum KalturaScheduledTaskProfileStatus
// The type of engine to use to list objects using the given "objectFilter"
@property (nonatomic,copy) NSString* objectFilterEngineType;	// enum KalturaObjectFilterEngineType
// A filter object (inherits KalturaFilter) that is used to list objects for scheduled tasks
@property (nonatomic,retain) KalturaFilter* objectFilter;
// A list of tasks to execute on the founded objects
@property (nonatomic,retain) NSMutableArray* objectTasks;	// of KalturaObjectTask elements
@property (nonatomic,assign,readonly) int createdAt;
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,assign) int lastExecutionStartedAt;
// The maximum number of result count allowed to be processed by this profile per execution
@property (nonatomic,assign) int maxTotalCountAllowed;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfSystemName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfObjectFilterEngineType;
- (KalturaFieldType)getTypeOfObjectFilter;
- (NSString*)getObjectTypeOfObjectFilter;
- (KalturaFieldType)getTypeOfObjectTasks;
- (NSString*)getObjectTypeOfObjectTasks;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfLastExecutionStartedAt;
- (KalturaFieldType)getTypeOfMaxTotalCountAllowed;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
- (void)setLastExecutionStartedAtFromString:(NSString*)aPropVal;
- (void)setMaxTotalCountAllowedFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaConvertEntryFlavorsObjectTask : KalturaObjectTask
// Comma separated list of flavor param ids to convert
@property (nonatomic,copy) NSString* flavorParamsIds;
// Should reconvert when flavor already exists?
@property (nonatomic,assign) KALTURA_BOOL reconvert;
- (KalturaFieldType)getTypeOfFlavorParamsIds;
- (KalturaFieldType)getTypeOfReconvert;
- (void)setReconvertFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDeleteEntryFlavorsObjectTask : KalturaObjectTask
// The logic to use to choose the flavors for deletion
@property (nonatomic,assign) int deleteType;	// enum KalturaDeleteFlavorsLogicType
// Comma separated list of flavor param ids to delete or keep
@property (nonatomic,copy) NSString* flavorParamsIds;
- (KalturaFieldType)getTypeOfDeleteType;
- (KalturaFieldType)getTypeOfFlavorParamsIds;
- (void)setDeleteTypeFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDeleteEntryObjectTask : KalturaObjectTask
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDeleteLocalContentObjectTask : KalturaObjectTask
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMailNotificationObjectTask : KalturaObjectTask
// The mail to send the notification to
@property (nonatomic,copy) NSString* mailTo;
// The sender in the mail
@property (nonatomic,copy) NSString* sender;
// The subject of the entry
@property (nonatomic,copy) NSString* subject;
// The message to send in the notification mail
@property (nonatomic,copy) NSString* message;
// The footer of the message to send in the notification mail
@property (nonatomic,copy) NSString* footer;
// The basic link for the KMC site
@property (nonatomic,copy) NSString* link;
// Send the mail to each user
@property (nonatomic,assign) KALTURA_BOOL sendToUsers;
- (KalturaFieldType)getTypeOfMailTo;
- (KalturaFieldType)getTypeOfSender;
- (KalturaFieldType)getTypeOfSubject;
- (KalturaFieldType)getTypeOfMessage;
- (KalturaFieldType)getTypeOfFooter;
- (KalturaFieldType)getTypeOfLink;
- (KalturaFieldType)getTypeOfSendToUsers;
- (void)setSendToUsersFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaModifyCategoriesObjectTask : KalturaObjectTask
// Should the object task add or remove categories?
@property (nonatomic,assign) int addRemoveType;	// enum KalturaScheduledTaskAddOrRemoveType
// The list of category ids to add or remove
@property (nonatomic,retain) NSMutableArray* categoryIds;	// of KalturaIntegerValue elements
- (KalturaFieldType)getTypeOfAddRemoveType;
- (KalturaFieldType)getTypeOfCategoryIds;
- (NSString*)getObjectTypeOfCategoryIds;
- (void)setAddRemoveTypeFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaModifyEntryObjectTask : KalturaObjectTask
// The input metadata profile id
@property (nonatomic,assign) int inputMetadataProfileId;
// array of {input metadata xpath location,entry field} objects
@property (nonatomic,retain) NSMutableArray* inputMetadata;	// of KalturaKeyValue elements
// The output metadata profile id
@property (nonatomic,assign) int outputMetadataProfileId;
// array of {output metadata xpath location,entry field} objects
@property (nonatomic,retain) NSMutableArray* outputMetadata;	// of KalturaKeyValue elements
// The input user id to set on the entry
@property (nonatomic,copy) NSString* inputUserId;
// The input entitled users edit to set on the entry
@property (nonatomic,copy) NSString* inputEntitledUsersEdit;
// The input entitled users publish to set on the entry
@property (nonatomic,copy) NSString* inputEntitledUsersPublish;
- (KalturaFieldType)getTypeOfInputMetadataProfileId;
- (KalturaFieldType)getTypeOfInputMetadata;
- (NSString*)getObjectTypeOfInputMetadata;
- (KalturaFieldType)getTypeOfOutputMetadataProfileId;
- (KalturaFieldType)getTypeOfOutputMetadata;
- (NSString*)getObjectTypeOfOutputMetadata;
- (KalturaFieldType)getTypeOfInputUserId;
- (KalturaFieldType)getTypeOfInputEntitledUsersEdit;
- (KalturaFieldType)getTypeOfInputEntitledUsersPublish;
- (void)setInputMetadataProfileIdFromString:(NSString*)aPropVal;
- (void)setOutputMetadataProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduledTaskJobData : KalturaJobData
@property (nonatomic,assign) int maxResults;
@property (nonatomic,assign) int totalCount;
@property (nonatomic,assign) int fileFormat;	// enum KalturaDryRunFileType
@property (nonatomic,copy) NSString* resultsFilePath;
@property (nonatomic,assign) int referenceTime;
- (KalturaFieldType)getTypeOfMaxResults;
- (KalturaFieldType)getTypeOfTotalCount;
- (KalturaFieldType)getTypeOfFileFormat;
- (KalturaFieldType)getTypeOfResultsFilePath;
- (KalturaFieldType)getTypeOfReferenceTime;
- (void)setMaxResultsFromString:(NSString*)aPropVal;
- (void)setTotalCountFromString:(NSString*)aPropVal;
- (void)setFileFormatFromString:(NSString*)aPropVal;
- (void)setReferenceTimeFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduledTaskProfileBaseFilter : KalturaFilter
@property (nonatomic,assign) int idEqual;
@property (nonatomic,copy) NSString* idIn;
@property (nonatomic,assign) int partnerIdEqual;
@property (nonatomic,copy) NSString* partnerIdIn;
@property (nonatomic,copy) NSString* systemNameEqual;
@property (nonatomic,copy) NSString* systemNameIn;
@property (nonatomic,assign) int statusEqual;	// enum KalturaScheduledTaskProfileStatus
@property (nonatomic,copy) NSString* statusIn;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
@property (nonatomic,assign) int lastExecutionStartedAtGreaterThanOrEqual;
@property (nonatomic,assign) int lastExecutionStartedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfIdIn;
- (KalturaFieldType)getTypeOfPartnerIdEqual;
- (KalturaFieldType)getTypeOfPartnerIdIn;
- (KalturaFieldType)getTypeOfSystemNameEqual;
- (KalturaFieldType)getTypeOfSystemNameIn;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfLastExecutionStartedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfLastExecutionStartedAtLessThanOrEqual;
- (void)setIdEqualFromString:(NSString*)aPropVal;
- (void)setPartnerIdEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setLastExecutionStartedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setLastExecutionStartedAtLessThanOrEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduledTaskProfileListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaScheduledTaskProfile elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaStorageExportObjectTask : KalturaObjectTask
// Storage profile id
@property (nonatomic,copy) NSString* storageId;
- (KalturaFieldType)getTypeOfStorageId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduledTaskProfileFilter : KalturaScheduledTaskProfileBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Schedule task service lets you create and manage scheduled task profiles
@interface KalturaScheduledTaskProfileService : KalturaServiceBase
// Add a new scheduled task profile
- (KalturaScheduledTaskProfile*)addWithScheduledTaskProfile:(KalturaScheduledTaskProfile*)aScheduledTaskProfile;
// Delete a scheduled task profile
- (void)deleteWithId:(int)aId;
// Retrieve a scheduled task profile by id
- (KalturaScheduledTaskProfile*)getWithId:(int)aId;
- (KalturaObjectListResponse*)getDryRunResultsWithRequestId:(int)aRequestId;
// List scheduled task profiles
- (KalturaScheduledTaskProfileListResponse*)listWithFilter:(KalturaScheduledTaskProfileFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaScheduledTaskProfileListResponse*)listWithFilter:(KalturaScheduledTaskProfileFilter*)aFilter;
- (KalturaScheduledTaskProfileListResponse*)list;
- (int)requestDryRunWithScheduledTaskProfileId:(int)aScheduledTaskProfileId withMaxResults:(int)aMaxResults;
- (int)requestDryRunWithScheduledTaskProfileId:(int)aScheduledTaskProfileId;
// Serves dry run results by its request id
- (NSString*)serveDryRunResultsWithRequestId:(int)aRequestId;
// Update an existing scheduled task profile
- (KalturaScheduledTaskProfile*)updateWithId:(int)aId withScheduledTaskProfile:(KalturaScheduledTaskProfile*)aScheduledTaskProfile;
@end

@interface KalturaScheduledTaskClientPlugin : KalturaClientPlugin
{
	KalturaScheduledTaskProfileService* _scheduledTaskProfile;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaScheduledTaskProfileService* scheduledTaskProfile;
@end

