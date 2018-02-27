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
#import "KalturaIdeticDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaIdeticDistributionProfileOrderBy
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

@implementation KalturaIdeticDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaIdeticDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIdeticDistributionProvider"];
}

@end

@implementation KalturaIdeticDistributionJobProviderData
@synthesize thumbnailUrl = _thumbnailUrl;
@synthesize flavorAssetUrl = _flavorAssetUrl;

- (KalturaFieldType)getTypeOfThumbnailUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFlavorAssetUrl
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIdeticDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"thumbnailUrl" withString:self.thumbnailUrl];
    [aParams addIfDefinedKey:@"flavorAssetUrl" withString:self.flavorAssetUrl];
}

- (void)dealloc
{
    [self->_thumbnailUrl release];
    [self->_flavorAssetUrl release];
    [super dealloc];
}

@end

@implementation KalturaIdeticDistributionProfile
@synthesize ftpPath = _ftpPath;
@synthesize username = _username;
@synthesize password = _password;
@synthesize domain = _domain;

- (KalturaFieldType)getTypeOfFtpPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPassword
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDomain
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIdeticDistributionProfile"];
    [aParams addIfDefinedKey:@"ftpPath" withString:self.ftpPath];
    [aParams addIfDefinedKey:@"username" withString:self.username];
    [aParams addIfDefinedKey:@"password" withString:self.password];
    [aParams addIfDefinedKey:@"domain" withString:self.domain];
}

- (void)dealloc
{
    [self->_ftpPath release];
    [self->_username release];
    [self->_password release];
    [self->_domain release];
    [super dealloc];
}

@end

@implementation KalturaIdeticDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIdeticDistributionProviderBaseFilter"];
}

@end

@implementation KalturaIdeticDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIdeticDistributionProviderFilter"];
}

@end

@implementation KalturaIdeticDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIdeticDistributionProfileBaseFilter"];
}

@end

@implementation KalturaIdeticDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIdeticDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
