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
#import "KalturaCuePointClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaCuePointStatus
+ (int)READY
{
    return 1;
}
+ (int)DELETED
{
    return 2;
}
+ (int)HANDLED
{
    return 3;
}
+ (int)PENDING
{
    return 4;
}
@end

@implementation KalturaQuestionType
+ (int)MULTIPLE_CHOICE_ANSWER
{
    return 1;
}
+ (int)TRUE_FALSE
{
    return 2;
}
+ (int)REFLECTION_POINT
{
    return 3;
}
+ (int)MULTIPLE_ANSWER_QUESTION
{
    return 4;
}
+ (int)FILL_IN_BLANK
{
    return 5;
}
+ (int)HOT_SPOT
{
    return 6;
}
+ (int)GO_TO
{
    return 7;
}
+ (int)OPEN_QUESTION
{
    return 8;
}
@end

@implementation KalturaQuizOutputType
+ (int)PDF
{
    return 1;
}
@end

@implementation KalturaScoreType
+ (int)HIGHEST
{
    return 1;
}
+ (int)LOWEST
{
    return 2;
}
+ (int)LATEST
{
    return 3;
}
+ (int)FIRST
{
    return 4;
}
+ (int)AVERAGE
{
    return 5;
}
@end

@implementation KalturaThumbCuePointSubType
+ (int)SLIDE
{
    return 1;
}
+ (int)CHAPTER
{
    return 2;
}
@end

@implementation KalturaCuePointOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)PARTNER_SORT_VALUE_ASC
{
    return @"+partnerSortValue";
}
+ (NSString*)START_TIME_ASC
{
    return @"+startTime";
}
+ (NSString*)TRIGGERED_AT_ASC
{
    return @"+triggeredAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)PARTNER_SORT_VALUE_DESC
{
    return @"-partnerSortValue";
}
+ (NSString*)START_TIME_DESC
{
    return @"-startTime";
}
+ (NSString*)TRIGGERED_AT_DESC
{
    return @"-triggeredAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaCuePointType
+ (NSString*)AD
{
    return @"adCuePoint.Ad";
}
+ (NSString*)ANNOTATION
{
    return @"annotation.Annotation";
}
+ (NSString*)CODE
{
    return @"codeCuePoint.Code";
}
+ (NSString*)EVENT
{
    return @"eventCuePoint.Event";
}
+ (NSString*)QUIZ_ANSWER
{
    return @"quiz.QUIZ_ANSWER";
}
+ (NSString*)QUIZ_QUESTION
{
    return @"quiz.QUIZ_QUESTION";
}
+ (NSString*)THUMB
{
    return @"thumbCuePoint.Thumb";
}
@end

///////////////////////// classes /////////////////////////
@interface KalturaCuePoint()
@property (nonatomic,copy) NSString* id;
@property (nonatomic,copy) NSString* cuePointType;
@property (nonatomic,assign) int status;
@property (nonatomic,assign) int partnerId;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@property (nonatomic,copy) NSString* userId;
@property (nonatomic,assign) KALTURA_BOOL isMomentary;
@property (nonatomic,copy) NSString* copiedFrom;
@end

@implementation KalturaCuePoint
@synthesize id = _id;
@synthesize cuePointType = _cuePointType;
@synthesize status = _status;
@synthesize entryId = _entryId;
@synthesize partnerId = _partnerId;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@synthesize triggeredAt = _triggeredAt;
@synthesize tags = _tags;
@synthesize startTime = _startTime;
@synthesize userId = _userId;
@synthesize partnerData = _partnerData;
@synthesize partnerSortValue = _partnerSortValue;
@synthesize forceStop = _forceStop;
@synthesize thumbOffset = _thumbOffset;
@synthesize systemName = _systemName;
@synthesize isMomentary = _isMomentary;
@synthesize copiedFrom = _copiedFrom;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_status = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    self->_updatedAt = KALTURA_UNDEF_INT;
    self->_triggeredAt = KALTURA_UNDEF_INT;
    self->_startTime = KALTURA_UNDEF_INT;
    self->_partnerSortValue = KALTURA_UNDEF_INT;
    self->_forceStop = KALTURA_UNDEF_INT;
    self->_thumbOffset = KALTURA_UNDEF_INT;
    self->_isMomentary = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCuePointType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEntryId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPartnerId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCreatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTriggeredAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTags
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStartTime
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPartnerData
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPartnerSortValue
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfForceStop
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfThumbOffset
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSystemName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsMomentary
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfCopiedFrom
{
    return KFT_String;
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtFromString:(NSString*)aPropVal
{
    self.updatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTriggeredAtFromString:(NSString*)aPropVal
{
    self.triggeredAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStartTimeFromString:(NSString*)aPropVal
{
    self.startTime = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerSortValueFromString:(NSString*)aPropVal
{
    self.partnerSortValue = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setForceStopFromString:(NSString*)aPropVal
{
    self.forceStop = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setThumbOffsetFromString:(NSString*)aPropVal
{
    self.thumbOffset = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsMomentaryFromString:(NSString*)aPropVal
{
    self.isMomentary = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCuePoint"];
    [aParams addIfDefinedKey:@"entryId" withString:self.entryId];
    [aParams addIfDefinedKey:@"triggeredAt" withInt:self.triggeredAt];
    [aParams addIfDefinedKey:@"tags" withString:self.tags];
    [aParams addIfDefinedKey:@"startTime" withInt:self.startTime];
    [aParams addIfDefinedKey:@"partnerData" withString:self.partnerData];
    [aParams addIfDefinedKey:@"partnerSortValue" withInt:self.partnerSortValue];
    [aParams addIfDefinedKey:@"forceStop" withInt:self.forceStop];
    [aParams addIfDefinedKey:@"thumbOffset" withInt:self.thumbOffset];
    [aParams addIfDefinedKey:@"systemName" withString:self.systemName];
}

- (void)dealloc
{
    [self->_id release];
    [self->_cuePointType release];
    [self->_entryId release];
    [self->_tags release];
    [self->_userId release];
    [self->_partnerData release];
    [self->_systemName release];
    [self->_copiedFrom release];
    [super dealloc];
}

@end

@interface KalturaCuePointListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaCuePointListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaCuePoint";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCuePointListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaCuePointBaseFilter
@synthesize idEqual = _idEqual;
@synthesize idIn = _idIn;
@synthesize cuePointTypeEqual = _cuePointTypeEqual;
@synthesize cuePointTypeIn = _cuePointTypeIn;
@synthesize statusEqual = _statusEqual;
@synthesize statusIn = _statusIn;
@synthesize entryIdEqual = _entryIdEqual;
@synthesize entryIdIn = _entryIdIn;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;
@synthesize triggeredAtGreaterThanOrEqual = _triggeredAtGreaterThanOrEqual;
@synthesize triggeredAtLessThanOrEqual = _triggeredAtLessThanOrEqual;
@synthesize tagsLike = _tagsLike;
@synthesize tagsMultiLikeOr = _tagsMultiLikeOr;
@synthesize tagsMultiLikeAnd = _tagsMultiLikeAnd;
@synthesize startTimeGreaterThanOrEqual = _startTimeGreaterThanOrEqual;
@synthesize startTimeLessThanOrEqual = _startTimeLessThanOrEqual;
@synthesize userIdEqual = _userIdEqual;
@synthesize userIdIn = _userIdIn;
@synthesize partnerSortValueEqual = _partnerSortValueEqual;
@synthesize partnerSortValueIn = _partnerSortValueIn;
@synthesize partnerSortValueGreaterThanOrEqual = _partnerSortValueGreaterThanOrEqual;
@synthesize partnerSortValueLessThanOrEqual = _partnerSortValueLessThanOrEqual;
@synthesize forceStopEqual = _forceStopEqual;
@synthesize systemNameEqual = _systemNameEqual;
@synthesize systemNameIn = _systemNameIn;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_statusEqual = KALTURA_UNDEF_INT;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_triggeredAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_triggeredAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_startTimeGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_startTimeLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_partnerSortValueEqual = KALTURA_UNDEF_INT;
    self->_partnerSortValueGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_partnerSortValueLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_forceStopEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCuePointTypeEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCuePointTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatusEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatusIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEntryIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEntryIdIn
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

- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTriggeredAtGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTriggeredAtLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTagsLike
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTagsMultiLikeOr
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTagsMultiLikeAnd
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStartTimeGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStartTimeLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUserIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPartnerSortValueEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerSortValueIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPartnerSortValueGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerSortValueLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfForceStopEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSystemNameEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSystemNameIn
{
    return KFT_String;
}

- (void)setStatusEqualFromString:(NSString*)aPropVal
{
    self.statusEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.createdAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.createdAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.updatedAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.updatedAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTriggeredAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.triggeredAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTriggeredAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.triggeredAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStartTimeGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.startTimeGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStartTimeLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.startTimeLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerSortValueEqualFromString:(NSString*)aPropVal
{
    self.partnerSortValueEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerSortValueGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.partnerSortValueGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerSortValueLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.partnerSortValueLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setForceStopEqualFromString:(NSString*)aPropVal
{
    self.forceStopEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCuePointBaseFilter"];
    [aParams addIfDefinedKey:@"idEqual" withString:self.idEqual];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
    [aParams addIfDefinedKey:@"cuePointTypeEqual" withString:self.cuePointTypeEqual];
    [aParams addIfDefinedKey:@"cuePointTypeIn" withString:self.cuePointTypeIn];
    [aParams addIfDefinedKey:@"statusEqual" withInt:self.statusEqual];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"entryIdEqual" withString:self.entryIdEqual];
    [aParams addIfDefinedKey:@"entryIdIn" withString:self.entryIdIn];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"triggeredAtGreaterThanOrEqual" withInt:self.triggeredAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"triggeredAtLessThanOrEqual" withInt:self.triggeredAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"tagsLike" withString:self.tagsLike];
    [aParams addIfDefinedKey:@"tagsMultiLikeOr" withString:self.tagsMultiLikeOr];
    [aParams addIfDefinedKey:@"tagsMultiLikeAnd" withString:self.tagsMultiLikeAnd];
    [aParams addIfDefinedKey:@"startTimeGreaterThanOrEqual" withInt:self.startTimeGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"startTimeLessThanOrEqual" withInt:self.startTimeLessThanOrEqual];
    [aParams addIfDefinedKey:@"userIdEqual" withString:self.userIdEqual];
    [aParams addIfDefinedKey:@"userIdIn" withString:self.userIdIn];
    [aParams addIfDefinedKey:@"partnerSortValueEqual" withInt:self.partnerSortValueEqual];
    [aParams addIfDefinedKey:@"partnerSortValueIn" withString:self.partnerSortValueIn];
    [aParams addIfDefinedKey:@"partnerSortValueGreaterThanOrEqual" withInt:self.partnerSortValueGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"partnerSortValueLessThanOrEqual" withInt:self.partnerSortValueLessThanOrEqual];
    [aParams addIfDefinedKey:@"forceStopEqual" withInt:self.forceStopEqual];
    [aParams addIfDefinedKey:@"systemNameEqual" withString:self.systemNameEqual];
    [aParams addIfDefinedKey:@"systemNameIn" withString:self.systemNameIn];
}

- (void)dealloc
{
    [self->_idEqual release];
    [self->_idIn release];
    [self->_cuePointTypeEqual release];
    [self->_cuePointTypeIn release];
    [self->_statusIn release];
    [self->_entryIdEqual release];
    [self->_entryIdIn release];
    [self->_tagsLike release];
    [self->_tagsMultiLikeOr release];
    [self->_tagsMultiLikeAnd release];
    [self->_userIdEqual release];
    [self->_userIdIn release];
    [self->_partnerSortValueIn release];
    [self->_systemNameEqual release];
    [self->_systemNameIn release];
    [super dealloc];
}

@end

@implementation KalturaCuePointFilter
@synthesize freeText = _freeText;
@synthesize userIdEqualCurrent = _userIdEqualCurrent;
@synthesize userIdCurrent = _userIdCurrent;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_userIdEqualCurrent = KALTURA_UNDEF_INT;
    self->_userIdCurrent = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfFreeText
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserIdEqualCurrent
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUserIdCurrent
{
    return KFT_Int;
}

- (void)setUserIdEqualCurrentFromString:(NSString*)aPropVal
{
    self.userIdEqualCurrent = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUserIdCurrentFromString:(NSString*)aPropVal
{
    self.userIdCurrent = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCuePointFilter"];
    [aParams addIfDefinedKey:@"freeText" withString:self.freeText];
    [aParams addIfDefinedKey:@"userIdEqualCurrent" withInt:self.userIdEqualCurrent];
    [aParams addIfDefinedKey:@"userIdCurrent" withInt:self.userIdCurrent];
}

- (void)dealloc
{
    [self->_freeText release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaCuePointService
- (KalturaCuePoint*)addWithCuePoint:(KalturaCuePoint*)aCuePoint
{
    [self.client.params addIfDefinedKey:@"cuePoint" withObject:aCuePoint];
    return [self.client queueObjectService:@"cuepoint_cuepoint" withAction:@"add" withExpectedType:@"KalturaCuePoint"];
}

- (KalturaCuePointListResponse*)addFromBulkWithFileData:(NSString*)aFileData
{
    [self.client.params addIfDefinedKey:@"fileData" withFileName:aFileData];
    return [self.client queueObjectService:@"cuepoint_cuepoint" withAction:@"addFromBulk" withExpectedType:@"KalturaCuePointListResponse"];
}

- (KalturaCuePoint*)cloneWithId:(NSString*)aId withEntryId:(NSString*)aEntryId
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client.params addIfDefinedKey:@"entryId" withString:aEntryId];
    return [self.client queueObjectService:@"cuepoint_cuepoint" withAction:@"clone" withExpectedType:@"KalturaCuePoint"];
}

- (int)countWithFilter:(KalturaCuePointFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueIntService:@"cuepoint_cuepoint" withAction:@"count"];
}

- (int)count
{
    return [self countWithFilter:nil];
}

- (void)deleteWithId:(NSString*)aId
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client queueVoidService:@"cuepoint_cuepoint" withAction:@"delete"];
}

- (KalturaCuePoint*)getWithId:(NSString*)aId
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    return [self.client queueObjectService:@"cuepoint_cuepoint" withAction:@"get" withExpectedType:@"KalturaCuePoint"];
}

- (KalturaCuePointListResponse*)listWithFilter:(KalturaCuePointFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"cuepoint_cuepoint" withAction:@"list" withExpectedType:@"KalturaCuePointListResponse"];
}

- (KalturaCuePointListResponse*)listWithFilter:(KalturaCuePointFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaCuePointListResponse*)list
{
    return [self listWithFilter:nil];
}

- (NSString*)serveBulkWithFilter:(KalturaCuePointFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueServeService:@"cuepoint_cuepoint" withAction:@"serveBulk"];
}

- (NSString*)serveBulkWithFilter:(KalturaCuePointFilter*)aFilter
{
    return [self serveBulkWithFilter:aFilter withPager:nil];
}

- (NSString*)serveBulk
{
    return [self serveBulkWithFilter:nil];
}

- (KalturaCuePoint*)updateWithId:(NSString*)aId withCuePoint:(KalturaCuePoint*)aCuePoint
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client.params addIfDefinedKey:@"cuePoint" withObject:aCuePoint];
    return [self.client queueObjectService:@"cuepoint_cuepoint" withAction:@"update" withExpectedType:@"KalturaCuePoint"];
}

- (KalturaCuePoint*)updateCuePointsTimesWithId:(NSString*)aId withStartTime:(int)aStartTime withEndTime:(int)aEndTime
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client.params addIfDefinedKey:@"startTime" withInt:aStartTime];
    [self.client.params addIfDefinedKey:@"endTime" withInt:aEndTime];
    return [self.client queueObjectService:@"cuepoint_cuepoint" withAction:@"updateCuePointsTimes" withExpectedType:@"KalturaCuePoint"];
}

- (KalturaCuePoint*)updateCuePointsTimesWithId:(NSString*)aId withStartTime:(int)aStartTime
{
    return [self updateCuePointsTimesWithId:aId withStartTime:aStartTime withEndTime:KALTURA_UNDEF_INT];
}

- (void)updateStatusWithId:(NSString*)aId withStatus:(int)aStatus
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client.params addIfDefinedKey:@"status" withInt:aStatus];
    [self.client queueVoidService:@"cuepoint_cuepoint" withAction:@"updateStatus"];
}

@end

@implementation KalturaCuePointClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaCuePointService*)cuePoint
{
    if (self->_cuePoint == nil)
    	self->_cuePoint = [[KalturaCuePointService alloc] initWithClient:self.client];
    return self->_cuePoint;
}

- (void)dealloc
{
    [self->_cuePoint release];
	[super dealloc];
}

@end

