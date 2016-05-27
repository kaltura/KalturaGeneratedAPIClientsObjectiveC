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
@interface KalturaScheduleEventClassificationType : NSObject
+ (int)PUBLIC_EVENT;
+ (int)PRIVATE_EVENT;
+ (int)CONFIDENTIAL_EVENT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventRecurrenceType : NSObject
+ (int)NONE;
+ (int)RECURRING;
+ (int)RECURRENCE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventStatus : NSObject
+ (int)CANCELLED;
+ (int)ACTIVE;
+ (int)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventType : NSObject
+ (int)RECORD;
+ (int)LIVE_STREAM;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleResourceStatus : NSObject
+ (int)DISABLED;
+ (int)ACTIVE;
+ (int)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCameraScheduleResourceOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryScheduleEventOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)END_DATE_ASC;
+ (NSString*)PRIORITY_ASC;
+ (NSString*)START_DATE_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)END_DATE_DESC;
+ (NSString*)PRIORITY_DESC;
+ (NSString*)START_DATE_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLiveEntryScheduleResourceOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLiveStreamScheduleEventOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)END_DATE_ASC;
+ (NSString*)PRIORITY_ASC;
+ (NSString*)START_DATE_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)END_DATE_DESC;
+ (NSString*)PRIORITY_DESC;
+ (NSString*)START_DATE_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLocationScheduleResourceOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRecordScheduleEventOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)END_DATE_ASC;
+ (NSString*)PRIORITY_ASC;
+ (NSString*)START_DATE_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)END_DATE_DESC;
+ (NSString*)PRIORITY_DESC;
+ (NSString*)START_DATE_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)END_DATE_ASC;
+ (NSString*)PRIORITY_ASC;
+ (NSString*)START_DATE_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)END_DATE_DESC;
+ (NSString*)PRIORITY_DESC;
+ (NSString*)START_DATE_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventRecurrenceDay : NSObject
+ (NSString*)FRIDAY;
+ (NSString*)MONDAY;
+ (NSString*)SATURDAY;
+ (NSString*)SUNDAY;
+ (NSString*)THURSDAY;
+ (NSString*)TUESDAY;
+ (NSString*)WEDNESDAY;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventRecurrenceFrequency : NSObject
+ (NSString*)DAILY;
+ (NSString*)HOURLY;
+ (NSString*)MINUTELY;
+ (NSString*)MONTHLY;
+ (NSString*)SECONDLY;
+ (NSString*)WEEKLY;
+ (NSString*)YEARLY;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventResourceOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleResourceOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventRecurrence : KalturaObjectBase
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* frequency;	// enum KalturaScheduleEventRecurrenceFrequency
@property (nonatomic,assign) int until;
@property (nonatomic,assign) int count;
@property (nonatomic,assign) int interval;
// Comma separated numbers between 0 to 59
@property (nonatomic,copy) NSString* bySecond;
// Comma separated numbers between 0 to 59
@property (nonatomic,copy) NSString* byMinute;
// Comma separated numbers between 0 to 23
@property (nonatomic,copy) NSString* byHour;
// Comma separated of KalturaScheduleEventRecurrenceDay
// 	 Each byDay value can also be preceded by a positive (+n) or negative (-n) integer.
// 	 If present, this indicates the nth occurrence of the specific day within the MONTHLY or YEARLY RRULE.
// 	 For example, within a MONTHLY rule, +1MO (or simply 1MO) represents the first Monday within the month, whereas -1MO represents the last Monday of the month.
// 	 If an integer modifier is not present, it means all days of this type within the specified frequency.
// 	 For example, within a MONTHLY rule, MO represents all Mondays within the month.
@property (nonatomic,copy) NSString* byDay;
// Comma separated of numbers between -31 to 31, excluding 0.
// 	 For example, -10 represents the tenth to the last day of the month.
@property (nonatomic,copy) NSString* byMonthDay;
// Comma separated of numbers between -366 to 366, excluding 0.
// 	 For example, -1 represents the last day of the year (December 31st) and -306 represents the 306th to the last day of the year (March 1st).
@property (nonatomic,copy) NSString* byYearDay;
// Comma separated of numbers between -53 to 53, excluding 0.
// 	 This corresponds to weeks according to week numbering.
// 	 A week is defined as a seven day period, starting on the day of the week defined to be the week start.
// 	 Week number one of the calendar year is the first week which contains at least four (4) days in that calendar year.
// 	 This rule part is only valid for YEARLY frequency.
// 	 For example, 3 represents the third week of the year.
@property (nonatomic,copy) NSString* byWeekNumber;
// Comma separated numbers between 1 to 12
@property (nonatomic,copy) NSString* byMonth;
// Comma separated of numbers between -366 to 366, excluding 0.
// 	 Corresponds to the nth occurrence within the set of events specified by the rule.
// 	 It must only be used in conjunction with another byrule part.
// 	 For example "the last work day of the month" could be represented as: frequency=MONTHLY;byDay=MO,TU,WE,TH,FR;byOffset=-1
// 	 Each byOffset value can include a positive (+n) or negative (-n) integer.
// 	 If present, this indicates the nth occurrence of the specific occurrence within the set of events specified by the rule.
@property (nonatomic,copy) NSString* byOffset;
@property (nonatomic,copy) NSString* weekStartDay;	// enum KalturaScheduleEventRecurrenceDay
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfFrequency;
- (KalturaFieldType)getTypeOfUntil;
- (KalturaFieldType)getTypeOfCount;
- (KalturaFieldType)getTypeOfInterval;
- (KalturaFieldType)getTypeOfBySecond;
- (KalturaFieldType)getTypeOfByMinute;
- (KalturaFieldType)getTypeOfByHour;
- (KalturaFieldType)getTypeOfByDay;
- (KalturaFieldType)getTypeOfByMonthDay;
- (KalturaFieldType)getTypeOfByYearDay;
- (KalturaFieldType)getTypeOfByWeekNumber;
- (KalturaFieldType)getTypeOfByMonth;
- (KalturaFieldType)getTypeOfByOffset;
- (KalturaFieldType)getTypeOfWeekStartDay;
- (void)setUntilFromString:(NSString*)aPropVal;
- (void)setCountFromString:(NSString*)aPropVal;
- (void)setIntervalFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEvent : KalturaObjectBase
// Auto-generated unique identifier
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,assign,readonly) int partnerId;
@property (nonatomic,assign,readonly) int parentId;
// Defines a short summary or subject for the event
@property (nonatomic,copy) NSString* summary;
@property (nonatomic,copy) NSString* description;
@property (nonatomic,assign,readonly) int status;	// enum KalturaScheduleEventStatus
@property (nonatomic,assign) int startDate;
@property (nonatomic,assign) int endDate;
@property (nonatomic,copy) NSString* referenceId;
@property (nonatomic,assign) int classificationType;	// enum KalturaScheduleEventClassificationType
// Specifies the global position for the activity
@property (nonatomic,assign) double geoLatitude;
// Specifies the global position for the activity
@property (nonatomic,assign) double geoLongitude;
// Defines the intended venue for the activity
@property (nonatomic,copy) NSString* location;
@property (nonatomic,copy) NSString* organizer;
@property (nonatomic,copy) NSString* ownerId;
// The value for the priority field.
@property (nonatomic,assign) int priority;
// Defines the revision sequence number.
@property (nonatomic,assign) int sequence;
@property (nonatomic,assign) int recurrenceType;	// enum KalturaScheduleEventRecurrenceType, insertonly
// Duration in seconds
@property (nonatomic,assign) int duration;
// Used to represent contact information or alternately a reference to contact information.
@property (nonatomic,copy) NSString* contact;
// Specifies non-processing information intended to provide a comment to the calendar user.
@property (nonatomic,copy) NSString* comment;
@property (nonatomic,copy) NSString* tags;
// Creation date as Unix timestamp (In seconds)
@property (nonatomic,assign,readonly) int createdAt;
// Last update as Unix timestamp (In seconds)
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,retain) KalturaScheduleEventRecurrence* recurrence;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfParentId;
- (KalturaFieldType)getTypeOfSummary;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfStartDate;
- (KalturaFieldType)getTypeOfEndDate;
- (KalturaFieldType)getTypeOfReferenceId;
- (KalturaFieldType)getTypeOfClassificationType;
- (KalturaFieldType)getTypeOfGeoLatitude;
- (KalturaFieldType)getTypeOfGeoLongitude;
- (KalturaFieldType)getTypeOfLocation;
- (KalturaFieldType)getTypeOfOrganizer;
- (KalturaFieldType)getTypeOfOwnerId;
- (KalturaFieldType)getTypeOfPriority;
- (KalturaFieldType)getTypeOfSequence;
- (KalturaFieldType)getTypeOfRecurrenceType;
- (KalturaFieldType)getTypeOfDuration;
- (KalturaFieldType)getTypeOfContact;
- (KalturaFieldType)getTypeOfComment;
- (KalturaFieldType)getTypeOfTags;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfRecurrence;
- (NSString*)getObjectTypeOfRecurrence;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setParentIdFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
- (void)setStartDateFromString:(NSString*)aPropVal;
- (void)setEndDateFromString:(NSString*)aPropVal;
- (void)setClassificationTypeFromString:(NSString*)aPropVal;
- (void)setGeoLatitudeFromString:(NSString*)aPropVal;
- (void)setGeoLongitudeFromString:(NSString*)aPropVal;
- (void)setPriorityFromString:(NSString*)aPropVal;
- (void)setSequenceFromString:(NSString*)aPropVal;
- (void)setRecurrenceTypeFromString:(NSString*)aPropVal;
- (void)setDurationFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventResource : KalturaObjectBase
@property (nonatomic,assign) int eventId;	// insertonly
@property (nonatomic,assign) int resourceId;	// insertonly
@property (nonatomic,assign,readonly) int partnerId;
// Creation date as Unix timestamp (In seconds)
@property (nonatomic,assign,readonly) int createdAt;
// Last update as Unix timestamp (In seconds)
@property (nonatomic,assign,readonly) int updatedAt;
- (KalturaFieldType)getTypeOfEventId;
- (KalturaFieldType)getTypeOfResourceId;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (void)setEventIdFromString:(NSString*)aPropVal;
- (void)setResourceIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleResource : KalturaObjectBase
// Auto-generated unique identifier
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,assign) int parentId;
@property (nonatomic,assign,readonly) int partnerId;
// Defines a short name
@property (nonatomic,copy) NSString* name;
// Defines a unique system-name
@property (nonatomic,copy) NSString* systemName;
@property (nonatomic,copy) NSString* description;
@property (nonatomic,assign,readonly) int status;	// enum KalturaScheduleResourceStatus
@property (nonatomic,copy) NSString* tags;
// Creation date as Unix timestamp (In seconds)
@property (nonatomic,assign,readonly) int createdAt;
// Last update as Unix timestamp (In seconds)
@property (nonatomic,assign,readonly) int updatedAt;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfParentId;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfSystemName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfTags;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setParentIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCameraScheduleResource : KalturaScheduleResource
// URL of the stream
@property (nonatomic,copy) NSString* streamUrl;
- (KalturaFieldType)getTypeOfStreamUrl;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryScheduleEvent : KalturaScheduleEvent
// Entry to be used as template during content ingestion
@property (nonatomic,copy) NSString* templateEntryId;
// Entries that associated with this event
@property (nonatomic,copy) NSString* entryIds;
// Categories that associated with this event
@property (nonatomic,copy) NSString* categoryIds;
- (KalturaFieldType)getTypeOfTemplateEntryId;
- (KalturaFieldType)getTypeOfEntryIds;
- (KalturaFieldType)getTypeOfCategoryIds;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLiveEntryScheduleResource : KalturaScheduleResource
@property (nonatomic,copy) NSString* entryId;
- (KalturaFieldType)getTypeOfEntryId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLocationScheduleResource : KalturaScheduleResource
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaScheduleEvent elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventResourceListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaScheduleEventResource elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleResourceListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaScheduleResource elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLiveStreamScheduleEvent : KalturaEntryScheduleEvent
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRecordScheduleEvent : KalturaEntryScheduleEvent
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventBaseFilter : KalturaRelatedFilter
@property (nonatomic,assign) int idEqual;
@property (nonatomic,copy) NSString* idIn;
@property (nonatomic,copy) NSString* idNotIn;
@property (nonatomic,assign) int parentIdEqual;
@property (nonatomic,copy) NSString* parentIdIn;
@property (nonatomic,copy) NSString* parentIdNotIn;
@property (nonatomic,assign) int statusEqual;	// enum KalturaScheduleEventStatus
@property (nonatomic,copy) NSString* statusIn;
@property (nonatomic,assign) int startDateGreaterThanOrEqual;
@property (nonatomic,assign) int startDateLessThanOrEqual;
@property (nonatomic,assign) int endDateGreaterThanOrEqual;
@property (nonatomic,assign) int endDateLessThanOrEqual;
@property (nonatomic,copy) NSString* referenceIdEqual;
@property (nonatomic,copy) NSString* referenceIdIn;
@property (nonatomic,copy) NSString* ownerIdEqual;
@property (nonatomic,copy) NSString* ownerIdIn;
@property (nonatomic,assign) int priorityEqual;
@property (nonatomic,copy) NSString* priorityIn;
@property (nonatomic,assign) int priorityGreaterThanOrEqual;
@property (nonatomic,assign) int priorityLessThanOrEqual;
@property (nonatomic,assign) int recurrenceTypeEqual;	// enum KalturaScheduleEventRecurrenceType
@property (nonatomic,copy) NSString* recurrenceTypeIn;
@property (nonatomic,copy) NSString* tagsLike;
@property (nonatomic,copy) NSString* tagsMultiLikeOr;
@property (nonatomic,copy) NSString* tagsMultiLikeAnd;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfIdIn;
- (KalturaFieldType)getTypeOfIdNotIn;
- (KalturaFieldType)getTypeOfParentIdEqual;
- (KalturaFieldType)getTypeOfParentIdIn;
- (KalturaFieldType)getTypeOfParentIdNotIn;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfStartDateGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfStartDateLessThanOrEqual;
- (KalturaFieldType)getTypeOfEndDateGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfEndDateLessThanOrEqual;
- (KalturaFieldType)getTypeOfReferenceIdEqual;
- (KalturaFieldType)getTypeOfReferenceIdIn;
- (KalturaFieldType)getTypeOfOwnerIdEqual;
- (KalturaFieldType)getTypeOfOwnerIdIn;
- (KalturaFieldType)getTypeOfPriorityEqual;
- (KalturaFieldType)getTypeOfPriorityIn;
- (KalturaFieldType)getTypeOfPriorityGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfPriorityLessThanOrEqual;
- (KalturaFieldType)getTypeOfRecurrenceTypeEqual;
- (KalturaFieldType)getTypeOfRecurrenceTypeIn;
- (KalturaFieldType)getTypeOfTagsLike;
- (KalturaFieldType)getTypeOfTagsMultiLikeOr;
- (KalturaFieldType)getTypeOfTagsMultiLikeAnd;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (void)setIdEqualFromString:(NSString*)aPropVal;
- (void)setParentIdEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
- (void)setStartDateGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setStartDateLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setEndDateGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setEndDateLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setPriorityEqualFromString:(NSString*)aPropVal;
- (void)setPriorityGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setPriorityLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setRecurrenceTypeEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventResourceBaseFilter : KalturaRelatedFilter
@property (nonatomic,assign) int eventIdEqual;
@property (nonatomic,copy) NSString* eventIdIn;
@property (nonatomic,assign) int resourceIdEqual;
@property (nonatomic,copy) NSString* resourceIdIn;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfEventIdEqual;
- (KalturaFieldType)getTypeOfEventIdIn;
- (KalturaFieldType)getTypeOfResourceIdEqual;
- (KalturaFieldType)getTypeOfResourceIdIn;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (void)setEventIdEqualFromString:(NSString*)aPropVal;
- (void)setResourceIdEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleResourceBaseFilter : KalturaRelatedFilter
@property (nonatomic,assign) int idEqual;
@property (nonatomic,copy) NSString* idIn;
@property (nonatomic,copy) NSString* idNotIn;
@property (nonatomic,assign) int parentIdEqual;
@property (nonatomic,copy) NSString* parentIdIn;
@property (nonatomic,copy) NSString* systemNameEqual;
@property (nonatomic,copy) NSString* systemNameIn;
@property (nonatomic,assign) int statusEqual;	// enum KalturaScheduleResourceStatus
@property (nonatomic,copy) NSString* statusIn;
@property (nonatomic,copy) NSString* tagsLike;
@property (nonatomic,copy) NSString* tagsMultiLikeOr;
@property (nonatomic,copy) NSString* tagsMultiLikeAnd;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfIdIn;
- (KalturaFieldType)getTypeOfIdNotIn;
- (KalturaFieldType)getTypeOfParentIdEqual;
- (KalturaFieldType)getTypeOfParentIdIn;
- (KalturaFieldType)getTypeOfSystemNameEqual;
- (KalturaFieldType)getTypeOfSystemNameIn;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfTagsLike;
- (KalturaFieldType)getTypeOfTagsMultiLikeOr;
- (KalturaFieldType)getTypeOfTagsMultiLikeAnd;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (void)setIdEqualFromString:(NSString*)aPropVal;
- (void)setParentIdEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventFilter : KalturaScheduleEventBaseFilter
@property (nonatomic,copy) NSString* resourceIdsLike;
@property (nonatomic,copy) NSString* resourceIdsMultiLikeOr;
@property (nonatomic,copy) NSString* resourceIdsMultiLikeAnd;
@property (nonatomic,copy) NSString* parentResourceIdsLike;
@property (nonatomic,copy) NSString* parentResourceIdsMultiLikeOr;
@property (nonatomic,copy) NSString* parentResourceIdsMultiLikeAnd;
- (KalturaFieldType)getTypeOfResourceIdsLike;
- (KalturaFieldType)getTypeOfResourceIdsMultiLikeOr;
- (KalturaFieldType)getTypeOfResourceIdsMultiLikeAnd;
- (KalturaFieldType)getTypeOfParentResourceIdsLike;
- (KalturaFieldType)getTypeOfParentResourceIdsMultiLikeOr;
- (KalturaFieldType)getTypeOfParentResourceIdsMultiLikeAnd;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleEventResourceFilter : KalturaScheduleEventResourceBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaScheduleResourceFilter : KalturaScheduleResourceBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCameraScheduleResourceBaseFilter : KalturaScheduleResourceFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryScheduleEventBaseFilter : KalturaScheduleEventFilter
@property (nonatomic,copy) NSString* entryIdsLike;
@property (nonatomic,copy) NSString* entryIdsMultiLikeOr;
@property (nonatomic,copy) NSString* entryIdsMultiLikeAnd;
@property (nonatomic,copy) NSString* categoryIdsLike;
@property (nonatomic,copy) NSString* categoryIdsMultiLikeOr;
@property (nonatomic,copy) NSString* categoryIdsMultiLikeAnd;
- (KalturaFieldType)getTypeOfEntryIdsLike;
- (KalturaFieldType)getTypeOfEntryIdsMultiLikeOr;
- (KalturaFieldType)getTypeOfEntryIdsMultiLikeAnd;
- (KalturaFieldType)getTypeOfCategoryIdsLike;
- (KalturaFieldType)getTypeOfCategoryIdsMultiLikeOr;
- (KalturaFieldType)getTypeOfCategoryIdsMultiLikeAnd;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLiveEntryScheduleResourceBaseFilter : KalturaScheduleResourceFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLocationScheduleResourceBaseFilter : KalturaScheduleResourceFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCameraScheduleResourceFilter : KalturaCameraScheduleResourceBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryScheduleEventFilter : KalturaEntryScheduleEventBaseFilter
@property (nonatomic,copy) NSString* parentCategoryIdsLike;
@property (nonatomic,copy) NSString* parentCategoryIdsMultiLikeOr;
@property (nonatomic,copy) NSString* parentCategoryIdsMultiLikeAnd;
- (KalturaFieldType)getTypeOfParentCategoryIdsLike;
- (KalturaFieldType)getTypeOfParentCategoryIdsMultiLikeOr;
- (KalturaFieldType)getTypeOfParentCategoryIdsMultiLikeAnd;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLiveEntryScheduleResourceFilter : KalturaLiveEntryScheduleResourceBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLocationScheduleResourceFilter : KalturaLocationScheduleResourceBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLiveStreamScheduleEventBaseFilter : KalturaEntryScheduleEventFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRecordScheduleEventBaseFilter : KalturaEntryScheduleEventFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLiveStreamScheduleEventFilter : KalturaLiveStreamScheduleEventBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRecordScheduleEventFilter : KalturaRecordScheduleEventBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// ScheduleEvent service lets you create and manage schedule events
@class KalturaBulkUpload;
@class KalturaBulkUploadICalJobData;
@interface KalturaScheduleEventService : KalturaServiceBase
// Allows you to add a new KalturaScheduleEvent object
- (KalturaScheduleEvent*)addWithScheduleEvent:(KalturaScheduleEvent*)aScheduleEvent;
// Retrieve a KalturaScheduleEvent object by ID
- (KalturaScheduleEvent*)getWithScheduleEventId:(int)aScheduleEventId;
// Update an existing KalturaScheduleEvent object
- (KalturaScheduleEvent*)updateWithScheduleEventId:(int)aScheduleEventId withScheduleEvent:(KalturaScheduleEvent*)aScheduleEvent;
// Mark the KalturaScheduleEvent object as deleted
- (KalturaScheduleEvent*)deleteWithScheduleEventId:(int)aScheduleEventId;
// Mark the KalturaScheduleEvent object as cancelled
- (KalturaScheduleEvent*)cancelWithScheduleEventId:(int)aScheduleEventId;
// List KalturaScheduleEvent objects
- (KalturaScheduleEventListResponse*)listWithFilter:(KalturaScheduleEventFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaScheduleEventListResponse*)listWithFilter:(KalturaScheduleEventFilter*)aFilter;
- (KalturaScheduleEventListResponse*)list;
// Add new bulk upload batch job
- (KalturaBulkUpload*)addFromBulkUploadWithFileData:(NSString*)aFileData withBulkUploadData:(KalturaBulkUploadICalJobData*)aBulkUploadData;
- (KalturaBulkUpload*)addFromBulkUploadWithFileData:(NSString*)aFileData;
@end

// @package Kaltura
// @subpackage Client
// ScheduleResource service lets you create and manage schedule events
@class KalturaBulkUpload;
@class KalturaBulkUploadCsvJobData;
@interface KalturaScheduleResourceService : KalturaServiceBase
// Allows you to add a new KalturaScheduleResource object
- (KalturaScheduleResource*)addWithScheduleResource:(KalturaScheduleResource*)aScheduleResource;
// Retrieve a KalturaScheduleResource object by ID
- (KalturaScheduleResource*)getWithScheduleResourceId:(int)aScheduleResourceId;
// Update an existing KalturaScheduleResource object
- (KalturaScheduleResource*)updateWithScheduleResourceId:(int)aScheduleResourceId withScheduleResource:(KalturaScheduleResource*)aScheduleResource;
// Mark the KalturaScheduleResource object as deleted
- (KalturaScheduleResource*)deleteWithScheduleResourceId:(int)aScheduleResourceId;
// List KalturaScheduleResource objects
- (KalturaScheduleResourceListResponse*)listWithFilter:(KalturaScheduleResourceFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaScheduleResourceListResponse*)listWithFilter:(KalturaScheduleResourceFilter*)aFilter;
- (KalturaScheduleResourceListResponse*)list;
// Add new bulk upload batch job
- (KalturaBulkUpload*)addFromBulkUploadWithFileData:(NSString*)aFileData withBulkUploadData:(KalturaBulkUploadCsvJobData*)aBulkUploadData;
- (KalturaBulkUpload*)addFromBulkUploadWithFileData:(NSString*)aFileData;
@end

// @package Kaltura
// @subpackage Client
// ScheduleEventResource service lets you create and manage connections between events and resources
@interface KalturaScheduleEventResourceService : KalturaServiceBase
// Allows you to add a new KalturaScheduleEventResource object
- (KalturaScheduleEventResource*)addWithScheduleEventResource:(KalturaScheduleEventResource*)aScheduleEventResource;
// Retrieve a KalturaScheduleEventResource object by ID
- (KalturaScheduleEventResource*)getWithScheduleEventId:(int)aScheduleEventId withScheduleResourceId:(int)aScheduleResourceId;
// Update an existing KalturaScheduleEventResource object
- (KalturaScheduleEventResource*)updateWithScheduleEventId:(int)aScheduleEventId withScheduleResourceId:(int)aScheduleResourceId withScheduleEventResource:(KalturaScheduleEventResource*)aScheduleEventResource;
// Mark the KalturaScheduleEventResource object as deleted
- (void)deleteWithScheduleEventId:(int)aScheduleEventId withScheduleResourceId:(int)aScheduleResourceId;
// List KalturaScheduleEventResource objects
- (KalturaScheduleEventResourceListResponse*)listWithFilter:(KalturaScheduleEventResourceFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaScheduleEventResourceListResponse*)listWithFilter:(KalturaScheduleEventResourceFilter*)aFilter;
- (KalturaScheduleEventResourceListResponse*)list;
@end

