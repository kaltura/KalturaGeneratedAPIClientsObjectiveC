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
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaGroup : KalturaBaseUser
@property (nonatomic,assign,readonly) int membersCount;
- (KalturaFieldType)getTypeOfMembersCount;
- (void)setMembersCountFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaGroupListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaGroup elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaGroupFilter : KalturaUserFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaGroupService : KalturaServiceBase
// Adds a new group (user of type group).
- (KalturaGroup*)addWithGroup:(KalturaGroup*)aGroup;
// Delete group by ID
- (KalturaGroup*)deleteWithGroupId:(NSString*)aGroupId;
// Retrieves a group object for a specified group ID.
- (KalturaGroup*)getWithGroupId:(NSString*)aGroupId;
// Lists group  objects that are associated with an account.
// 	 Blocked users are listed unless you use a filter to exclude them.
// 	 Deleted users are not listed unless you use a filter to include them.
- (KalturaGroupListResponse*)listWithFilter:(KalturaGroupFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaGroupListResponse*)listWithFilter:(KalturaGroupFilter*)aFilter;
- (KalturaGroupListResponse*)list;
// Update group by ID
- (KalturaGroup*)updateWithGroupId:(NSString*)aGroupId withGroup:(KalturaGroup*)aGroup;
@end

@interface KalturaGroupClientPlugin : KalturaClientPlugin
{
	KalturaGroupService* _group;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaGroupService* group;
@end

