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
#import "KalturaLikeClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaLikeOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaLike
@synthesize entryId = _entryId;
@synthesize userId = _userId;
@synthesize createdAt = _createdAt;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_createdAt = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfEntryId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreatedAt
{
    return KFT_Int;
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLike"];
    [aParams addIfDefinedKey:@"entryId" withString:self.entryId];
    [aParams addIfDefinedKey:@"userId" withString:self.userId];
    [aParams addIfDefinedKey:@"createdAt" withInt:self.createdAt];
}

- (void)dealloc
{
    [self->_entryId release];
    [self->_userId release];
    [super dealloc];
}

@end

@interface KalturaLikeListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaLikeListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaLike";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLikeListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaLikeBaseFilter
@synthesize entryIdEqual = _entryIdEqual;
@synthesize entryIdIn = _entryIdIn;
@synthesize userIdEqual = _userIdEqual;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfEntryIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEntryIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual
{
    return KFT_Int;
}

- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.createdAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.createdAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLikeBaseFilter"];
    [aParams addIfDefinedKey:@"entryIdEqual" withString:self.entryIdEqual];
    [aParams addIfDefinedKey:@"entryIdIn" withString:self.entryIdIn];
    [aParams addIfDefinedKey:@"userIdEqual" withString:self.userIdEqual];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
}

- (void)dealloc
{
    [self->_entryIdEqual release];
    [self->_entryIdIn release];
    [self->_userIdEqual release];
    [super dealloc];
}

@end

@implementation KalturaLikeFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLikeFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaLikeService
- (KALTURA_BOOL)checkLikeExistsWithEntryId:(NSString*)aEntryId withUserId:(NSString*)aUserId
{
    [self.client.params addIfDefinedKey:@"entryId" withString:aEntryId];
    [self.client.params addIfDefinedKey:@"userId" withString:aUserId];
    return [self.client queueBoolService:@"like_like" withAction:@"checkLikeExists"];
}

- (KALTURA_BOOL)checkLikeExistsWithEntryId:(NSString*)aEntryId
{
    return [self checkLikeExistsWithEntryId:aEntryId withUserId:nil];
}

- (KALTURA_BOOL)likeWithEntryId:(NSString*)aEntryId
{
    [self.client.params addIfDefinedKey:@"entryId" withString:aEntryId];
    return [self.client queueBoolService:@"like_like" withAction:@"like"];
}

- (KalturaLikeListResponse*)listWithFilter:(KalturaLikeFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"like_like" withAction:@"list" withExpectedType:@"KalturaLikeListResponse"];
}

- (KalturaLikeListResponse*)listWithFilter:(KalturaLikeFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaLikeListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KALTURA_BOOL)unlikeWithEntryId:(NSString*)aEntryId
{
    [self.client.params addIfDefinedKey:@"entryId" withString:aEntryId];
    return [self.client queueBoolService:@"like_like" withAction:@"unlike"];
}

@end

@implementation KalturaLikeClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaLikeService*)like
{
    if (self->_like == nil)
    	self->_like = [[KalturaLikeService alloc] initWithClient:self.client];
    return self->_like;
}

- (void)dealloc
{
    [self->_like release];
	[super dealloc];
}

@end

