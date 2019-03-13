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
#import "KalturaFreewheelDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaFreewheelDistributionProfileOrderBy
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

@implementation KalturaFreewheelDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaFreewheelDistributionAssetPath
@synthesize path = _path;

- (KalturaFieldType)getTypeOfPath
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelDistributionAssetPath"];
    [aParams addIfDefinedKey:@"path" withString:self.path];
}

- (void)dealloc
{
    [self->_path release];
    [super dealloc];
}

@end

@implementation KalturaFreewheelDistributionJobProviderData
@synthesize videoAssetFilePaths = _videoAssetFilePaths;
@synthesize thumbAssetFilePath = _thumbAssetFilePath;

- (KalturaFieldType)getTypeOfVideoAssetFilePaths
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfVideoAssetFilePaths
{
    return @"KalturaFreewheelDistributionAssetPath";
}

- (KalturaFieldType)getTypeOfThumbAssetFilePath
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"videoAssetFilePaths" withArray:self.videoAssetFilePaths];
    [aParams addIfDefinedKey:@"thumbAssetFilePath" withString:self.thumbAssetFilePath];
}

- (void)dealloc
{
    [self->_videoAssetFilePaths release];
    [self->_thumbAssetFilePath release];
    [super dealloc];
}

@end

@implementation KalturaFreewheelDistributionProfile
@synthesize apikey = _apikey;
@synthesize email = _email;
@synthesize sftpPass = _sftpPass;
@synthesize sftpLogin = _sftpLogin;
@synthesize accountId = _accountId;
@synthesize metadataProfileId = _metadataProfileId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_metadataProfileId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfApikey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEmail
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpPass
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpLogin
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAccountId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMetadataProfileId
{
    return KFT_Int;
}

- (void)setMetadataProfileIdFromString:(NSString*)aPropVal
{
    self.metadataProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelDistributionProfile"];
    [aParams addIfDefinedKey:@"apikey" withString:self.apikey];
    [aParams addIfDefinedKey:@"email" withString:self.email];
    [aParams addIfDefinedKey:@"sftpPass" withString:self.sftpPass];
    [aParams addIfDefinedKey:@"sftpLogin" withString:self.sftpLogin];
    [aParams addIfDefinedKey:@"accountId" withString:self.accountId];
    [aParams addIfDefinedKey:@"metadataProfileId" withInt:self.metadataProfileId];
}

- (void)dealloc
{
    [self->_apikey release];
    [self->_email release];
    [self->_sftpPass release];
    [self->_sftpLogin release];
    [self->_accountId release];
    [super dealloc];
}

@end

@implementation KalturaFreewheelDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelDistributionProvider"];
}

@end

@implementation KalturaFreewheelDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelDistributionProfileBaseFilter"];
}

@end

@implementation KalturaFreewheelDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelDistributionProviderBaseFilter"];
}

@end

@implementation KalturaFreewheelDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelDistributionProfileFilter"];
}

@end

@implementation KalturaFreewheelDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelDistributionProviderFilter"];
}

@end

///////////////////////// services /////////////////////////
