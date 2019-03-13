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
#import "KalturaFacebookDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaFacebookDistributionProfileOrderBy
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

@implementation KalturaFacebookDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaFacebookCaptionDistributionInfo
@synthesize language = _language;
@synthesize label = _label;
@synthesize filePath = _filePath;
@synthesize remoteId = _remoteId;
@synthesize version = _version;
@synthesize assetId = _assetId;

- (KalturaFieldType)getTypeOfLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLabel
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRemoteId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVersion
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFacebookCaptionDistributionInfo"];
    [aParams addIfDefinedKey:@"language" withString:self.language];
    [aParams addIfDefinedKey:@"label" withString:self.label];
    [aParams addIfDefinedKey:@"filePath" withString:self.filePath];
    [aParams addIfDefinedKey:@"remoteId" withString:self.remoteId];
    [aParams addIfDefinedKey:@"version" withString:self.version];
    [aParams addIfDefinedKey:@"assetId" withString:self.assetId];
}

- (void)dealloc
{
    [self->_language release];
    [self->_label release];
    [self->_filePath release];
    [self->_remoteId release];
    [self->_version release];
    [self->_assetId release];
    [super dealloc];
}

@end

@implementation KalturaFacebookDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFacebookDistributionProvider"];
}

@end

@implementation KalturaFacebookDistributionJobProviderData
@synthesize videoAssetFilePath = _videoAssetFilePath;
@synthesize thumbAssetId = _thumbAssetId;
@synthesize captionsInfo = _captionsInfo;

- (KalturaFieldType)getTypeOfVideoAssetFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfThumbAssetId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionsInfo
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfCaptionsInfo
{
    return @"KalturaFacebookCaptionDistributionInfo";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFacebookDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"videoAssetFilePath" withString:self.videoAssetFilePath];
    [aParams addIfDefinedKey:@"thumbAssetId" withString:self.thumbAssetId];
    [aParams addIfDefinedKey:@"captionsInfo" withArray:self.captionsInfo];
}

- (void)dealloc
{
    [self->_videoAssetFilePath release];
    [self->_thumbAssetId release];
    [self->_captionsInfo release];
    [super dealloc];
}

@end

@implementation KalturaFacebookDistributionProfile
@synthesize apiAuthorizeUrl = _apiAuthorizeUrl;
@synthesize pageId = _pageId;
@synthesize pageAccessToken = _pageAccessToken;
@synthesize userAccessToken = _userAccessToken;
@synthesize state = _state;
@synthesize permissions = _permissions;
@synthesize reRequestPermissions = _reRequestPermissions;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_reRequestPermissions = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfApiAuthorizeUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPageId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPageAccessToken
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserAccessToken
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfState
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPermissions
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfReRequestPermissions
{
    return KFT_Int;
}

- (void)setReRequestPermissionsFromString:(NSString*)aPropVal
{
    self.reRequestPermissions = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFacebookDistributionProfile"];
    [aParams addIfDefinedKey:@"apiAuthorizeUrl" withString:self.apiAuthorizeUrl];
    [aParams addIfDefinedKey:@"pageId" withString:self.pageId];
    [aParams addIfDefinedKey:@"pageAccessToken" withString:self.pageAccessToken];
    [aParams addIfDefinedKey:@"userAccessToken" withString:self.userAccessToken];
    [aParams addIfDefinedKey:@"state" withString:self.state];
    [aParams addIfDefinedKey:@"permissions" withString:self.permissions];
    [aParams addIfDefinedKey:@"reRequestPermissions" withInt:self.reRequestPermissions];
}

- (void)dealloc
{
    [self->_apiAuthorizeUrl release];
    [self->_pageId release];
    [self->_pageAccessToken release];
    [self->_userAccessToken release];
    [self->_state release];
    [self->_permissions release];
    [super dealloc];
}

@end

@implementation KalturaFacebookDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFacebookDistributionProviderBaseFilter"];
}

@end

@implementation KalturaFacebookDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFacebookDistributionProviderFilter"];
}

@end

@implementation KalturaFacebookDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFacebookDistributionProfileBaseFilter"];
}

@end

@implementation KalturaFacebookDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFacebookDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
