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
#import "KalturaPushNotificationClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaPushNotificationCommandType
+ (NSString*)CLEAR_QUEUE
{
    return @"CLEAR_QUEUE";
}
@end

@implementation KalturaPushNotificationTemplateOrderBy
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
@implementation KalturaPushEventNotificationParameter
@synthesize queueKeyToken = _queueKeyToken;

- (KalturaFieldType)getTypeOfQueueKeyToken
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPushEventNotificationParameter"];
    [aParams addIfDefinedKey:@"queueKeyToken" withString:self.queueKeyToken];
}

- (void)dealloc
{
    [self->_queueKeyToken release];
    [super dealloc];
}

@end

@interface KalturaPushNotificationData()
@property (nonatomic,copy) NSString* queueName;
@property (nonatomic,copy) NSString* queueKey;
@property (nonatomic,copy) NSString* url;
@end

@implementation KalturaPushNotificationData
@synthesize queueName = _queueName;
@synthesize queueKey = _queueKey;
@synthesize url = _url;

- (KalturaFieldType)getTypeOfQueueName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfQueueKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUrl
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPushNotificationData"];
}

- (void)dealloc
{
    [self->_queueName release];
    [self->_queueKey release];
    [self->_url release];
    [super dealloc];
}

@end

@implementation KalturaPushNotificationParams
@synthesize userParams = _userParams;

- (KalturaFieldType)getTypeOfUserParams
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfUserParams
{
    return @"KalturaPushEventNotificationParameter";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPushNotificationParams"];
    [aParams addIfDefinedKey:@"userParams" withArray:self.userParams];
}

- (void)dealloc
{
    [self->_userParams release];
    [super dealloc];
}

@end

@implementation KalturaPushNotificationTemplate
@synthesize queueNameParameters = _queueNameParameters;
@synthesize queueKeyParameters = _queueKeyParameters;
@synthesize apiObjectType = _apiObjectType;
@synthesize objectFormat = _objectFormat;
@synthesize responseProfileId = _responseProfileId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_objectFormat = KALTURA_UNDEF_INT;
    self->_responseProfileId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfQueueNameParameters
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfQueueNameParameters
{
    return @"KalturaPushEventNotificationParameter";
}

- (KalturaFieldType)getTypeOfQueueKeyParameters
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfQueueKeyParameters
{
    return @"KalturaPushEventNotificationParameter";
}

- (KalturaFieldType)getTypeOfApiObjectType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfObjectFormat
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfResponseProfileId
{
    return KFT_Int;
}

- (void)setObjectFormatFromString:(NSString*)aPropVal
{
    self.objectFormat = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setResponseProfileIdFromString:(NSString*)aPropVal
{
    self.responseProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPushNotificationTemplate"];
    [aParams addIfDefinedKey:@"queueNameParameters" withArray:self.queueNameParameters];
    [aParams addIfDefinedKey:@"queueKeyParameters" withArray:self.queueKeyParameters];
    [aParams addIfDefinedKey:@"apiObjectType" withString:self.apiObjectType];
    [aParams addIfDefinedKey:@"objectFormat" withInt:self.objectFormat];
    [aParams addIfDefinedKey:@"responseProfileId" withInt:self.responseProfileId];
}

- (void)dealloc
{
    [self->_queueNameParameters release];
    [self->_queueKeyParameters release];
    [self->_apiObjectType release];
    [super dealloc];
}

@end

@implementation KalturaPushNotificationTemplateBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPushNotificationTemplateBaseFilter"];
}

@end

@implementation KalturaPushNotificationTemplateFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPushNotificationTemplateFilter"];
}

@end

///////////////////////// services /////////////////////////
