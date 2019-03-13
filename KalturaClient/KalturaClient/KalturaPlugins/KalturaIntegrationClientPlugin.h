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
#import "KalturaMetadataClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaIntegrationProviderType : NSObject
+ (NSString*)CIELO24;
+ (NSString*)VOICEBASE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaIntegrationTriggerType : NSObject
+ (NSString*)BPM_EVENT_NOTIFICATION;
+ (NSString*)MANUAL;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaIntegrationJobProviderData : KalturaObjectBase
@end

// @package Kaltura
// @subpackage Client
@interface KalturaIntegrationJobTriggerData : KalturaObjectBase
@end

// @package Kaltura
// @subpackage Client
@interface KalturaIntegrationJobData : KalturaJobData
@property (nonatomic,copy,readonly) NSString* callbackNotificationUrl;
@property (nonatomic,copy) NSString* providerType;	// enum KalturaIntegrationProviderType
// Additional data that relevant for the provider only
@property (nonatomic,retain) KalturaIntegrationJobProviderData* providerData;
@property (nonatomic,copy) NSString* triggerType;	// enum KalturaIntegrationTriggerType
// Additional data that relevant for the trigger only
@property (nonatomic,retain) KalturaIntegrationJobTriggerData* triggerData;
- (KalturaFieldType)getTypeOfCallbackNotificationUrl;
- (KalturaFieldType)getTypeOfProviderType;
- (KalturaFieldType)getTypeOfProviderData;
- (NSString*)getObjectTypeOfProviderData;
- (KalturaFieldType)getTypeOfTriggerType;
- (KalturaFieldType)getTypeOfTriggerData;
- (NSString*)getObjectTypeOfTriggerData;
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Integration service lets you dispatch integration tasks
@interface KalturaIntegrationService : KalturaServiceBase
// Dispatch integration task
- (int)dispatchWithData:(KalturaIntegrationJobData*)aData withObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId;
- (void)notifyWithId:(int)aId;
@end

@interface KalturaIntegrationClientPlugin : KalturaClientPlugin
{
	KalturaIntegrationService* _integration;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaIntegrationService* integration;
@end

