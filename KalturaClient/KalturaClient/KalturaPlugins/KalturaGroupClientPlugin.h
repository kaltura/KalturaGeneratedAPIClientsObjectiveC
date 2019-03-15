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
#import "KalturaElasticSearchClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaESearchGroupFieldName : NSObject
+ (NSString*)CREATED_AT;
+ (NSString*)EMAIL;
+ (NSString*)FIRST_NAME;
+ (NSString*)GROUP_IDS;
+ (NSString*)LAST_NAME;
+ (NSString*)PERMISSION_NAMES;
+ (NSString*)ROLE_IDS;
+ (NSString*)SCREEN_NAME;
+ (NSString*)TAGS;
+ (NSString*)UPDATED_AT;
+ (NSString*)USER_ID;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchGroupOrderByFieldName : NSObject
+ (NSString*)CREATED_AT;
+ (NSString*)MEMBERS_COUNT;
+ (NSString*)USER_ID;
+ (NSString*)SCREEN_NAME;
+ (NSString*)UPDATED_AT;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaESearchGroupBaseItem : KalturaESearchBaseItem
@end

// @package Kaltura
// @subpackage Client
@interface KalturaGroup : KalturaBaseUser
@property (nonatomic,assign,readonly) int membersCount;
- (KalturaFieldType)getTypeOfMembersCount;
- (void)setMembersCountFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchGroupOperator : KalturaESearchGroupBaseItem
@property (nonatomic,assign) int operator;	// enum KalturaESearchOperatorType
@property (nonatomic,retain) NSMutableArray* searchItems;	// of KalturaESearchGroupBaseItem elements
- (KalturaFieldType)getTypeOfOperator;
- (KalturaFieldType)getTypeOfSearchItems;
- (NSString*)getObjectTypeOfSearchItems;
- (void)setOperatorFromString:(NSString*)aPropVal;
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
@interface KalturaESearchAbstractGroupItem : KalturaESearchGroupBaseItem
@property (nonatomic,copy) NSString* searchTerm;
@property (nonatomic,assign) int itemType;	// enum KalturaESearchItemType
@property (nonatomic,retain) KalturaESearchRange* range;
@property (nonatomic,assign) KALTURA_BOOL addHighlight;
- (KalturaFieldType)getTypeOfSearchTerm;
- (KalturaFieldType)getTypeOfItemType;
- (KalturaFieldType)getTypeOfRange;
- (NSString*)getObjectTypeOfRange;
- (KalturaFieldType)getTypeOfAddHighlight;
- (void)setItemTypeFromString:(NSString*)aPropVal;
- (void)setAddHighlightFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchGroupItem : KalturaESearchAbstractGroupItem
@property (nonatomic,copy) NSString* fieldName;	// enum KalturaESearchGroupFieldName
- (KalturaFieldType)getTypeOfFieldName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchGroupMetadataItem : KalturaESearchAbstractGroupItem
@property (nonatomic,copy) NSString* xpath;
@property (nonatomic,assign) int metadataProfileId;
@property (nonatomic,assign) int metadataFieldId;
- (KalturaFieldType)getTypeOfXpath;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (KalturaFieldType)getTypeOfMetadataFieldId;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
- (void)setMetadataFieldIdFromString:(NSString*)aPropVal;
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

