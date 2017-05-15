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
#import "KalturaSynacorHboDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaSynacorHboDistributionProfileOrderBy
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

@implementation KalturaSynacorHboDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaSynacorHboDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSynacorHboDistributionProvider"];
}

@end

@interface KalturaSynacorHboDistributionProfile()
@property (nonatomic,copy) NSString* feedUrl;
@end

@implementation KalturaSynacorHboDistributionProfile
@synthesize feedUrl = _feedUrl;
@synthesize feedTitle = _feedTitle;
@synthesize feedSubtitle = _feedSubtitle;
@synthesize feedLink = _feedLink;
@synthesize feedAuthorName = _feedAuthorName;

- (KalturaFieldType)getTypeOfFeedUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedTitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedSubtitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedLink
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedAuthorName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSynacorHboDistributionProfile"];
    [aParams addIfDefinedKey:@"feedTitle" withString:self.feedTitle];
    [aParams addIfDefinedKey:@"feedSubtitle" withString:self.feedSubtitle];
    [aParams addIfDefinedKey:@"feedLink" withString:self.feedLink];
    [aParams addIfDefinedKey:@"feedAuthorName" withString:self.feedAuthorName];
}

- (void)dealloc
{
    [self->_feedUrl release];
    [self->_feedTitle release];
    [self->_feedSubtitle release];
    [self->_feedLink release];
    [self->_feedAuthorName release];
    [super dealloc];
}

@end

@implementation KalturaSynacorHboDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSynacorHboDistributionProviderBaseFilter"];
}

@end

@implementation KalturaSynacorHboDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSynacorHboDistributionProviderFilter"];
}

@end

@implementation KalturaSynacorHboDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSynacorHboDistributionProfileBaseFilter"];
}

@end

@implementation KalturaSynacorHboDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSynacorHboDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaSynacorHboService
- (NSString*)getFeedWithDistributionProfileId:(int)aDistributionProfileId withHash:(NSString*)aHash
{
    [self.client.params addIfDefinedKey:@"distributionProfileId" withInt:aDistributionProfileId];
    [self.client.params addIfDefinedKey:@"hash" withString:aHash];
    return [self.client queueServeService:@"synacorhbodistribution_synacorhbo" withAction:@"getFeed"];
}

@end

@implementation KalturaSynacorHboDistributionClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaSynacorHboService*)synacorHbo
{
    if (self->_synacorHbo == nil)
    	self->_synacorHbo = [[KalturaSynacorHboService alloc] initWithClient:self.client];
    return self->_synacorHbo;
}

- (void)dealloc
{
    [self->_synacorHbo release];
	[super dealloc];
}

@end

