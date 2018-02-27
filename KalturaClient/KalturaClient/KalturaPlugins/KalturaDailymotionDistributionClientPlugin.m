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
#import "KalturaDailymotionDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaDailymotionDistributionCaptionAction
+ (int)UPDATE_ACTION
{
    return 1;
}
+ (int)SUBMIT_ACTION
{
    return 2;
}
+ (int)DELETE_ACTION
{
    return 3;
}
@end

@implementation KalturaDailymotionDistributionCaptionFormat
+ (int)SRT
{
    return 1;
}
+ (int)STL
{
    return 2;
}
+ (int)TT
{
    return 3;
}
@end

@implementation KalturaDailymotionGeoBlockingMapping
+ (int)DISABLED
{
    return 0;
}
+ (int)ACCESS_CONTROL
{
    return 1;
}
+ (int)METADATA
{
    return 2;
}
@end

@implementation KalturaDailymotionDistributionProfileOrderBy
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

@implementation KalturaDailymotionDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaDailymotionDistributionCaptionInfo
@synthesize language = _language;
@synthesize filePath = _filePath;
@synthesize remoteId = _remoteId;
@synthesize action = _action;
@synthesize version = _version;
@synthesize assetId = _assetId;
@synthesize format = _format;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_action = KALTURA_UNDEF_INT;
    self->_format = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfLanguage
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

- (KalturaFieldType)getTypeOfAction
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfVersion
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFormat
{
    return KFT_Int;
}

- (void)setActionFromString:(NSString*)aPropVal
{
    self.action = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFormatFromString:(NSString*)aPropVal
{
    self.format = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDailymotionDistributionCaptionInfo"];
    [aParams addIfDefinedKey:@"language" withString:self.language];
    [aParams addIfDefinedKey:@"filePath" withString:self.filePath];
    [aParams addIfDefinedKey:@"remoteId" withString:self.remoteId];
    [aParams addIfDefinedKey:@"action" withInt:self.action];
    [aParams addIfDefinedKey:@"version" withString:self.version];
    [aParams addIfDefinedKey:@"assetId" withString:self.assetId];
    [aParams addIfDefinedKey:@"format" withInt:self.format];
}

- (void)dealloc
{
    [self->_language release];
    [self->_filePath release];
    [self->_remoteId release];
    [self->_version release];
    [self->_assetId release];
    [super dealloc];
}

@end

@implementation KalturaDailymotionDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDailymotionDistributionProvider"];
}

@end

@implementation KalturaDailymotionDistributionJobProviderData
@synthesize videoAssetFilePath = _videoAssetFilePath;
@synthesize accessControlGeoBlockingOperation = _accessControlGeoBlockingOperation;
@synthesize accessControlGeoBlockingCountryList = _accessControlGeoBlockingCountryList;
@synthesize captionsInfo = _captionsInfo;

- (KalturaFieldType)getTypeOfVideoAssetFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAccessControlGeoBlockingOperation
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAccessControlGeoBlockingCountryList
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionsInfo
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfCaptionsInfo
{
    return @"KalturaDailymotionDistributionCaptionInfo";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDailymotionDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"videoAssetFilePath" withString:self.videoAssetFilePath];
    [aParams addIfDefinedKey:@"accessControlGeoBlockingOperation" withString:self.accessControlGeoBlockingOperation];
    [aParams addIfDefinedKey:@"accessControlGeoBlockingCountryList" withString:self.accessControlGeoBlockingCountryList];
    [aParams addIfDefinedKey:@"captionsInfo" withArray:self.captionsInfo];
}

- (void)dealloc
{
    [self->_videoAssetFilePath release];
    [self->_accessControlGeoBlockingOperation release];
    [self->_accessControlGeoBlockingCountryList release];
    [self->_captionsInfo release];
    [super dealloc];
}

@end

@implementation KalturaDailymotionDistributionProfile
@synthesize user = _user;
@synthesize password = _password;
@synthesize geoBlockingMapping = _geoBlockingMapping;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_geoBlockingMapping = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfUser
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPassword
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfGeoBlockingMapping
{
    return KFT_Int;
}

- (void)setGeoBlockingMappingFromString:(NSString*)aPropVal
{
    self.geoBlockingMapping = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDailymotionDistributionProfile"];
    [aParams addIfDefinedKey:@"user" withString:self.user];
    [aParams addIfDefinedKey:@"password" withString:self.password];
    [aParams addIfDefinedKey:@"geoBlockingMapping" withInt:self.geoBlockingMapping];
}

- (void)dealloc
{
    [self->_user release];
    [self->_password release];
    [super dealloc];
}

@end

@implementation KalturaDailymotionDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDailymotionDistributionProviderBaseFilter"];
}

@end

@implementation KalturaDailymotionDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDailymotionDistributionProviderFilter"];
}

@end

@implementation KalturaDailymotionDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDailymotionDistributionProfileBaseFilter"];
}

@end

@implementation KalturaDailymotionDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDailymotionDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
