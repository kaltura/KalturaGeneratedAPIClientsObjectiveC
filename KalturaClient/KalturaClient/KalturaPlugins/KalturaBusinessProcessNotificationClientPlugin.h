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
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"
#import "KalturaEventNotificationClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessAbortNotificationTemplateOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessNotificationTemplateOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessProvider : NSObject
+ (NSString*)ACTIVITI;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessServerOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessServerStatus : NSObject
+ (NSString*)DISABLED;
+ (NSString*)ENABLED;
+ (NSString*)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessSignalNotificationTemplateOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessStartNotificationTemplateOrderBy : NSObject
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
@interface KalturaBusinessProcessCase : KalturaObjectBase
@property (nonatomic,copy) NSString* id;
@property (nonatomic,copy) NSString* businessProcessId;
@property (nonatomic,assign) int businessProcessStartNotificationTemplateId;
@property (nonatomic,assign) KALTURA_BOOL suspended;
@property (nonatomic,copy) NSString* activityId;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfBusinessProcessId;
- (KalturaFieldType)getTypeOfBusinessProcessStartNotificationTemplateId;
- (KalturaFieldType)getTypeOfSuspended;
- (KalturaFieldType)getTypeOfActivityId;
- (void)setBusinessProcessStartNotificationTemplateIdFromString:(NSString*)aPropVal;
- (void)setSuspendedFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessServer : KalturaObjectBase
// Auto generated identifier
@property (nonatomic,assign,readonly) int id;
// Server creation date as Unix timestamp (In seconds)
@property (nonatomic,assign,readonly) int createdAt;
// Server update date as Unix timestamp (In seconds)
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,assign,readonly) int partnerId;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* systemName;
@property (nonatomic,copy) NSString* description;
@property (nonatomic,copy,readonly) NSString* status;	// enum KalturaBusinessProcessServerStatus
// The type of the server, this is auto filled by the derived server object
@property (nonatomic,copy,readonly) NSString* type;	// enum KalturaBusinessProcessProvider
// The dc of the server
@property (nonatomic,assign) int dc;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfSystemName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfDc;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setDcFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessNotificationTemplate : KalturaEventNotificationTemplate
// Define the integrated BPM server id
@property (nonatomic,assign) int serverId;
// Define the integrated BPM process id
@property (nonatomic,copy) NSString* processId;
// Code to load the main triggering object
@property (nonatomic,copy) NSString* mainObjectCode;
- (KalturaFieldType)getTypeOfServerId;
- (KalturaFieldType)getTypeOfProcessId;
- (KalturaFieldType)getTypeOfMainObjectCode;
- (void)setServerIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessServerBaseFilter : KalturaFilter
@property (nonatomic,assign) int idEqual;
@property (nonatomic,copy) NSString* idIn;
@property (nonatomic,copy) NSString* idNotIn;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
@property (nonatomic,assign) int partnerIdEqual;
@property (nonatomic,copy) NSString* partnerIdIn;
@property (nonatomic,copy) NSString* statusEqual;	// enum KalturaBusinessProcessServerStatus
@property (nonatomic,copy) NSString* statusNotEqual;	// enum KalturaBusinessProcessServerStatus
@property (nonatomic,copy) NSString* statusIn;
@property (nonatomic,copy) NSString* statusNotIn;
@property (nonatomic,copy) NSString* typeEqual;	// enum KalturaBusinessProcessProvider
@property (nonatomic,copy) NSString* typeIn;
@property (nonatomic,assign) int dcEqual;
@property (nonatomic,assign) int dcEqOrNull;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfIdIn;
- (KalturaFieldType)getTypeOfIdNotIn;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfPartnerIdEqual;
- (KalturaFieldType)getTypeOfPartnerIdIn;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusNotEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfStatusNotIn;
- (KalturaFieldType)getTypeOfTypeEqual;
- (KalturaFieldType)getTypeOfTypeIn;
- (KalturaFieldType)getTypeOfDcEqual;
- (KalturaFieldType)getTypeOfDcEqOrNull;
- (void)setIdEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setPartnerIdEqualFromString:(NSString*)aPropVal;
- (void)setDcEqualFromString:(NSString*)aPropVal;
- (void)setDcEqOrNullFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessServerListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaBusinessProcessServer elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessAbortNotificationTemplate : KalturaBusinessProcessNotificationTemplate
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessNotificationDispatchJobData : KalturaEventNotificationDispatchJobData
@property (nonatomic,retain) KalturaBusinessProcessServer* server;
@property (nonatomic,copy) NSString* caseId;
- (KalturaFieldType)getTypeOfServer;
- (NSString*)getObjectTypeOfServer;
- (KalturaFieldType)getTypeOfCaseId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessServerFilter : KalturaBusinessProcessServerBaseFilter
@property (nonatomic,assign) int currentDcOrExternal;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int currentDc;	// enum KalturaNullableBoolean
- (KalturaFieldType)getTypeOfCurrentDcOrExternal;
- (KalturaFieldType)getTypeOfCurrentDc;
- (void)setCurrentDcOrExternalFromString:(NSString*)aPropVal;
- (void)setCurrentDcFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessSignalNotificationTemplate : KalturaBusinessProcessNotificationTemplate
// Define the message to be sent
@property (nonatomic,copy) NSString* message;
// Define the event that waiting to the signal
@property (nonatomic,copy) NSString* eventId;
- (KalturaFieldType)getTypeOfMessage;
- (KalturaFieldType)getTypeOfEventId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessStartNotificationTemplate : KalturaBusinessProcessNotificationTemplate
// Abort the process automatically if the triggering object deleted
@property (nonatomic,assign) KALTURA_BOOL abortOnDeletion;
- (KalturaFieldType)getTypeOfAbortOnDeletion;
- (void)setAbortOnDeletionFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessNotificationTemplateBaseFilter : KalturaEventNotificationTemplateFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessNotificationTemplateFilter : KalturaBusinessProcessNotificationTemplateBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessAbortNotificationTemplateBaseFilter : KalturaBusinessProcessNotificationTemplateFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessSignalNotificationTemplateBaseFilter : KalturaBusinessProcessNotificationTemplateFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessStartNotificationTemplateBaseFilter : KalturaBusinessProcessNotificationTemplateFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessAbortNotificationTemplateFilter : KalturaBusinessProcessAbortNotificationTemplateBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessSignalNotificationTemplateFilter : KalturaBusinessProcessSignalNotificationTemplateBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBusinessProcessStartNotificationTemplateFilter : KalturaBusinessProcessStartNotificationTemplateBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Business-process case service lets you get information about processes
@interface KalturaBusinessProcessCaseService : KalturaServiceBase
// Abort business-process case
- (void)abortWithObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId withBusinessProcessStartNotificationTemplateId:(int)aBusinessProcessStartNotificationTemplateId;
// list business-process cases
- (NSMutableArray*)listWithObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId;
// Server business-process case diagram
- (NSString*)serveDiagramWithObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId withBusinessProcessStartNotificationTemplateId:(int)aBusinessProcessStartNotificationTemplateId;
@end

@interface KalturaBusinessProcessNotificationClientPlugin : KalturaClientPlugin
{
	KalturaBusinessProcessCaseService* _businessProcessCase;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaBusinessProcessCaseService* businessProcessCase;
@end

