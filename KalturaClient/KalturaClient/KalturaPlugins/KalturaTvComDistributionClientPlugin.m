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
#import "KalturaTvComDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaTVComDistributionProfileOrderBy
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

@implementation KalturaTVComDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaTVComDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTVComDistributionProvider"];
}

@end

@interface KalturaTVComDistributionProfile()
@property (nonatomic,copy) NSString* feedUrl;
@end

@implementation KalturaTVComDistributionProfile
@synthesize metadataProfileId = _metadataProfileId;
@synthesize feedUrl = _feedUrl;
@synthesize feedTitle = _feedTitle;
@synthesize feedLink = _feedLink;
@synthesize feedDescription = _feedDescription;
@synthesize feedLanguage = _feedLanguage;
@synthesize feedCopyright = _feedCopyright;
@synthesize feedImageTitle = _feedImageTitle;
@synthesize feedImageUrl = _feedImageUrl;
@synthesize feedImageLink = _feedImageLink;
@synthesize feedImageWidth = _feedImageWidth;
@synthesize feedImageHeight = _feedImageHeight;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_metadataProfileId = KALTURA_UNDEF_INT;
    self->_feedImageWidth = KALTURA_UNDEF_INT;
    self->_feedImageHeight = KALTURA_UNDEF_INT;
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

- (KalturaFieldType)getTypeOfFeedLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedCopyright
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedImageTitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedImageUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedImageLink
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedImageWidth
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFeedImageHeight
{
    return KFT_Int;
}

- (void)setMetadataProfileIdFromString:(NSString*)aPropVal
{
    self.metadataProfileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFeedImageWidthFromString:(NSString*)aPropVal
{
    self.feedImageWidth = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFeedImageHeightFromString:(NSString*)aPropVal
{
    self.feedImageHeight = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTVComDistributionProfile"];
    [aParams addIfDefinedKey:@"metadataProfileId" withInt:self.metadataProfileId];
    [aParams addIfDefinedKey:@"feedTitle" withString:self.feedTitle];
    [aParams addIfDefinedKey:@"feedLink" withString:self.feedLink];
    [aParams addIfDefinedKey:@"feedDescription" withString:self.feedDescription];
    [aParams addIfDefinedKey:@"feedLanguage" withString:self.feedLanguage];
    [aParams addIfDefinedKey:@"feedCopyright" withString:self.feedCopyright];
    [aParams addIfDefinedKey:@"feedImageTitle" withString:self.feedImageTitle];
    [aParams addIfDefinedKey:@"feedImageUrl" withString:self.feedImageUrl];
    [aParams addIfDefinedKey:@"feedImageLink" withString:self.feedImageLink];
    [aParams addIfDefinedKey:@"feedImageWidth" withInt:self.feedImageWidth];
    [aParams addIfDefinedKey:@"feedImageHeight" withInt:self.feedImageHeight];
}

- (void)dealloc
{
    [self->_feedUrl release];
    [self->_feedTitle release];
    [self->_feedLink release];
    [self->_feedDescription release];
    [self->_feedLanguage release];
    [self->_feedCopyright release];
    [self->_feedImageTitle release];
    [self->_feedImageUrl release];
    [self->_feedImageLink release];
    [super dealloc];
}

@end

@implementation KalturaTVComDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTVComDistributionProviderBaseFilter"];
}

@end

@implementation KalturaTVComDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTVComDistributionProviderFilter"];
}

@end

@implementation KalturaTVComDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTVComDistributionProfileBaseFilter"];
}

@end

@implementation KalturaTVComDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTVComDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
