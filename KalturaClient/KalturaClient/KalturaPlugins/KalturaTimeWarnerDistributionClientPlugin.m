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
#import "KalturaTimeWarnerDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaTimeWarnerDistributionProfileOrderBy
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

@implementation KalturaTimeWarnerDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaTimeWarnerDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTimeWarnerDistributionProvider"];
}

@end

@interface KalturaTimeWarnerDistributionProfile()
@property (nonatomic,copy) NSString* feedUrl;
@end

@implementation KalturaTimeWarnerDistributionProfile
@synthesize feedUrl = _feedUrl;

- (KalturaFieldType)getTypeOfFeedUrl
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTimeWarnerDistributionProfile"];
}

- (void)dealloc
{
    [self->_feedUrl release];
    [super dealloc];
}

@end

@implementation KalturaTimeWarnerDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTimeWarnerDistributionProviderBaseFilter"];
}

@end

@implementation KalturaTimeWarnerDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTimeWarnerDistributionProviderFilter"];
}

@end

@implementation KalturaTimeWarnerDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTimeWarnerDistributionProfileBaseFilter"];
}

@end

@implementation KalturaTimeWarnerDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTimeWarnerDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaTimeWarnerService
- (NSString*)getFeedWithDistributionProfileId:(int)aDistributionProfileId withHash:(NSString*)aHash
{
    [self.client.params addIfDefinedKey:@"distributionProfileId" withInt:aDistributionProfileId];
    [self.client.params addIfDefinedKey:@"hash" withString:aHash];
    return [self.client queueServeService:@"timewarnerdistribution_timewarner" withAction:@"getFeed"];
}

@end

@implementation KalturaTimeWarnerDistributionClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaTimeWarnerService*)timeWarner
{
    if (self->_timeWarner == nil)
    	self->_timeWarner = [[KalturaTimeWarnerService alloc] initWithClient:self.client];
    return self->_timeWarner;
}

- (void)dealloc
{
    [self->_timeWarner release];
	[super dealloc];
}

@end

