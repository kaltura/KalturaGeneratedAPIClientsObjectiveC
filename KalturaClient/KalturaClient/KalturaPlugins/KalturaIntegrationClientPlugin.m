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
// Copyright (C) 2006-2015  Kaltura Inc.
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
#import "KalturaIntegrationClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaIntegrationProviderType
+ (NSString*)VOICEBASE
{
    return @"voicebase.Voicebase";
}
@end

@implementation KalturaIntegrationTriggerType
+ (NSString*)MANUAL
{
    return @"1";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaIntegrationJobProviderData
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIntegrationJobProviderData"];
}

@end

@implementation KalturaIntegrationJobTriggerData
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIntegrationJobTriggerData"];
}

@end

@interface KalturaIntegrationJobData()
@property (nonatomic,copy) NSString* callbackNotificationUrl;
@end

@implementation KalturaIntegrationJobData
@synthesize callbackNotificationUrl = _callbackNotificationUrl;
@synthesize providerType = _providerType;
@synthesize providerData = _providerData;
@synthesize triggerType = _triggerType;
@synthesize triggerData = _triggerData;

- (KalturaFieldType)getTypeOfCallbackNotificationUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfProviderType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfProviderData
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfProviderData
{
    return @"KalturaIntegrationJobProviderData";
}

- (KalturaFieldType)getTypeOfTriggerType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTriggerData
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfTriggerData
{
    return @"KalturaIntegrationJobTriggerData";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIntegrationJobData"];
    [aParams addIfDefinedKey:@"providerType" withString:self.providerType];
    [aParams addIfDefinedKey:@"providerData" withObject:self.providerData];
    [aParams addIfDefinedKey:@"triggerType" withString:self.triggerType];
    [aParams addIfDefinedKey:@"triggerData" withObject:self.triggerData];
}

- (void)dealloc
{
    [self->_callbackNotificationUrl release];
    [self->_providerType release];
    [self->_providerData release];
    [self->_triggerType release];
    [self->_triggerData release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaIntegrationService
- (int)dispatchWithData:(KalturaIntegrationJobData*)aData withObjectType:(NSString*)aObjectType withObjectId:(NSString*)aObjectId
{
    [self.client.params addIfDefinedKey:@"data" withObject:aData];
    [self.client.params addIfDefinedKey:@"objectType" withString:aObjectType];
    [self.client.params addIfDefinedKey:@"objectId" withString:aObjectId];
    return [self.client queueIntService:@"integration_integration" withAction:@"dispatch"];
}

- (void)notifyWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client queueVoidService:@"integration_integration" withAction:@"notify"];
}

@end

@implementation KalturaIntegrationClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaIntegrationService*)integration
{
    if (self->_integration == nil)
    	self->_integration = [[KalturaIntegrationService alloc] initWithClient:self.client];
    return self->_integration;
}

- (void)dealloc
{
    [self->_integration release];
	[super dealloc];
}

@end

