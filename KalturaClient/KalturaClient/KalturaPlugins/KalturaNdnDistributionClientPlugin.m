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
#import "KalturaNdnDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaNdnDistributionProfileOrderBy
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

@implementation KalturaNdnDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaNdnDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaNdnDistributionProvider"];
}

@end

@interface KalturaNdnDistributionProfile()
@property (nonatomic,copy) NSString* feedUrl;
@end

@implementation KalturaNdnDistributionProfile
@synthesize feedUrl = _feedUrl;
@synthesize channelTitle = _channelTitle;
@synthesize channelLink = _channelLink;
@synthesize channelDescription = _channelDescription;
@synthesize channelLanguage = _channelLanguage;
@synthesize channelCopyright = _channelCopyright;
@synthesize channelImageTitle = _channelImageTitle;
@synthesize channelImageUrl = _channelImageUrl;
@synthesize channelImageLink = _channelImageLink;
@synthesize itemMediaRating = _itemMediaRating;

- (KalturaFieldType)getTypeOfFeedUrl
{
    return KFT_String;
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

- (KalturaFieldType)getTypeOfChannelLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelCopyright
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelImageTitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelImageUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelImageLink
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemMediaRating
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaNdnDistributionProfile"];
    [aParams addIfDefinedKey:@"channelTitle" withString:self.channelTitle];
    [aParams addIfDefinedKey:@"channelLink" withString:self.channelLink];
    [aParams addIfDefinedKey:@"channelDescription" withString:self.channelDescription];
    [aParams addIfDefinedKey:@"channelLanguage" withString:self.channelLanguage];
    [aParams addIfDefinedKey:@"channelCopyright" withString:self.channelCopyright];
    [aParams addIfDefinedKey:@"channelImageTitle" withString:self.channelImageTitle];
    [aParams addIfDefinedKey:@"channelImageUrl" withString:self.channelImageUrl];
    [aParams addIfDefinedKey:@"channelImageLink" withString:self.channelImageLink];
    [aParams addIfDefinedKey:@"itemMediaRating" withString:self.itemMediaRating];
}

- (void)dealloc
{
    [self->_feedUrl release];
    [self->_channelTitle release];
    [self->_channelLink release];
    [self->_channelDescription release];
    [self->_channelLanguage release];
    [self->_channelCopyright release];
    [self->_channelImageTitle release];
    [self->_channelImageUrl release];
    [self->_channelImageLink release];
    [self->_itemMediaRating release];
    [super dealloc];
}

@end

@implementation KalturaNdnDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaNdnDistributionProviderBaseFilter"];
}

@end

@implementation KalturaNdnDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaNdnDistributionProviderFilter"];
}

@end

@implementation KalturaNdnDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaNdnDistributionProfileBaseFilter"];
}

@end

@implementation KalturaNdnDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaNdnDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaNdnService
- (NSString*)getFeedWithDistributionProfileId:(int)aDistributionProfileId withHash:(NSString*)aHash
{
    [self.client.params addIfDefinedKey:@"distributionProfileId" withInt:aDistributionProfileId];
    [self.client.params addIfDefinedKey:@"hash" withString:aHash];
    return [self.client queueServeService:@"ndndistribution_ndn" withAction:@"getFeed"];
}

@end

@implementation KalturaNdnDistributionClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaNdnService*)ndn
{
    if (self->_ndn == nil)
    	self->_ndn = [[KalturaNdnService alloc] initWithClient:self.client];
    return self->_ndn;
}

- (void)dealloc
{
    [self->_ndn release];
	[super dealloc];
}

@end

