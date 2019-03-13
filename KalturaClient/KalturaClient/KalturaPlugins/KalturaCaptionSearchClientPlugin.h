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
#import "KalturaCaptionClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaCaptionAssetItem : KalturaObjectBase
// The Caption Asset object
@property (nonatomic,retain) KalturaCaptionAsset* asset;
// The entry object
@property (nonatomic,retain) KalturaBaseEntry* entry;
@property (nonatomic,assign) int startTime;
@property (nonatomic,assign) int endTime;
@property (nonatomic,copy) NSString* content;
- (KalturaFieldType)getTypeOfAsset;
- (NSString*)getObjectTypeOfAsset;
- (KalturaFieldType)getTypeOfEntry;
- (NSString*)getObjectTypeOfEntry;
- (KalturaFieldType)getTypeOfStartTime;
- (KalturaFieldType)getTypeOfEndTime;
- (KalturaFieldType)getTypeOfContent;
- (void)setStartTimeFromString:(NSString*)aPropVal;
- (void)setEndTimeFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCaptionAssetItemListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaCaptionAssetItem elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryCaptionAssetSearchItem : KalturaSearchItem
@property (nonatomic,copy) NSString* contentLike;
@property (nonatomic,copy) NSString* contentMultiLikeOr;
@property (nonatomic,copy) NSString* contentMultiLikeAnd;
- (KalturaFieldType)getTypeOfContentLike;
- (KalturaFieldType)getTypeOfContentMultiLikeOr;
- (KalturaFieldType)getTypeOfContentMultiLikeAnd;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCaptionAssetItemFilter : KalturaCaptionAssetFilter
@property (nonatomic,copy) NSString* contentLike;
@property (nonatomic,copy) NSString* contentMultiLikeOr;
@property (nonatomic,copy) NSString* contentMultiLikeAnd;
@property (nonatomic,copy) NSString* partnerDescriptionLike;
@property (nonatomic,copy) NSString* partnerDescriptionMultiLikeOr;
@property (nonatomic,copy) NSString* partnerDescriptionMultiLikeAnd;
@property (nonatomic,copy) NSString* languageEqual;	// enum KalturaLanguage
@property (nonatomic,copy) NSString* languageIn;
@property (nonatomic,copy) NSString* labelEqual;
@property (nonatomic,copy) NSString* labelIn;
@property (nonatomic,assign) int startTimeGreaterThanOrEqual;
@property (nonatomic,assign) int startTimeLessThanOrEqual;
@property (nonatomic,assign) int endTimeGreaterThanOrEqual;
@property (nonatomic,assign) int endTimeLessThanOrEqual;
- (KalturaFieldType)getTypeOfContentLike;
- (KalturaFieldType)getTypeOfContentMultiLikeOr;
- (KalturaFieldType)getTypeOfContentMultiLikeAnd;
- (KalturaFieldType)getTypeOfPartnerDescriptionLike;
- (KalturaFieldType)getTypeOfPartnerDescriptionMultiLikeOr;
- (KalturaFieldType)getTypeOfPartnerDescriptionMultiLikeAnd;
- (KalturaFieldType)getTypeOfLanguageEqual;
- (KalturaFieldType)getTypeOfLanguageIn;
- (KalturaFieldType)getTypeOfLabelEqual;
- (KalturaFieldType)getTypeOfLabelIn;
- (KalturaFieldType)getTypeOfStartTimeGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfStartTimeLessThanOrEqual;
- (KalturaFieldType)getTypeOfEndTimeGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfEndTimeLessThanOrEqual;
- (void)setStartTimeGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setStartTimeLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setEndTimeGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setEndTimeLessThanOrEqualFromString:(NSString*)aPropVal;
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Search caption asset items
@interface KalturaCaptionAssetItemService : KalturaServiceBase
// List caption asset items by filter and pager
- (KalturaCaptionAssetItemListResponse*)listWithCaptionAssetId:(NSString*)aCaptionAssetId withCaptionAssetItemFilter:(KalturaCaptionAssetItemFilter*)aCaptionAssetItemFilter withCaptionAssetItemPager:(KalturaFilterPager*)aCaptionAssetItemPager;
- (KalturaCaptionAssetItemListResponse*)listWithCaptionAssetId:(NSString*)aCaptionAssetId withCaptionAssetItemFilter:(KalturaCaptionAssetItemFilter*)aCaptionAssetItemFilter;
- (KalturaCaptionAssetItemListResponse*)listWithCaptionAssetId:(NSString*)aCaptionAssetId;
// Search caption asset items by filter, pager and free text
- (KalturaCaptionAssetItemListResponse*)searchWithEntryFilter:(KalturaBaseEntryFilter*)aEntryFilter withCaptionAssetItemFilter:(KalturaCaptionAssetItemFilter*)aCaptionAssetItemFilter withCaptionAssetItemPager:(KalturaFilterPager*)aCaptionAssetItemPager;
- (KalturaCaptionAssetItemListResponse*)searchWithEntryFilter:(KalturaBaseEntryFilter*)aEntryFilter withCaptionAssetItemFilter:(KalturaCaptionAssetItemFilter*)aCaptionAssetItemFilter;
- (KalturaCaptionAssetItemListResponse*)searchWithEntryFilter:(KalturaBaseEntryFilter*)aEntryFilter;
- (KalturaCaptionAssetItemListResponse*)search;
// Search caption asset items by filter, pager and free text
- (KalturaBaseEntryListResponse*)searchEntriesWithEntryFilter:(KalturaBaseEntryFilter*)aEntryFilter withCaptionAssetItemFilter:(KalturaCaptionAssetItemFilter*)aCaptionAssetItemFilter withCaptionAssetItemPager:(KalturaFilterPager*)aCaptionAssetItemPager;
- (KalturaBaseEntryListResponse*)searchEntriesWithEntryFilter:(KalturaBaseEntryFilter*)aEntryFilter withCaptionAssetItemFilter:(KalturaCaptionAssetItemFilter*)aCaptionAssetItemFilter;
- (KalturaBaseEntryListResponse*)searchEntriesWithEntryFilter:(KalturaBaseEntryFilter*)aEntryFilter;
- (KalturaBaseEntryListResponse*)searchEntries;
@end

@interface KalturaCaptionSearchClientPlugin : KalturaClientPlugin
{
	KalturaCaptionAssetItemService* _captionAssetItem;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaCaptionAssetItemService* captionAssetItem;
@end

