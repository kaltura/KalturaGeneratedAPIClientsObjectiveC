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
#import "KalturaBulkUploadCsvClientPlugin.h"
#import "KalturaScheduleClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaBulkUploadResultScheduleEvent : KalturaBulkUploadResult
@property (nonatomic,copy) NSString* referenceId;
- (KalturaFieldType)getTypeOfReferenceId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBulkUploadResultScheduleResource : KalturaBulkUploadResult
@property (nonatomic,copy) NSString* resourceId;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* type;
@property (nonatomic,copy) NSString* systemName;
@property (nonatomic,copy) NSString* description;
@property (nonatomic,copy) NSString* tags;
@property (nonatomic,copy) NSString* parentType;
@property (nonatomic,copy) NSString* parentSystemName;
- (KalturaFieldType)getTypeOfResourceId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfSystemName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfTags;
- (KalturaFieldType)getTypeOfParentType;
- (KalturaFieldType)getTypeOfParentSystemName;
@end

// @package Kaltura
// @subpackage Client
// Represents the Bulk upload job data for iCal bulk upload
@interface KalturaBulkUploadICalJobData : KalturaBulkUploadJobData
// The type of the events that ill be created by this upload
@property (nonatomic,assign) int eventsType;	// enum KalturaScheduleEventType
- (KalturaFieldType)getTypeOfEventsType;
- (void)setEventsTypeFromString:(NSString*)aPropVal;
@end

///////////////////////// services /////////////////////////
