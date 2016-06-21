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
#import "KalturaScheduleClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaScheduleEventClassificationType
+ (int)PUBLIC_EVENT
{
    return 1;
}
+ (int)PRIVATE_EVENT
{
    return 2;
}
+ (int)CONFIDENTIAL_EVENT
{
    return 3;
}
@end

@implementation KalturaScheduleEventRecurrenceType
+ (int)NONE
{
    return 0;
}
+ (int)RECURRING
{
    return 1;
}
+ (int)RECURRENCE
{
    return 2;
}
@end

@implementation KalturaScheduleEventStatus
+ (int)CANCELLED
{
    return 1;
}
+ (int)ACTIVE
{
    return 2;
}
+ (int)DELETED
{
    return 3;
}
@end

@implementation KalturaScheduleEventType
+ (int)RECORD
{
    return 1;
}
+ (int)LIVE_STREAM
{
    return 2;
}
@end

@implementation KalturaScheduleResourceStatus
+ (int)DISABLED
{
    return 1;
}
+ (int)ACTIVE
{
    return 2;
}
+ (int)DELETED
{
    return 3;
}
@end

@implementation KalturaCameraScheduleResourceOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaLiveEntryScheduleResourceOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaLocationScheduleResourceOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaScheduleEventRecurrenceDay
+ (NSString*)FRIDAY
{
    return @"FR";
}
+ (NSString*)MONDAY
{
    return @"MO";
}
+ (NSString*)SATURDAY
{
    return @"SA";
}
+ (NSString*)SUNDAY
{
    return @"SU";
}
+ (NSString*)THURSDAY
{
    return @"TH";
}
+ (NSString*)TUESDAY
{
    return @"TU";
}
+ (NSString*)WEDNESDAY
{
    return @"WE";
}
@end

@implementation KalturaScheduleEventRecurrenceFrequency
+ (NSString*)DAILY
{
    return @"days";
}
+ (NSString*)HOURLY
{
    return @"hours";
}
+ (NSString*)MINUTELY
{
    return @"minutes";
}
+ (NSString*)MONTHLY
{
    return @"months";
}
+ (NSString*)SECONDLY
{
    return @"seconds";
}
+ (NSString*)WEEKLY
{
    return @"weeks";
}
+ (NSString*)YEARLY
{
    return @"years";
}
@end

@implementation KalturaScheduleEventResourceOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaScheduleResourceOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaScheduleEventRecurrence
@synthesize name = _name;
@synthesize frequency = _frequency;
@synthesize until = _until;
@synthesize count = _count;
@synthesize interval = _interval;
@synthesize bySecond = _bySecond;
@synthesize byMinute = _byMinute;
@synthesize byHour = _byHour;
@synthesize byDay = _byDay;
@synthesize byMonthDay = _byMonthDay;
@synthesize byYearDay = _byYearDay;
@synthesize byWeekNumber = _byWeekNumber;
@synthesize byMonth = _byMonth;
@synthesize byOffset = _byOffset;
@synthesize weekStartDay = _weekStartDay;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_until = KALTURA_UNDEF_INT;
    self->_count = KALTURA_UNDEF_INT;
    self->_interval = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFrequency
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUntil
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfInterval
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfBySecond
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfByMinute
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfByHour
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfByDay
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfByMonthDay
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfByYearDay
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfByWeekNumber
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfByMonth
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfByOffset
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfWeekStartDay
{
    return KFT_String;
}

- (void)setUntilFromString:(NSString*)aPropVal
{
    self.until = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCountFromString:(NSString*)aPropVal
{
    self.count = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIntervalFromString:(NSString*)aPropVal
{
    self.interval = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleEventRecurrence"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"frequency" withString:self.frequency];
    [aParams addIfDefinedKey:@"until" withInt:self.until];
    [aParams addIfDefinedKey:@"count" withInt:self.count];
    [aParams addIfDefinedKey:@"interval" withInt:self.interval];
    [aParams addIfDefinedKey:@"bySecond" withString:self.bySecond];
    [aParams addIfDefinedKey:@"byMinute" withString:self.byMinute];
    [aParams addIfDefinedKey:@"byHour" withString:self.byHour];
    [aParams addIfDefinedKey:@"byDay" withString:self.byDay];
    [aParams addIfDefinedKey:@"byMonthDay" withString:self.byMonthDay];
    [aParams addIfDefinedKey:@"byYearDay" withString:self.byYearDay];
    [aParams addIfDefinedKey:@"byWeekNumber" withString:self.byWeekNumber];
    [aParams addIfDefinedKey:@"byMonth" withString:self.byMonth];
    [aParams addIfDefinedKey:@"byOffset" withString:self.byOffset];
    [aParams addIfDefinedKey:@"weekStartDay" withString:self.weekStartDay];
}

- (void)dealloc
{
    [self->_name release];
    [self->_frequency release];
    [self->_bySecond release];
    [self->_byMinute release];
    [self->_byHour release];
    [self->_byDay release];
    [self->_byMonthDay release];
    [self->_byYearDay release];
    [self->_byWeekNumber release];
    [self->_byMonth release];
    [self->_byOffset release];
    [self->_weekStartDay release];
    [super dealloc];
}

@end

@interface KalturaScheduleEvent()
@property (nonatomic,assign) int id;
@property (nonatomic,assign) int partnerId;
@property (nonatomic,assign) int parentId;
@property (nonatomic,assign) int status;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@end

@implementation KalturaScheduleEvent
@synthesize id = _id;
@synthesize partnerId = _partnerId;
@synthesize parentId = _parentId;
@synthesize summary = _summary;
@synthesize description = _description;
@synthesize status = _status;
@synthesize startDate = _startDate;
@synthesize endDate = _endDate;
@synthesize referenceId = _referenceId;
@synthesize classificationType = _classificationType;
@synthesize geoLatitude = _geoLatitude;
@synthesize geoLongitude = _geoLongitude;
@synthesize location = _location;
@synthesize organizer = _organizer;
@synthesize ownerId = _ownerId;
@synthesize priority = _priority;
@synthesize sequence = _sequence;
@synthesize recurrenceType = _recurrenceType;
@synthesize duration = _duration;
@synthesize contact = _contact;
@synthesize comment = _comment;
@synthesize tags = _tags;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@synthesize recurrence = _recurrence;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_parentId = KALTURA_UNDEF_INT;
    self->_status = KALTURA_UNDEF_INT;
    self->_startDate = KALTURA_UNDEF_INT;
    self->_endDate = KALTURA_UNDEF_INT;
    self->_classificationType = KALTURA_UNDEF_INT;
    self->_geoLatitude = KALTURA_UNDEF_FLOAT;
    self->_geoLongitude = KALTURA_UNDEF_FLOAT;
    self->_priority = KALTURA_UNDEF_INT;
    self->_sequence = KALTURA_UNDEF_INT;
    self->_recurrenceType = KALTURA_UNDEF_INT;
    self->_duration = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    self->_updatedAt = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfParentId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSummary
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStartDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfReferenceId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfClassificationType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfGeoLatitude
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfGeoLongitude
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfLocation
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOrganizer
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOwnerId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPriority
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSequence
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRecurrenceType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDuration
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfContact
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfComment
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTags
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRecurrence
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfRecurrence
{
    return @"KalturaScheduleEventRecurrence";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setParentIdFromString:(NSString*)aPropVal
{
    self.parentId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStartDateFromString:(NSString*)aPropVal
{
    self.startDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateFromString:(NSString*)aPropVal
{
    self.endDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setClassificationTypeFromString:(NSString*)aPropVal
{
    self.classificationType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setGeoLatitudeFromString:(NSString*)aPropVal
{
    self.geoLatitude = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setGeoLongitudeFromString:(NSString*)aPropVal
{
    self.geoLongitude = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setPriorityFromString:(NSString*)aPropVal
{
    self.priority = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSequenceFromString:(NSString*)aPropVal
{
    self.sequence = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setRecurrenceTypeFromString:(NSString*)aPropVal
{
    self.recurrenceType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDurationFromString:(NSString*)aPropVal
{
    self.duration = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtFromString:(NSString*)aPropVal
{
    self.updatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleEvent"];
    [aParams addIfDefinedKey:@"summary" withString:self.summary];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"startDate" withInt:self.startDate];
    [aParams addIfDefinedKey:@"endDate" withInt:self.endDate];
    [aParams addIfDefinedKey:@"referenceId" withString:self.referenceId];
    [aParams addIfDefinedKey:@"classificationType" withInt:self.classificationType];
    [aParams addIfDefinedKey:@"geoLatitude" withFloat:self.geoLatitude];
    [aParams addIfDefinedKey:@"geoLongitude" withFloat:self.geoLongitude];
    [aParams addIfDefinedKey:@"location" withString:self.location];
    [aParams addIfDefinedKey:@"organizer" withString:self.organizer];
    [aParams addIfDefinedKey:@"ownerId" withString:self.ownerId];
    [aParams addIfDefinedKey:@"priority" withInt:self.priority];
    [aParams addIfDefinedKey:@"sequence" withInt:self.sequence];
    [aParams addIfDefinedKey:@"recurrenceType" withInt:self.recurrenceType];
    [aParams addIfDefinedKey:@"duration" withInt:self.duration];
    [aParams addIfDefinedKey:@"contact" withString:self.contact];
    [aParams addIfDefinedKey:@"comment" withString:self.comment];
    [aParams addIfDefinedKey:@"tags" withString:self.tags];
    [aParams addIfDefinedKey:@"recurrence" withObject:self.recurrence];
}

- (void)dealloc
{
    [self->_summary release];
    [self->_description release];
    [self->_referenceId release];
    [self->_location release];
    [self->_organizer release];
    [self->_ownerId release];
    [self->_contact release];
    [self->_comment release];
    [self->_tags release];
    [self->_recurrence release];
    [super dealloc];
}

@end

@interface KalturaScheduleEventResource()
@property (nonatomic,assign) int partnerId;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@end

@implementation KalturaScheduleEventResource
@synthesize eventId = _eventId;
@synthesize resourceId = _resourceId;
@synthesize partnerId = _partnerId;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_eventId = KALTURA_UNDEF_INT;
    self->_resourceId = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    self->_updatedAt = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfEventId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfResourceId
{
    return KFT_Int;
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

- (void)setEventIdFromString:(NSString*)aPropVal
{
    self.eventId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setResourceIdFromString:(NSString*)aPropVal
{
    self.resourceId = [KalturaSimpleTypeParser parseInt:aPropVal];
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

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleEventResource"];
    [aParams addIfDefinedKey:@"eventId" withInt:self.eventId];
    [aParams addIfDefinedKey:@"resourceId" withInt:self.resourceId];
}

@end

@interface KalturaScheduleResource()
@property (nonatomic,assign) int id;
@property (nonatomic,assign) int partnerId;
@property (nonatomic,assign) int status;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@end

@implementation KalturaScheduleResource
@synthesize id = _id;
@synthesize parentId = _parentId;
@synthesize partnerId = _partnerId;
@synthesize name = _name;
@synthesize systemName = _systemName;
@synthesize description = _description;
@synthesize status = _status;
@synthesize tags = _tags;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_parentId = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_status = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    self->_updatedAt = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfParentId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSystemName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTags
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAt
{
    return KFT_Int;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setParentIdFromString:(NSString*)aPropVal
{
    self.parentId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtFromString:(NSString*)aPropVal
{
    self.updatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleResource"];
    [aParams addIfDefinedKey:@"parentId" withInt:self.parentId];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"systemName" withString:self.systemName];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"tags" withString:self.tags];
}

- (void)dealloc
{
    [self->_name release];
    [self->_systemName release];
    [self->_description release];
    [self->_tags release];
    [super dealloc];
}

@end

@implementation KalturaCameraScheduleResource
@synthesize streamUrl = _streamUrl;

- (KalturaFieldType)getTypeOfStreamUrl
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCameraScheduleResource"];
    [aParams addIfDefinedKey:@"streamUrl" withString:self.streamUrl];
}

- (void)dealloc
{
    [self->_streamUrl release];
    [super dealloc];
}

@end

@implementation KalturaEntryScheduleEvent
@synthesize templateEntryId = _templateEntryId;
@synthesize entryIds = _entryIds;
@synthesize categoryIds = _categoryIds;

- (KalturaFieldType)getTypeOfTemplateEntryId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEntryIds
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCategoryIds
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEntryScheduleEvent"];
    [aParams addIfDefinedKey:@"templateEntryId" withString:self.templateEntryId];
    [aParams addIfDefinedKey:@"entryIds" withString:self.entryIds];
    [aParams addIfDefinedKey:@"categoryIds" withString:self.categoryIds];
}

- (void)dealloc
{
    [self->_templateEntryId release];
    [self->_entryIds release];
    [self->_categoryIds release];
    [super dealloc];
}

@end

@implementation KalturaLiveEntryScheduleResource
@synthesize entryId = _entryId;

- (KalturaFieldType)getTypeOfEntryId
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLiveEntryScheduleResource"];
    [aParams addIfDefinedKey:@"entryId" withString:self.entryId];
}

- (void)dealloc
{
    [self->_entryId release];
    [super dealloc];
}

@end

@implementation KalturaLocationScheduleResource
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLocationScheduleResource"];
}

@end

@interface KalturaScheduleEventListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaScheduleEventListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaScheduleEvent";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleEventListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaScheduleEventResourceListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaScheduleEventResourceListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaScheduleEventResource";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleEventResourceListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaScheduleResourceListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaScheduleResourceListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaScheduleResource";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleResourceListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaLiveStreamScheduleEvent
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLiveStreamScheduleEvent"];
}

@end

@implementation KalturaRecordScheduleEvent
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRecordScheduleEvent"];
}

@end

@implementation KalturaScheduleEventBaseFilter
@synthesize idEqual = _idEqual;
@synthesize idIn = _idIn;
@synthesize idNotIn = _idNotIn;
@synthesize parentIdEqual = _parentIdEqual;
@synthesize parentIdIn = _parentIdIn;
@synthesize parentIdNotIn = _parentIdNotIn;
@synthesize statusEqual = _statusEqual;
@synthesize statusIn = _statusIn;
@synthesize startDateGreaterThanOrEqual = _startDateGreaterThanOrEqual;
@synthesize startDateLessThanOrEqual = _startDateLessThanOrEqual;
@synthesize endDateGreaterThanOrEqual = _endDateGreaterThanOrEqual;
@synthesize endDateLessThanOrEqual = _endDateLessThanOrEqual;
@synthesize referenceIdEqual = _referenceIdEqual;
@synthesize referenceIdIn = _referenceIdIn;
@synthesize ownerIdEqual = _ownerIdEqual;
@synthesize ownerIdIn = _ownerIdIn;
@synthesize priorityEqual = _priorityEqual;
@synthesize priorityIn = _priorityIn;
@synthesize priorityGreaterThanOrEqual = _priorityGreaterThanOrEqual;
@synthesize priorityLessThanOrEqual = _priorityLessThanOrEqual;
@synthesize recurrenceTypeEqual = _recurrenceTypeEqual;
@synthesize recurrenceTypeIn = _recurrenceTypeIn;
@synthesize tagsLike = _tagsLike;
@synthesize tagsMultiLikeOr = _tagsMultiLikeOr;
@synthesize tagsMultiLikeAnd = _tagsMultiLikeAnd;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_idEqual = KALTURA_UNDEF_INT;
    self->_parentIdEqual = KALTURA_UNDEF_INT;
    self->_statusEqual = KALTURA_UNDEF_INT;
    self->_startDateGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_startDateLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_endDateGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_endDateLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_priorityEqual = KALTURA_UNDEF_INT;
    self->_priorityGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_priorityLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_recurrenceTypeEqual = KALTURA_UNDEF_INT;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtLessThanOrEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIdNotIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfParentIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfParentIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfParentIdNotIn
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

- (KalturaFieldType)getTypeOfStartDateGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStartDateLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDateGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDateLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfReferenceIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfReferenceIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOwnerIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOwnerIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPriorityEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPriorityIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPriorityGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPriorityLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRecurrenceTypeEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRecurrenceTypeIn
{
    return KFT_String;
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

- (void)setIdEqualFromString:(NSString*)aPropVal
{
    self.idEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setParentIdEqualFromString:(NSString*)aPropVal
{
    self.parentIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusEqualFromString:(NSString*)aPropVal
{
    self.statusEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStartDateGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.startDateGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStartDateLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.startDateLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.endDateGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.endDateLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPriorityEqualFromString:(NSString*)aPropVal
{
    self.priorityEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPriorityGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.priorityGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPriorityLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.priorityLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setRecurrenceTypeEqualFromString:(NSString*)aPropVal
{
    self.recurrenceTypeEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
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

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleEventBaseFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
    [aParams addIfDefinedKey:@"idNotIn" withString:self.idNotIn];
    [aParams addIfDefinedKey:@"parentIdEqual" withInt:self.parentIdEqual];
    [aParams addIfDefinedKey:@"parentIdIn" withString:self.parentIdIn];
    [aParams addIfDefinedKey:@"parentIdNotIn" withString:self.parentIdNotIn];
    [aParams addIfDefinedKey:@"statusEqual" withInt:self.statusEqual];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"startDateGreaterThanOrEqual" withInt:self.startDateGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"startDateLessThanOrEqual" withInt:self.startDateLessThanOrEqual];
    [aParams addIfDefinedKey:@"endDateGreaterThanOrEqual" withInt:self.endDateGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"endDateLessThanOrEqual" withInt:self.endDateLessThanOrEqual];
    [aParams addIfDefinedKey:@"referenceIdEqual" withString:self.referenceIdEqual];
    [aParams addIfDefinedKey:@"referenceIdIn" withString:self.referenceIdIn];
    [aParams addIfDefinedKey:@"ownerIdEqual" withString:self.ownerIdEqual];
    [aParams addIfDefinedKey:@"ownerIdIn" withString:self.ownerIdIn];
    [aParams addIfDefinedKey:@"priorityEqual" withInt:self.priorityEqual];
    [aParams addIfDefinedKey:@"priorityIn" withString:self.priorityIn];
    [aParams addIfDefinedKey:@"priorityGreaterThanOrEqual" withInt:self.priorityGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"priorityLessThanOrEqual" withInt:self.priorityLessThanOrEqual];
    [aParams addIfDefinedKey:@"recurrenceTypeEqual" withInt:self.recurrenceTypeEqual];
    [aParams addIfDefinedKey:@"recurrenceTypeIn" withString:self.recurrenceTypeIn];
    [aParams addIfDefinedKey:@"tagsLike" withString:self.tagsLike];
    [aParams addIfDefinedKey:@"tagsMultiLikeOr" withString:self.tagsMultiLikeOr];
    [aParams addIfDefinedKey:@"tagsMultiLikeAnd" withString:self.tagsMultiLikeAnd];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
}

- (void)dealloc
{
    [self->_idIn release];
    [self->_idNotIn release];
    [self->_parentIdIn release];
    [self->_parentIdNotIn release];
    [self->_statusIn release];
    [self->_referenceIdEqual release];
    [self->_referenceIdIn release];
    [self->_ownerIdEqual release];
    [self->_ownerIdIn release];
    [self->_priorityIn release];
    [self->_recurrenceTypeIn release];
    [self->_tagsLike release];
    [self->_tagsMultiLikeOr release];
    [self->_tagsMultiLikeAnd release];
    [super dealloc];
}

@end

@implementation KalturaScheduleEventResourceBaseFilter
@synthesize eventIdEqual = _eventIdEqual;
@synthesize eventIdIn = _eventIdIn;
@synthesize resourceIdEqual = _resourceIdEqual;
@synthesize resourceIdIn = _resourceIdIn;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_eventIdEqual = KALTURA_UNDEF_INT;
    self->_resourceIdEqual = KALTURA_UNDEF_INT;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtLessThanOrEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfEventIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEventIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfResourceIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfResourceIdIn
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

- (void)setEventIdEqualFromString:(NSString*)aPropVal
{
    self.eventIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setResourceIdEqualFromString:(NSString*)aPropVal
{
    self.resourceIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
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

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleEventResourceBaseFilter"];
    [aParams addIfDefinedKey:@"eventIdEqual" withInt:self.eventIdEqual];
    [aParams addIfDefinedKey:@"eventIdIn" withString:self.eventIdIn];
    [aParams addIfDefinedKey:@"resourceIdEqual" withInt:self.resourceIdEqual];
    [aParams addIfDefinedKey:@"resourceIdIn" withString:self.resourceIdIn];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
}

- (void)dealloc
{
    [self->_eventIdIn release];
    [self->_resourceIdIn release];
    [super dealloc];
}

@end

@implementation KalturaScheduleResourceBaseFilter
@synthesize idEqual = _idEqual;
@synthesize idIn = _idIn;
@synthesize idNotIn = _idNotIn;
@synthesize parentIdEqual = _parentIdEqual;
@synthesize parentIdIn = _parentIdIn;
@synthesize systemNameEqual = _systemNameEqual;
@synthesize systemNameIn = _systemNameIn;
@synthesize statusEqual = _statusEqual;
@synthesize statusIn = _statusIn;
@synthesize tagsLike = _tagsLike;
@synthesize tagsMultiLikeOr = _tagsMultiLikeOr;
@synthesize tagsMultiLikeAnd = _tagsMultiLikeAnd;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_idEqual = KALTURA_UNDEF_INT;
    self->_parentIdEqual = KALTURA_UNDEF_INT;
    self->_statusEqual = KALTURA_UNDEF_INT;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtLessThanOrEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIdNotIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfParentIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfParentIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSystemNameEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSystemNameIn
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

- (void)setIdEqualFromString:(NSString*)aPropVal
{
    self.idEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setParentIdEqualFromString:(NSString*)aPropVal
{
    self.parentIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
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

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleResourceBaseFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
    [aParams addIfDefinedKey:@"idNotIn" withString:self.idNotIn];
    [aParams addIfDefinedKey:@"parentIdEqual" withInt:self.parentIdEqual];
    [aParams addIfDefinedKey:@"parentIdIn" withString:self.parentIdIn];
    [aParams addIfDefinedKey:@"systemNameEqual" withString:self.systemNameEqual];
    [aParams addIfDefinedKey:@"systemNameIn" withString:self.systemNameIn];
    [aParams addIfDefinedKey:@"statusEqual" withInt:self.statusEqual];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"tagsLike" withString:self.tagsLike];
    [aParams addIfDefinedKey:@"tagsMultiLikeOr" withString:self.tagsMultiLikeOr];
    [aParams addIfDefinedKey:@"tagsMultiLikeAnd" withString:self.tagsMultiLikeAnd];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
}

- (void)dealloc
{
    [self->_idIn release];
    [self->_idNotIn release];
    [self->_parentIdIn release];
    [self->_systemNameEqual release];
    [self->_systemNameIn release];
    [self->_statusIn release];
    [self->_tagsLike release];
    [self->_tagsMultiLikeOr release];
    [self->_tagsMultiLikeAnd release];
    [super dealloc];
}

@end

@implementation KalturaScheduleEventResourceFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleEventResourceFilter"];
}

@end

@implementation KalturaScheduleResourceFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaScheduleResourceFilter"];
}

@end

@implementation KalturaCameraScheduleResourceBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCameraScheduleResourceBaseFilter"];
}

@end

@implementation KalturaLiveEntryScheduleResourceBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLiveEntryScheduleResourceBaseFilter"];
}

@end

@implementation KalturaLocationScheduleResourceBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLocationScheduleResourceBaseFilter"];
}

@end

@implementation KalturaCameraScheduleResourceFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCameraScheduleResourceFilter"];
}

@end

@implementation KalturaLiveEntryScheduleResourceFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLiveEntryScheduleResourceFilter"];
}

@end

@implementation KalturaLocationScheduleResourceFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLocationScheduleResourceFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaScheduleEventService
- (KalturaScheduleEvent*)addWithScheduleEvent:(KalturaScheduleEvent*)aScheduleEvent
{
    [self.client.params addIfDefinedKey:@"scheduleEvent" withObject:aScheduleEvent];
    return [self.client queueObjectService:@"schedule_scheduleevent" withAction:@"add" withExpectedType:@"KalturaScheduleEvent"];
}

- (KalturaScheduleEvent*)getWithScheduleEventId:(int)aScheduleEventId
{
    [self.client.params addIfDefinedKey:@"scheduleEventId" withInt:aScheduleEventId];
    return [self.client queueObjectService:@"schedule_scheduleevent" withAction:@"get" withExpectedType:@"KalturaScheduleEvent"];
}

- (KalturaScheduleEvent*)updateWithScheduleEventId:(int)aScheduleEventId withScheduleEvent:(KalturaScheduleEvent*)aScheduleEvent
{
    [self.client.params addIfDefinedKey:@"scheduleEventId" withInt:aScheduleEventId];
    [self.client.params addIfDefinedKey:@"scheduleEvent" withObject:aScheduleEvent];
    return [self.client queueObjectService:@"schedule_scheduleevent" withAction:@"update" withExpectedType:@"KalturaScheduleEvent"];
}

- (KalturaScheduleEvent*)deleteWithScheduleEventId:(int)aScheduleEventId
{
    [self.client.params addIfDefinedKey:@"scheduleEventId" withInt:aScheduleEventId];
    return [self.client queueObjectService:@"schedule_scheduleevent" withAction:@"delete" withExpectedType:@"KalturaScheduleEvent"];
}

- (KalturaScheduleEvent*)cancelWithScheduleEventId:(int)aScheduleEventId
{
    [self.client.params addIfDefinedKey:@"scheduleEventId" withInt:aScheduleEventId];
    return [self.client queueObjectService:@"schedule_scheduleevent" withAction:@"cancel" withExpectedType:@"KalturaScheduleEvent"];
}

- (KalturaScheduleEventListResponse*)listWithFilter:(KalturaScheduleEventFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"schedule_scheduleevent" withAction:@"list" withExpectedType:@"KalturaScheduleEventListResponse"];
}

- (KalturaScheduleEventListResponse*)listWithFilter:(KalturaScheduleEventFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaScheduleEventListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaBulkUpload*)addFromBulkUploadWithFileData:(NSString*)aFileData withBulkUploadData:(KalturaBulkUploadICalJobData*)aBulkUploadData
{
    [self.client.params addIfDefinedKey:@"fileData" withFileName:aFileData];
    [self.client.params addIfDefinedKey:@"bulkUploadData" withObject:aBulkUploadData];
    return [self.client queueObjectService:@"schedule_scheduleevent" withAction:@"addFromBulkUpload" withExpectedType:@"KalturaBulkUpload"];
}

- (KalturaBulkUpload*)addFromBulkUploadWithFileData:(NSString*)aFileData
{
    return [self addFromBulkUploadWithFileData:aFileData withBulkUploadData:nil];
}

@end

@implementation KalturaScheduleResourceService
- (KalturaScheduleResource*)addWithScheduleResource:(KalturaScheduleResource*)aScheduleResource
{
    [self.client.params addIfDefinedKey:@"scheduleResource" withObject:aScheduleResource];
    return [self.client queueObjectService:@"schedule_scheduleresource" withAction:@"add" withExpectedType:@"KalturaScheduleResource"];
}

- (KalturaScheduleResource*)getWithScheduleResourceId:(int)aScheduleResourceId
{
    [self.client.params addIfDefinedKey:@"scheduleResourceId" withInt:aScheduleResourceId];
    return [self.client queueObjectService:@"schedule_scheduleresource" withAction:@"get" withExpectedType:@"KalturaScheduleResource"];
}

- (KalturaScheduleResource*)updateWithScheduleResourceId:(int)aScheduleResourceId withScheduleResource:(KalturaScheduleResource*)aScheduleResource
{
    [self.client.params addIfDefinedKey:@"scheduleResourceId" withInt:aScheduleResourceId];
    [self.client.params addIfDefinedKey:@"scheduleResource" withObject:aScheduleResource];
    return [self.client queueObjectService:@"schedule_scheduleresource" withAction:@"update" withExpectedType:@"KalturaScheduleResource"];
}

- (KalturaScheduleResource*)deleteWithScheduleResourceId:(int)aScheduleResourceId
{
    [self.client.params addIfDefinedKey:@"scheduleResourceId" withInt:aScheduleResourceId];
    return [self.client queueObjectService:@"schedule_scheduleresource" withAction:@"delete" withExpectedType:@"KalturaScheduleResource"];
}

- (KalturaScheduleResourceListResponse*)listWithFilter:(KalturaScheduleResourceFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"schedule_scheduleresource" withAction:@"list" withExpectedType:@"KalturaScheduleResourceListResponse"];
}

- (KalturaScheduleResourceListResponse*)listWithFilter:(KalturaScheduleResourceFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaScheduleResourceListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaBulkUpload*)addFromBulkUploadWithFileData:(NSString*)aFileData withBulkUploadData:(KalturaBulkUploadCsvJobData*)aBulkUploadData
{
    [self.client.params addIfDefinedKey:@"fileData" withFileName:aFileData];
    [self.client.params addIfDefinedKey:@"bulkUploadData" withObject:aBulkUploadData];
    return [self.client queueObjectService:@"schedule_scheduleresource" withAction:@"addFromBulkUpload" withExpectedType:@"KalturaBulkUpload"];
}

- (KalturaBulkUpload*)addFromBulkUploadWithFileData:(NSString*)aFileData
{
    return [self addFromBulkUploadWithFileData:aFileData withBulkUploadData:nil];
}

@end

@implementation KalturaScheduleEventResourceService
- (KalturaScheduleEventResource*)addWithScheduleEventResource:(KalturaScheduleEventResource*)aScheduleEventResource
{
    [self.client.params addIfDefinedKey:@"scheduleEventResource" withObject:aScheduleEventResource];
    return [self.client queueObjectService:@"schedule_scheduleeventresource" withAction:@"add" withExpectedType:@"KalturaScheduleEventResource"];
}

- (KalturaScheduleEventResource*)getWithScheduleEventId:(int)aScheduleEventId withScheduleResourceId:(int)aScheduleResourceId
{
    [self.client.params addIfDefinedKey:@"scheduleEventId" withInt:aScheduleEventId];
    [self.client.params addIfDefinedKey:@"scheduleResourceId" withInt:aScheduleResourceId];
    return [self.client queueObjectService:@"schedule_scheduleeventresource" withAction:@"get" withExpectedType:@"KalturaScheduleEventResource"];
}

- (KalturaScheduleEventResource*)updateWithScheduleEventId:(int)aScheduleEventId withScheduleResourceId:(int)aScheduleResourceId withScheduleEventResource:(KalturaScheduleEventResource*)aScheduleEventResource
{
    [self.client.params addIfDefinedKey:@"scheduleEventId" withInt:aScheduleEventId];
    [self.client.params addIfDefinedKey:@"scheduleResourceId" withInt:aScheduleResourceId];
    [self.client.params addIfDefinedKey:@"scheduleEventResource" withObject:aScheduleEventResource];
    return [self.client queueObjectService:@"schedule_scheduleeventresource" withAction:@"update" withExpectedType:@"KalturaScheduleEventResource"];
}

- (void)deleteWithScheduleEventId:(int)aScheduleEventId withScheduleResourceId:(int)aScheduleResourceId
{
    [self.client.params addIfDefinedKey:@"scheduleEventId" withInt:aScheduleEventId];
    [self.client.params addIfDefinedKey:@"scheduleResourceId" withInt:aScheduleResourceId];
    [self.client queueVoidService:@"schedule_scheduleeventresource" withAction:@"delete"];
}

- (KalturaScheduleEventResourceListResponse*)listWithFilter:(KalturaScheduleEventResourceFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"schedule_scheduleeventresource" withAction:@"list" withExpectedType:@"KalturaScheduleEventResourceListResponse"];
}

- (KalturaScheduleEventResourceListResponse*)listWithFilter:(KalturaScheduleEventResourceFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaScheduleEventResourceListResponse*)list
{
    return [self listWithFilter:nil];
}

@end

