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
#import "KalturaMetroPcsDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaMetroPcsDistributionProfileOrderBy
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

@implementation KalturaMetroPcsDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaMetroPcsDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMetroPcsDistributionProvider"];
}

@end

@implementation KalturaMetroPcsDistributionJobProviderData
@synthesize assetLocalPaths = _assetLocalPaths;
@synthesize thumbUrls = _thumbUrls;

- (KalturaFieldType)getTypeOfAssetLocalPaths
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfThumbUrls
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMetroPcsDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"assetLocalPaths" withString:self.assetLocalPaths];
    [aParams addIfDefinedKey:@"thumbUrls" withString:self.thumbUrls];
}

- (void)dealloc
{
    [self->_assetLocalPaths release];
    [self->_thumbUrls release];
    [super dealloc];
}

@end

@implementation KalturaMetroPcsDistributionProfile
@synthesize ftpHost = _ftpHost;
@synthesize ftpLogin = _ftpLogin;
@synthesize ftpPass = _ftpPass;
@synthesize ftpPath = _ftpPath;
@synthesize providerName = _providerName;
@synthesize providerId = _providerId;
@synthesize acopyright = _acopyright;
@synthesize entitlements = _entitlements;
@synthesize rating = _rating;
@synthesize itemType = _itemType;

- (KalturaFieldType)getTypeOfFtpHost
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFtpLogin
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFtpPass
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFtpPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfProviderName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfProviderId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCopyright
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEntitlements
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRating
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemType
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMetroPcsDistributionProfile"];
    [aParams addIfDefinedKey:@"ftpHost" withString:self.ftpHost];
    [aParams addIfDefinedKey:@"ftpLogin" withString:self.ftpLogin];
    [aParams addIfDefinedKey:@"ftpPass" withString:self.ftpPass];
    [aParams addIfDefinedKey:@"ftpPath" withString:self.ftpPath];
    [aParams addIfDefinedKey:@"providerName" withString:self.providerName];
    [aParams addIfDefinedKey:@"providerId" withString:self.providerId];
    [aParams addIfDefinedKey:@"acopyright" withString:self.acopyright];
    [aParams addIfDefinedKey:@"entitlements" withString:self.entitlements];
    [aParams addIfDefinedKey:@"rating" withString:self.rating];
    [aParams addIfDefinedKey:@"itemType" withString:self.itemType];
}

- (void)dealloc
{
    [self->_ftpHost release];
    [self->_ftpLogin release];
    [self->_ftpPass release];
    [self->_ftpPath release];
    [self->_providerName release];
    [self->_providerId release];
    [self->_acopyright release];
    [self->_entitlements release];
    [self->_rating release];
    [self->_itemType release];
    [super dealloc];
}

@end

@implementation KalturaMetroPcsDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMetroPcsDistributionProviderBaseFilter"];
}

@end

@implementation KalturaMetroPcsDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMetroPcsDistributionProviderFilter"];
}

@end

@implementation KalturaMetroPcsDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMetroPcsDistributionProfileBaseFilter"];
}

@end

@implementation KalturaMetroPcsDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMetroPcsDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
