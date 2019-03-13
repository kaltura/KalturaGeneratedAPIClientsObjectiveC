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
#import "KalturaContentDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelDistributionAssetPath : KalturaDistributionJobProviderData
@property (nonatomic,copy) NSString* path;
- (KalturaFieldType)getTypeOfPath;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelDistributionJobProviderData : KalturaDistributionJobProviderData
// Demonstrate passing array of paths to the job
@property (nonatomic,retain) NSMutableArray* videoAssetFilePaths;	// of KalturaFreewheelDistributionAssetPath elements
// Demonstrate passing single path to the job
@property (nonatomic,copy) NSString* thumbAssetFilePath;
- (KalturaFieldType)getTypeOfVideoAssetFilePaths;
- (NSString*)getObjectTypeOfVideoAssetFilePaths;
- (KalturaFieldType)getTypeOfThumbAssetFilePath;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelDistributionProfile : KalturaDistributionProfile
@property (nonatomic,copy) NSString* apikey;
@property (nonatomic,copy) NSString* email;
@property (nonatomic,copy) NSString* sftpPass;
@property (nonatomic,copy) NSString* sftpLogin;
@property (nonatomic,copy) NSString* accountId;
@property (nonatomic,assign) int metadataProfileId;
- (KalturaFieldType)getTypeOfApikey;
- (KalturaFieldType)getTypeOfEmail;
- (KalturaFieldType)getTypeOfSftpPass;
- (KalturaFieldType)getTypeOfSftpLogin;
- (KalturaFieldType)getTypeOfAccountId;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelDistributionProfileBaseFilter : KalturaDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelDistributionProfileFilter : KalturaFreewheelDistributionProfileBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelDistributionProviderFilter : KalturaFreewheelDistributionProviderBaseFilter
@end

///////////////////////// services /////////////////////////
