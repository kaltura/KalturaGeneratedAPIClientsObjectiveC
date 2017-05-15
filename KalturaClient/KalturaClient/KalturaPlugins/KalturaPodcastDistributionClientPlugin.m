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
#import "KalturaPodcastDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaPodcastDistributionProfileOrderBy
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

@implementation KalturaPodcastDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaPodcastDistributionJobProviderData
@synthesize xml = _xml;
@synthesize metadataProfileId = _metadataProfileId;
@synthesize distributionProfileId = _distributionProfileId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_metadataProfileId = KALTURA_UNDEF_INT;
    self->_distributionProfileId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfXml
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMetadataProfileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDistributionProfileId
{
    return KFT_Int;
}

- (void)setMetadataProfileIdFromString:(NSString*)aPropVal
{
    self.metadataProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDistributionProfileIdFromString:(NSString*)aPropVal
{
    self.distributionProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPodcastDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"xml" withString:self.xml];
    [aParams addIfDefinedKey:@"metadataProfileId" withInt:self.metadataProfileId];
    [aParams addIfDefinedKey:@"distributionProfileId" withInt:self.distributionProfileId];
}

- (void)dealloc
{
    [self->_xml release];
    [super dealloc];
}

@end

@interface KalturaPodcastDistributionProfile()
@property (nonatomic,copy) NSString* feedId;
@end

@implementation KalturaPodcastDistributionProfile
@synthesize xsl = _xsl;
@synthesize feedId = _feedId;
@synthesize metadataProfileId = _metadataProfileId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_metadataProfileId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfXsl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedId
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
        [aParams putKey:@"objectType" withString:@"KalturaPodcastDistributionProfile"];
    [aParams addIfDefinedKey:@"xsl" withString:self.xsl];
    [aParams addIfDefinedKey:@"metadataProfileId" withInt:self.metadataProfileId];
}

- (void)dealloc
{
    [self->_xsl release];
    [self->_feedId release];
    [super dealloc];
}

@end

@implementation KalturaPodcastDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPodcastDistributionProvider"];
}

@end

@implementation KalturaPodcastDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPodcastDistributionProfileBaseFilter"];
}

@end

@implementation KalturaPodcastDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPodcastDistributionProviderBaseFilter"];
}

@end

@implementation KalturaPodcastDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPodcastDistributionProfileFilter"];
}

@end

@implementation KalturaPodcastDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPodcastDistributionProviderFilter"];
}

@end

///////////////////////// services /////////////////////////
