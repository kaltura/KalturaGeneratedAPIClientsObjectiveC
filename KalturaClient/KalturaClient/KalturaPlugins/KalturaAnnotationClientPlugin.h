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
#import "KalturaCuePointClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaAnnotationOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)DURATION_ASC;
+ (NSString*)END_TIME_ASC;
+ (NSString*)PARTNER_SORT_VALUE_ASC;
+ (NSString*)START_TIME_ASC;
+ (NSString*)TRIGGERED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)DURATION_DESC;
+ (NSString*)END_TIME_DESC;
+ (NSString*)PARTNER_SORT_VALUE_DESC;
+ (NSString*)START_TIME_DESC;
+ (NSString*)TRIGGERED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaAnnotation : KalturaCuePoint
@property (nonatomic,copy) NSString* parentId;	// insertonly
@property (nonatomic,copy) NSString* text;
// End time in milliseconds
@property (nonatomic,assign) int endTime;
// Duration in milliseconds
@property (nonatomic,assign,readonly) int duration;
// Depth in the tree
@property (nonatomic,assign,readonly) int depth;
// Number of all descendants
@property (nonatomic,assign,readonly) int childrenCount;
// Number of children, first generation only.
@property (nonatomic,assign,readonly) int directChildrenCount;
// Is the annotation public.
@property (nonatomic,assign) int isPublic;	// enum KalturaNullableBoolean
// Should the cue point get indexed on the entry.
@property (nonatomic,assign) int searchableOnEntry;	// enum KalturaNullableBoolean
- (KalturaFieldType)getTypeOfParentId;
- (KalturaFieldType)getTypeOfText;
- (KalturaFieldType)getTypeOfEndTime;
- (KalturaFieldType)getTypeOfDuration;
- (KalturaFieldType)getTypeOfDepth;
- (KalturaFieldType)getTypeOfChildrenCount;
- (KalturaFieldType)getTypeOfDirectChildrenCount;
- (KalturaFieldType)getTypeOfIsPublic;
- (KalturaFieldType)getTypeOfSearchableOnEntry;
- (void)setEndTimeFromString:(NSString*)aPropVal;
- (void)setDurationFromString:(NSString*)aPropVal;
- (void)setDepthFromString:(NSString*)aPropVal;
- (void)setChildrenCountFromString:(NSString*)aPropVal;
- (void)setDirectChildrenCountFromString:(NSString*)aPropVal;
- (void)setIsPublicFromString:(NSString*)aPropVal;
- (void)setSearchableOnEntryFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAnnotationListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaAnnotation elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAnnotationBaseFilter : KalturaCuePointFilter
@property (nonatomic,copy) NSString* parentIdEqual;
@property (nonatomic,copy) NSString* parentIdIn;
@property (nonatomic,copy) NSString* textLike;
@property (nonatomic,copy) NSString* textMultiLikeOr;
@property (nonatomic,copy) NSString* textMultiLikeAnd;
@property (nonatomic,assign) int endTimeGreaterThanOrEqual;
@property (nonatomic,assign) int endTimeLessThanOrEqual;
@property (nonatomic,assign) int durationGreaterThanOrEqual;
@property (nonatomic,assign) int durationLessThanOrEqual;
@property (nonatomic,assign) int isPublicEqual;	// enum KalturaNullableBoolean
- (KalturaFieldType)getTypeOfParentIdEqual;
- (KalturaFieldType)getTypeOfParentIdIn;
- (KalturaFieldType)getTypeOfTextLike;
- (KalturaFieldType)getTypeOfTextMultiLikeOr;
- (KalturaFieldType)getTypeOfTextMultiLikeAnd;
- (KalturaFieldType)getTypeOfEndTimeGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfEndTimeLessThanOrEqual;
- (KalturaFieldType)getTypeOfDurationGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfDurationLessThanOrEqual;
- (KalturaFieldType)getTypeOfIsPublicEqual;
- (void)setEndTimeGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setEndTimeLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setDurationGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setDurationLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setIsPublicEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAnnotationFilter : KalturaAnnotationBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Annotation service - Video Annotation
@interface KalturaAnnotationService : KalturaServiceBase
// Allows you to add an annotation object associated with an entry
- (KalturaAnnotation*)addWithAnnotation:(KalturaCuePoint*)aAnnotation;
// Allows you to add multiple cue points objects by uploading XML that contains multiple cue point definitions
- (KalturaCuePointListResponse*)addFromBulkWithFileData:(NSString*)aFileData;
// Clone cuePoint with id to given entry
- (KalturaCuePoint*)cloneWithId:(NSString*)aId withEntryId:(NSString*)aEntryId;
// count cue point objects by filter
- (int)countWithFilter:(KalturaCuePointFilter*)aFilter;
- (int)count;
// delete cue point by id, and delete all children cue points
- (void)deleteWithId:(NSString*)aId;
// Retrieve an CuePoint object by id
- (KalturaCuePoint*)getWithId:(NSString*)aId;
// List annotation objects by filter and pager
- (KalturaAnnotationListResponse*)listWithFilter:(KalturaCuePointFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaAnnotationListResponse*)listWithFilter:(KalturaCuePointFilter*)aFilter;
- (KalturaAnnotationListResponse*)list;
// Download multiple cue points objects as XML definitions
- (NSString*)serveBulkWithFilter:(KalturaCuePointFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (NSString*)serveBulkWithFilter:(KalturaCuePointFilter*)aFilter;
- (NSString*)serveBulk;
// Update annotation by id
- (KalturaAnnotation*)updateWithId:(NSString*)aId withAnnotation:(KalturaCuePoint*)aAnnotation;
// Update cuePoint status by id
- (void)updateStatusWithId:(NSString*)aId withStatus:(int)aStatus;
@end

@interface KalturaAnnotationClientPlugin : KalturaClientPlugin
{
	KalturaAnnotationService* _annotation;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaAnnotationService* annotation;
@end

