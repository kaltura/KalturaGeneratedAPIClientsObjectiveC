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
#import "KalturaGroupClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@interface KalturaGroup()
@property (nonatomic,assign) int membersCount;
@end

@implementation KalturaGroup
@synthesize membersCount = _membersCount;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_membersCount = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfMembersCount
{
    return KFT_Int;
}

- (void)setMembersCountFromString:(NSString*)aPropVal
{
    self.membersCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaGroup"];
}

@end

@interface KalturaGroupListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaGroupListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaGroup";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaGroupListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaGroupFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaGroupFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaGroupService
- (KalturaGroup*)addWithGroup:(KalturaGroup*)aGroup
{
    [self.client.params addIfDefinedKey:@"group" withObject:aGroup];
    return [self.client queueObjectService:@"group_group" withAction:@"add" withExpectedType:@"KalturaGroup"];
}

- (KalturaGroup*)deleteWithGroupId:(NSString*)aGroupId
{
    [self.client.params addIfDefinedKey:@"groupId" withString:aGroupId];
    return [self.client queueObjectService:@"group_group" withAction:@"delete" withExpectedType:@"KalturaGroup"];
}

- (KalturaGroup*)getWithGroupId:(NSString*)aGroupId
{
    [self.client.params addIfDefinedKey:@"groupId" withString:aGroupId];
    return [self.client queueObjectService:@"group_group" withAction:@"get" withExpectedType:@"KalturaGroup"];
}

- (KalturaGroupListResponse*)listWithFilter:(KalturaGroupFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"group_group" withAction:@"list" withExpectedType:@"KalturaGroupListResponse"];
}

- (KalturaGroupListResponse*)listWithFilter:(KalturaGroupFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaGroupListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaGroup*)updateWithGroupId:(NSString*)aGroupId withGroup:(KalturaGroup*)aGroup
{
    [self.client.params addIfDefinedKey:@"groupId" withString:aGroupId];
    [self.client.params addIfDefinedKey:@"group" withObject:aGroup];
    return [self.client queueObjectService:@"group_group" withAction:@"update" withExpectedType:@"KalturaGroup"];
}

@end

@implementation KalturaGroupClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaGroupService*)group
{
    if (self->_group == nil)
    	self->_group = [[KalturaGroupService alloc] initWithClient:self.client];
    return self->_group;
}

- (void)dealloc
{
    [self->_group release];
	[super dealloc];
}

@end

