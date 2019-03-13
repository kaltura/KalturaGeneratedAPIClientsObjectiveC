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
#import "KalturaDoubleClickDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaDoubleClickDistributionProfileOrderBy
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

@implementation KalturaDoubleClickDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaDoubleClickDistributionJobProviderData
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDoubleClickDistributionJobProviderData"];
}

@end

@implementation KalturaDoubleClickDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDoubleClickDistributionProvider"];
}

@end

@interface KalturaDoubleClickDistributionProfile()
@property (nonatomic,copy) NSString* feedUrl;
@end

@implementation KalturaDoubleClickDistributionProfile
@synthesize channelTitle = _channelTitle;
@synthesize channelLink = _channelLink;
@synthesize channelDescription = _channelDescription;
@synthesize feedUrl = _feedUrl;
@synthesize cuePointsProvider = _cuePointsProvider;
@synthesize itemsPerPage = _itemsPerPage;
@synthesize ignoreSchedulingInFeed = _ignoreSchedulingInFeed;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_ignoreSchedulingInFeed = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfChannelTitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelLink
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCuePointsProvider
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemsPerPage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIgnoreSchedulingInFeed
{
    return KFT_Bool;
}

- (void)setIgnoreSchedulingInFeedFromString:(NSString*)aPropVal
{
    self.ignoreSchedulingInFeed = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDoubleClickDistributionProfile"];
    [aParams addIfDefinedKey:@"channelTitle" withString:self.channelTitle];
    [aParams addIfDefinedKey:@"channelLink" withString:self.channelLink];
    [aParams addIfDefinedKey:@"channelDescription" withString:self.channelDescription];
    [aParams addIfDefinedKey:@"cuePointsProvider" withString:self.cuePointsProvider];
    [aParams addIfDefinedKey:@"itemsPerPage" withString:self.itemsPerPage];
    [aParams addIfDefinedKey:@"ignoreSchedulingInFeed" withBool:self.ignoreSchedulingInFeed];
}

- (void)dealloc
{
    [self->_channelTitle release];
    [self->_channelLink release];
    [self->_channelDescription release];
    [self->_feedUrl release];
    [self->_cuePointsProvider release];
    [self->_itemsPerPage release];
    [super dealloc];
}

@end

@implementation KalturaDoubleClickDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDoubleClickDistributionProviderBaseFilter"];
}

@end

@implementation KalturaDoubleClickDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDoubleClickDistributionProviderFilter"];
}

@end

@implementation KalturaDoubleClickDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDoubleClickDistributionProfileBaseFilter"];
}

@end

@implementation KalturaDoubleClickDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDoubleClickDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
