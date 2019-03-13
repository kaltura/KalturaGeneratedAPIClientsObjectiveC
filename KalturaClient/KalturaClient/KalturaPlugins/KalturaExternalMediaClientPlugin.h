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
// @package Kaltura
// @subpackage Client
@interface KalturaExternalMediaEntryOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)DURATION_ASC;
+ (NSString*)END_DATE_ASC;
+ (NSString*)LAST_PLAYED_AT_ASC;
+ (NSString*)MEDIA_TYPE_ASC;
+ (NSString*)MODERATION_COUNT_ASC;
+ (NSString*)NAME_ASC;
+ (NSString*)PARTNER_SORT_VALUE_ASC;
+ (NSString*)PLAYS_ASC;
+ (NSString*)RANK_ASC;
+ (NSString*)RECENT_ASC;
+ (NSString*)START_DATE_ASC;
+ (NSString*)TOTAL_RANK_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)VIEWS_ASC;
+ (NSString*)WEIGHT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)DURATION_DESC;
+ (NSString*)END_DATE_DESC;
+ (NSString*)LAST_PLAYED_AT_DESC;
+ (NSString*)MEDIA_TYPE_DESC;
+ (NSString*)MODERATION_COUNT_DESC;
+ (NSString*)NAME_DESC;
+ (NSString*)PARTNER_SORT_VALUE_DESC;
+ (NSString*)PLAYS_DESC;
+ (NSString*)RANK_DESC;
+ (NSString*)RECENT_DESC;
+ (NSString*)START_DATE_DESC;
+ (NSString*)TOTAL_RANK_DESC;
+ (NSString*)UPDATED_AT_DESC;
+ (NSString*)VIEWS_DESC;
+ (NSString*)WEIGHT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaExternalMediaSourceType : NSObject
+ (NSString*)INTERCALL;
+ (NSString*)YOUTUBE;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaExternalMediaEntry : KalturaMediaEntry
// The source type of the external media
@property (nonatomic,copy) NSString* externalSourceType;	// enum KalturaExternalMediaSourceType, insertonly
// Comma separated asset params ids that exists for this external media entry
@property (nonatomic,copy,readonly) NSString* assetParamsIds;
- (KalturaFieldType)getTypeOfExternalSourceType;
- (KalturaFieldType)getTypeOfAssetParamsIds;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaExternalMediaEntryListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaExternalMediaEntry elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaExternalMediaEntryBaseFilter : KalturaMediaEntryFilter
@property (nonatomic,copy) NSString* externalSourceTypeEqual;	// enum KalturaExternalMediaSourceType
@property (nonatomic,copy) NSString* externalSourceTypeIn;
@property (nonatomic,copy) NSString* assetParamsIdsMatchOr;
@property (nonatomic,copy) NSString* assetParamsIdsMatchAnd;
- (KalturaFieldType)getTypeOfExternalSourceTypeEqual;
- (KalturaFieldType)getTypeOfExternalSourceTypeIn;
- (KalturaFieldType)getTypeOfAssetParamsIdsMatchOr;
- (KalturaFieldType)getTypeOfAssetParamsIdsMatchAnd;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaExternalMediaEntryFilter : KalturaExternalMediaEntryBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// External media service lets you upload and manage embed codes and external playable content
@interface KalturaExternalMediaService : KalturaServiceBase
// Add external media entry
- (KalturaExternalMediaEntry*)addWithEntry:(KalturaExternalMediaEntry*)aEntry;
// Count media entries by filter.
- (int)countWithFilter:(KalturaExternalMediaEntryFilter*)aFilter;
- (int)count;
// Delete a external media entry.
- (void)deleteWithId:(NSString*)aId;
// Get external media entry by ID.
- (KalturaExternalMediaEntry*)getWithId:(NSString*)aId;
// List media entries by filter with paging support.
- (KalturaExternalMediaEntryListResponse*)listWithFilter:(KalturaExternalMediaEntryFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaExternalMediaEntryListResponse*)listWithFilter:(KalturaExternalMediaEntryFilter*)aFilter;
- (KalturaExternalMediaEntryListResponse*)list;
// Update external media entry. Only the properties that were set will be updated.
- (KalturaExternalMediaEntry*)updateWithId:(NSString*)aId withEntry:(KalturaExternalMediaEntry*)aEntry;
@end

@interface KalturaExternalMediaClientPlugin : KalturaClientPlugin
{
	KalturaExternalMediaService* _externalMedia;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaExternalMediaService* externalMedia;
@end

