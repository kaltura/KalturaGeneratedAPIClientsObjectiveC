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
#import "KalturaComcastMrssDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaComcastMrssDistributionProfileOrderBy
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

@implementation KalturaComcastMrssDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaComcastMrssDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaComcastMrssDistributionProvider"];
}

@end

@interface KalturaComcastMrssDistributionProfile()
@property (nonatomic,copy) NSString* feedUrl;
@end

@implementation KalturaComcastMrssDistributionProfile
@synthesize metadataProfileId = _metadataProfileId;
@synthesize feedUrl = _feedUrl;
@synthesize feedTitle = _feedTitle;
@synthesize feedLink = _feedLink;
@synthesize feedDescription = _feedDescription;
@synthesize feedLastBuildDate = _feedLastBuildDate;
@synthesize itemLink = _itemLink;
@synthesize cPlatformTvSeries = _cPlatformTvSeries;
@synthesize cPlatformTvSeriesField = _cPlatformTvSeriesField;
@synthesize shouldIncludeCuePoints = _shouldIncludeCuePoints;
@synthesize shouldIncludeCaptions = _shouldIncludeCaptions;
@synthesize shouldAddThumbExtension = _shouldAddThumbExtension;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_metadataProfileId = KALTURA_UNDEF_INT;
    self->_shouldIncludeCuePoints = KALTURA_UNDEF_BOOL;
    self->_shouldIncludeCaptions = KALTURA_UNDEF_BOOL;
    self->_shouldAddThumbExtension = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfMetadataProfileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFeedUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedTitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedLink
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedLastBuildDate
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemLink
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCPlatformTvSeries
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfCPlatformTvSeries
{
    return @"KalturaKeyValue";
}

- (KalturaFieldType)getTypeOfCPlatformTvSeriesField
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfShouldIncludeCuePoints
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfShouldIncludeCaptions
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfShouldAddThumbExtension
{
    return KFT_Bool;
}

- (void)setMetadataProfileIdFromString:(NSString*)aPropVal
{
    self.metadataProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setShouldIncludeCuePointsFromString:(NSString*)aPropVal
{
    self.shouldIncludeCuePoints = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setShouldIncludeCaptionsFromString:(NSString*)aPropVal
{
    self.shouldIncludeCaptions = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setShouldAddThumbExtensionFromString:(NSString*)aPropVal
{
    self.shouldAddThumbExtension = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaComcastMrssDistributionProfile"];
    [aParams addIfDefinedKey:@"metadataProfileId" withInt:self.metadataProfileId];
    [aParams addIfDefinedKey:@"feedTitle" withString:self.feedTitle];
    [aParams addIfDefinedKey:@"feedLink" withString:self.feedLink];
    [aParams addIfDefinedKey:@"feedDescription" withString:self.feedDescription];
    [aParams addIfDefinedKey:@"feedLastBuildDate" withString:self.feedLastBuildDate];
    [aParams addIfDefinedKey:@"itemLink" withString:self.itemLink];
    [aParams addIfDefinedKey:@"cPlatformTvSeries" withArray:self.cPlatformTvSeries];
    [aParams addIfDefinedKey:@"cPlatformTvSeriesField" withString:self.cPlatformTvSeriesField];
    [aParams addIfDefinedKey:@"shouldIncludeCuePoints" withBool:self.shouldIncludeCuePoints];
    [aParams addIfDefinedKey:@"shouldIncludeCaptions" withBool:self.shouldIncludeCaptions];
    [aParams addIfDefinedKey:@"shouldAddThumbExtension" withBool:self.shouldAddThumbExtension];
}

- (void)dealloc
{
    [self->_feedUrl release];
    [self->_feedTitle release];
    [self->_feedLink release];
    [self->_feedDescription release];
    [self->_feedLastBuildDate release];
    [self->_itemLink release];
    [self->_cPlatformTvSeries release];
    [self->_cPlatformTvSeriesField release];
    [super dealloc];
}

@end

@implementation KalturaComcastMrssDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaComcastMrssDistributionProviderBaseFilter"];
}

@end

@implementation KalturaComcastMrssDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaComcastMrssDistributionProviderFilter"];
}

@end

@implementation KalturaComcastMrssDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaComcastMrssDistributionProfileBaseFilter"];
}

@end

@implementation KalturaComcastMrssDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaComcastMrssDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
