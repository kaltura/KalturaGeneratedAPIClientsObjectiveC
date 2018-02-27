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
#import "KalturaFreewheelGenericDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaFreewheelGenericDistributionProfileOrderBy
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

@implementation KalturaFreewheelGenericDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaFreewheelGenericDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelGenericDistributionProvider"];
}

@end

@implementation KalturaFreewheelGenericDistributionJobProviderData
@synthesize videoAssetFilePaths = _videoAssetFilePaths;
@synthesize thumbAssetFilePath = _thumbAssetFilePath;
@synthesize cuePoints = _cuePoints;

- (KalturaFieldType)getTypeOfVideoAssetFilePaths
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfVideoAssetFilePaths
{
    return @"KalturaString";
}

- (KalturaFieldType)getTypeOfThumbAssetFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCuePoints
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfCuePoints
{
    return @"KalturaCuePoint";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelGenericDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"videoAssetFilePaths" withArray:self.videoAssetFilePaths];
    [aParams addIfDefinedKey:@"thumbAssetFilePath" withString:self.thumbAssetFilePath];
    [aParams addIfDefinedKey:@"cuePoints" withArray:self.cuePoints];
}

- (void)dealloc
{
    [self->_videoAssetFilePaths release];
    [self->_thumbAssetFilePath release];
    [self->_cuePoints release];
    [super dealloc];
}

@end

@implementation KalturaFreewheelGenericDistributionProfile
@synthesize apikey = _apikey;
@synthesize email = _email;
@synthesize sftpPass = _sftpPass;
@synthesize sftpLogin = _sftpLogin;
@synthesize contentOwner = _contentOwner;
@synthesize upstreamVideoId = _upstreamVideoId;
@synthesize upstreamNetworkName = _upstreamNetworkName;
@synthesize upstreamNetworkId = _upstreamNetworkId;
@synthesize categoryId = _categoryId;
@synthesize replaceGroup = _replaceGroup;
@synthesize replaceAirDates = _replaceAirDates;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_replaceGroup = KALTURA_UNDEF_BOOL;
    self->_replaceAirDates = KALTURA_UNDEF_BOOL;
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

- (KalturaFieldType)getTypeOfContentOwner
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUpstreamVideoId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUpstreamNetworkName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUpstreamNetworkId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCategoryId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfReplaceGroup
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfReplaceAirDates
{
    return KFT_Bool;
}

- (void)setReplaceGroupFromString:(NSString*)aPropVal
{
    self.replaceGroup = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setReplaceAirDatesFromString:(NSString*)aPropVal
{
    self.replaceAirDates = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelGenericDistributionProfile"];
    [aParams addIfDefinedKey:@"apikey" withString:self.apikey];
    [aParams addIfDefinedKey:@"email" withString:self.email];
    [aParams addIfDefinedKey:@"sftpPass" withString:self.sftpPass];
    [aParams addIfDefinedKey:@"sftpLogin" withString:self.sftpLogin];
    [aParams addIfDefinedKey:@"contentOwner" withString:self.contentOwner];
    [aParams addIfDefinedKey:@"upstreamVideoId" withString:self.upstreamVideoId];
    [aParams addIfDefinedKey:@"upstreamNetworkName" withString:self.upstreamNetworkName];
    [aParams addIfDefinedKey:@"upstreamNetworkId" withString:self.upstreamNetworkId];
    [aParams addIfDefinedKey:@"categoryId" withString:self.categoryId];
    [aParams addIfDefinedKey:@"replaceGroup" withBool:self.replaceGroup];
    [aParams addIfDefinedKey:@"replaceAirDates" withBool:self.replaceAirDates];
}

- (void)dealloc
{
    [self->_apikey release];
    [self->_email release];
    [self->_sftpPass release];
    [self->_sftpLogin release];
    [self->_contentOwner release];
    [self->_upstreamVideoId release];
    [self->_upstreamNetworkName release];
    [self->_upstreamNetworkId release];
    [self->_categoryId release];
    [super dealloc];
}

@end

@implementation KalturaFreewheelGenericDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelGenericDistributionProviderBaseFilter"];
}

@end

@implementation KalturaFreewheelGenericDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelGenericDistributionProviderFilter"];
}

@end

@implementation KalturaFreewheelGenericDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelGenericDistributionProfileBaseFilter"];
}

@end

@implementation KalturaFreewheelGenericDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFreewheelGenericDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
