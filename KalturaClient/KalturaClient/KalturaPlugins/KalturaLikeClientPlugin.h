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
// Copyright (C) 2006-2016  Kaltura Inc.
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
// @package Kaltura
// @subpackage Client
@interface KalturaLikeOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaLike : KalturaObjectBase
// The id of the entry that the like belongs to
@property (nonatomic,copy) NSString* entryId;
// The id of user that the like belongs to
@property (nonatomic,copy) NSString* userId;
// The date of the like's creation
@property (nonatomic,assign) int createdAt;
- (KalturaFieldType)getTypeOfEntryId;
- (KalturaFieldType)getTypeOfUserId;
- (KalturaFieldType)getTypeOfCreatedAt;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLikeListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaLike elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLikeBaseFilter : KalturaRelatedFilter
@property (nonatomic,copy) NSString* entryIdEqual;
@property (nonatomic,copy) NSString* entryIdIn;
@property (nonatomic,copy) NSString* userIdEqual;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfEntryIdEqual;
- (KalturaFieldType)getTypeOfEntryIdIn;
- (KalturaFieldType)getTypeOfUserIdEqual;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLikeFilter : KalturaLikeBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Allows user to 'like' or 'unlike' and entry
@interface KalturaLikeService : KalturaServiceBase
- (KALTURA_BOOL)likeWithEntryId:(NSString*)aEntryId;
- (KALTURA_BOOL)unlikeWithEntryId:(NSString*)aEntryId;
- (KALTURA_BOOL)checkLikeExistsWithEntryId:(NSString*)aEntryId withUserId:(NSString*)aUserId;
- (KALTURA_BOOL)checkLikeExistsWithEntryId:(NSString*)aEntryId;
- (KalturaLikeListResponse*)listWithFilter:(KalturaLikeFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaLikeListResponse*)listWithFilter:(KalturaLikeFilter*)aFilter;
- (KalturaLikeListResponse*)list;
@end

