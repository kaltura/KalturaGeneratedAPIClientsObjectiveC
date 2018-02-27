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
#import "KalturaEventNotificationClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaPushNotificationCommandType : NSObject
+ (NSString*)CLEAR_QUEUE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPushNotificationTemplateOrderBy : NSObject
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
@interface KalturaPushEventNotificationParameter : KalturaEventNotificationParameter
@property (nonatomic,copy) NSString* queueKeyToken;
- (KalturaFieldType)getTypeOfQueueKeyToken;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPushNotificationData : KalturaObjectBase
@property (nonatomic,copy,readonly) NSString* queueName;
@property (nonatomic,copy,readonly) NSString* queueKey;
@property (nonatomic,copy,readonly) NSString* url;
- (KalturaFieldType)getTypeOfQueueName;
- (KalturaFieldType)getTypeOfQueueKey;
- (KalturaFieldType)getTypeOfUrl;
@end

// @package Kaltura
// @subpackage Client
// Object which contains contextual entry-related data.
@interface KalturaPushNotificationParams : KalturaObjectBase
// User params
@property (nonatomic,retain) NSMutableArray* userParams;	// of KalturaPushEventNotificationParameter elements
- (KalturaFieldType)getTypeOfUserParams;
- (NSString*)getObjectTypeOfUserParams;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPushNotificationTemplate : KalturaEventNotificationTemplate
// Define the content dynamic parameters
@property (nonatomic,retain) NSMutableArray* queueNameParameters;	// of KalturaPushEventNotificationParameter elements
// Define the content dynamic parameters
@property (nonatomic,retain) NSMutableArray* queueKeyParameters;	// of KalturaPushEventNotificationParameter elements
// Kaltura API object type
@property (nonatomic,copy) NSString* apiObjectType;
// Kaltura Object format
@property (nonatomic,assign) int objectFormat;	// enum KalturaResponseType
// Kaltura response-profile id
@property (nonatomic,assign) int responseProfileId;
- (KalturaFieldType)getTypeOfQueueNameParameters;
- (NSString*)getObjectTypeOfQueueNameParameters;
- (KalturaFieldType)getTypeOfQueueKeyParameters;
- (NSString*)getObjectTypeOfQueueKeyParameters;
- (KalturaFieldType)getTypeOfApiObjectType;
- (KalturaFieldType)getTypeOfObjectFormat;
- (KalturaFieldType)getTypeOfResponseProfileId;
- (void)setObjectFormatFromString:(NSString*)aPropVal;
- (void)setResponseProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPushNotificationTemplateBaseFilter : KalturaEventNotificationTemplateFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPushNotificationTemplateFilter : KalturaPushNotificationTemplateBaseFilter
@end

///////////////////////// services /////////////////////////
