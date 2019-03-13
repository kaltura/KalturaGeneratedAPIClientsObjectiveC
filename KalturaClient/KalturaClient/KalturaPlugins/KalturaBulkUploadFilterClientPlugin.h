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
#import "KalturaBulkUploadClientPlugin.h"
#import "KalturaBulkUploadXmlClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
// Represents the Bulk service input for filter bulk upload
@interface KalturaBulkServiceFilterData : KalturaBulkServiceData
// Filter for extracting the objects list to upload
@property (nonatomic,retain) KalturaFilter* filter;
// Template object for new object creation
@property (nonatomic,retain) KalturaObjectBase* templateObject;
- (KalturaFieldType)getTypeOfFilter;
- (NSString*)getObjectTypeOfFilter;
- (KalturaFieldType)getTypeOfTemplateObject;
- (NSString*)getObjectTypeOfTemplateObject;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBulkUploadResultJob : KalturaBulkUploadResult
// ID of object being processed by the job
@property (nonatomic,assign) int jobObjectId;
- (KalturaFieldType)getTypeOfJobObjectId;
- (void)setJobObjectIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Represents the Bulk upload job data for filter bulk upload
@interface KalturaBulkUploadFilterJobData : KalturaBulkUploadJobData
// Filter for extracting the objects list to upload
@property (nonatomic,retain) KalturaFilter* filter;
// Template object for new object creation
@property (nonatomic,retain) KalturaObjectBase* templateObject;
- (KalturaFieldType)getTypeOfFilter;
- (NSString*)getObjectTypeOfFilter;
- (KalturaFieldType)getTypeOfTemplateObject;
- (NSString*)getObjectTypeOfTemplateObject;
@end

///////////////////////// services /////////////////////////
