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
#import "KalturaUnicornDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaUnicornDistributionProfileOrderBy
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

@implementation KalturaUnicornDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaUnicornDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUnicornDistributionProvider"];
}

@end

@implementation KalturaUnicornDistributionJobProviderData
@synthesize catalogGuid = _catalogGuid;
@synthesize title = _title;
@synthesize mediaChanged = _mediaChanged;
@synthesize flavorAssetVersion = _flavorAssetVersion;
@synthesize notificationBaseUrl = _notificationBaseUrl;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_mediaChanged = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfCatalogGuid
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMediaChanged
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfFlavorAssetVersion
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfNotificationBaseUrl
{
    return KFT_String;
}

- (void)setMediaChangedFromString:(NSString*)aPropVal
{
    self.mediaChanged = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUnicornDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"catalogGuid" withString:self.catalogGuid];
    [aParams addIfDefinedKey:@"title" withString:self.title];
    [aParams addIfDefinedKey:@"mediaChanged" withBool:self.mediaChanged];
    [aParams addIfDefinedKey:@"flavorAssetVersion" withString:self.flavorAssetVersion];
    [aParams addIfDefinedKey:@"notificationBaseUrl" withString:self.notificationBaseUrl];
}

- (void)dealloc
{
    [self->_catalogGuid release];
    [self->_title release];
    [self->_flavorAssetVersion release];
    [self->_notificationBaseUrl release];
    [super dealloc];
}

@end

@implementation KalturaUnicornDistributionProfile
@synthesize username = _username;
@synthesize password = _password;
@synthesize domainName = _domainName;
@synthesize channelGuid = _channelGuid;
@synthesize apiHostUrl = _apiHostUrl;
@synthesize domainGuid = _domainGuid;
@synthesize adFreeApplicationGuid = _adFreeApplicationGuid;
@synthesize remoteAssetParamsId = _remoteAssetParamsId;
@synthesize storageProfileId = _storageProfileId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_remoteAssetParamsId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPassword
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDomainName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelGuid
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfApiHostUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDomainGuid
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAdFreeApplicationGuid
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRemoteAssetParamsId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStorageProfileId
{
    return KFT_String;
}

- (void)setRemoteAssetParamsIdFromString:(NSString*)aPropVal
{
    self.remoteAssetParamsId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUnicornDistributionProfile"];
    [aParams addIfDefinedKey:@"username" withString:self.username];
    [aParams addIfDefinedKey:@"password" withString:self.password];
    [aParams addIfDefinedKey:@"domainName" withString:self.domainName];
    [aParams addIfDefinedKey:@"channelGuid" withString:self.channelGuid];
    [aParams addIfDefinedKey:@"apiHostUrl" withString:self.apiHostUrl];
    [aParams addIfDefinedKey:@"domainGuid" withString:self.domainGuid];
    [aParams addIfDefinedKey:@"adFreeApplicationGuid" withString:self.adFreeApplicationGuid];
    [aParams addIfDefinedKey:@"remoteAssetParamsId" withInt:self.remoteAssetParamsId];
    [aParams addIfDefinedKey:@"storageProfileId" withString:self.storageProfileId];
}

- (void)dealloc
{
    [self->_username release];
    [self->_password release];
    [self->_domainName release];
    [self->_channelGuid release];
    [self->_apiHostUrl release];
    [self->_domainGuid release];
    [self->_adFreeApplicationGuid release];
    [self->_storageProfileId release];
    [super dealloc];
}

@end

@implementation KalturaUnicornDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUnicornDistributionProviderBaseFilter"];
}

@end

@implementation KalturaUnicornDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUnicornDistributionProviderFilter"];
}

@end

@implementation KalturaUnicornDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUnicornDistributionProfileBaseFilter"];
}

@end

@implementation KalturaUnicornDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUnicornDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaUnicornService
- (void)notifyWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client queueVoidService:@"unicorndistribution_unicorn" withAction:@"notify"];
}

@end

@implementation KalturaUnicornDistributionClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaUnicornService*)unicorn
{
    if (self->_unicorn == nil)
    	self->_unicorn = [[KalturaUnicornService alloc] initWithClient:self.client];
    return self->_unicorn;
}

- (void)dealloc
{
    [self->_unicorn release];
	[super dealloc];
}

@end

