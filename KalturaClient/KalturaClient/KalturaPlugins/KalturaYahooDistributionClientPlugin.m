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
#import "KalturaYahooDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaYahooDistributionProcessFeedActionStatus
+ (int)MANUAL
{
    return 0;
}
+ (int)AUTOMATIC
{
    return 1;
}
@end

@implementation KalturaYahooDistributionProfileOrderBy
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

@implementation KalturaYahooDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaYahooDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYahooDistributionProvider"];
}

@end

@implementation KalturaYahooDistributionJobProviderData
@synthesize smallThumbPath = _smallThumbPath;
@synthesize largeThumbPath = _largeThumbPath;
@synthesize videoAssetFilePath = _videoAssetFilePath;

- (KalturaFieldType)getTypeOfSmallThumbPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLargeThumbPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVideoAssetFilePath
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYahooDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"smallThumbPath" withString:self.smallThumbPath];
    [aParams addIfDefinedKey:@"largeThumbPath" withString:self.largeThumbPath];
    [aParams addIfDefinedKey:@"videoAssetFilePath" withString:self.videoAssetFilePath];
}

- (void)dealloc
{
    [self->_smallThumbPath release];
    [self->_largeThumbPath release];
    [self->_videoAssetFilePath release];
    [super dealloc];
}

@end

@implementation KalturaYahooDistributionProfile
@synthesize ftpPath = _ftpPath;
@synthesize ftpUsername = _ftpUsername;
@synthesize ftpPassword = _ftpPassword;
@synthesize ftpHost = _ftpHost;
@synthesize contactTelephone = _contactTelephone;
@synthesize contactEmail = _contactEmail;
@synthesize processFeed = _processFeed;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_processFeed = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfFtpPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFtpUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFtpPassword
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFtpHost
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfContactTelephone
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfContactEmail
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfProcessFeed
{
    return KFT_Int;
}

- (void)setProcessFeedFromString:(NSString*)aPropVal
{
    self.processFeed = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYahooDistributionProfile"];
    [aParams addIfDefinedKey:@"ftpPath" withString:self.ftpPath];
    [aParams addIfDefinedKey:@"ftpUsername" withString:self.ftpUsername];
    [aParams addIfDefinedKey:@"ftpPassword" withString:self.ftpPassword];
    [aParams addIfDefinedKey:@"ftpHost" withString:self.ftpHost];
    [aParams addIfDefinedKey:@"contactTelephone" withString:self.contactTelephone];
    [aParams addIfDefinedKey:@"contactEmail" withString:self.contactEmail];
    [aParams addIfDefinedKey:@"processFeed" withInt:self.processFeed];
}

- (void)dealloc
{
    [self->_ftpPath release];
    [self->_ftpUsername release];
    [self->_ftpPassword release];
    [self->_ftpHost release];
    [self->_contactTelephone release];
    [self->_contactEmail release];
    [super dealloc];
}

@end

@implementation KalturaYahooDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYahooDistributionProviderBaseFilter"];
}

@end

@implementation KalturaYahooDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYahooDistributionProviderFilter"];
}

@end

@implementation KalturaYahooDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYahooDistributionProfileBaseFilter"];
}

@end

@implementation KalturaYahooDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYahooDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
