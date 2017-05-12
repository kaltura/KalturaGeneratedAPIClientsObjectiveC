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
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaViewHistoryUserEntry : KalturaUserEntry
// Playback context
@property (nonatomic,copy) NSString* playbackContext;
// Last playback time reached by user
@property (nonatomic,assign) int lastTimeReached;
- (KalturaFieldType)getTypeOfPlaybackContext;
- (KalturaFieldType)getTypeOfLastTimeReached;
- (void)setLastTimeReachedFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaViewHistoryUserEntryAdvancedFilter : KalturaSearchItem
@property (nonatomic,copy) NSString* idEqual;
@property (nonatomic,copy) NSString* idIn;
@property (nonatomic,copy) NSString* userIdEqual;
@property (nonatomic,copy) NSString* userIdIn;
@property (nonatomic,copy) NSString* updatedAtGreaterThanOrEqual;
@property (nonatomic,copy) NSString* updatedAtLessThanOrEqual;
@property (nonatomic,copy) NSString* extendedStatusEqual;	// enum KalturaUserEntryExtendedStatus
@property (nonatomic,copy) NSString* extendedStatusIn;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfIdIn;
- (KalturaFieldType)getTypeOfUserIdEqual;
- (KalturaFieldType)getTypeOfUserIdIn;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfExtendedStatusEqual;
- (KalturaFieldType)getTypeOfExtendedStatusIn;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaViewHistoryUserEntryFilter : KalturaUserEntryFilter
@end

///////////////////////// services /////////////////////////
