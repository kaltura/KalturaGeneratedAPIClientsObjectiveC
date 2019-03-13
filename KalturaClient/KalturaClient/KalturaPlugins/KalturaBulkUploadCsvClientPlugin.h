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

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaBulkUploadCsvVersion : NSObject
+ (int)V1;
+ (int)V2;
+ (int)V3;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
// Represents the Bulk upload job data for xml bulk upload
@interface KalturaBulkUploadCsvJobData : KalturaBulkUploadJobData
// The version of the csv file
@property (nonatomic,assign,readonly) int csvVersion;	// enum KalturaBulkUploadCsvVersion
// Array containing CSV headers
@property (nonatomic,retain) NSMutableArray* columns;	// of KalturaString elements
- (KalturaFieldType)getTypeOfCsvVersion;
- (KalturaFieldType)getTypeOfColumns;
- (NSString*)getObjectTypeOfColumns;
- (void)setCsvVersionFromString:(NSString*)aPropVal;
@end

///////////////////////// services /////////////////////////
