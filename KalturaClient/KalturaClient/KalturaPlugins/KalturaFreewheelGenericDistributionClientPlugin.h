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
// Copyright (C) 2006-2017  Kaltura Inc.
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
#import "KalturaCuePointClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelGenericDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelGenericDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelGenericDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelGenericDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
// Demonstrate passing array of paths to the job
@property (nonatomic,retain) NSMutableArray* videoAssetFilePaths;	// of KalturaString elements
// Demonstrate passing single path to the job
@property (nonatomic,copy) NSString* thumbAssetFilePath;
@property (nonatomic,retain) NSMutableArray* cuePoints;	// of KalturaCuePoint elements
- (KalturaFieldType)getTypeOfVideoAssetFilePaths;
- (NSString*)getObjectTypeOfVideoAssetFilePaths;
- (KalturaFieldType)getTypeOfThumbAssetFilePath;
- (KalturaFieldType)getTypeOfCuePoints;
- (NSString*)getObjectTypeOfCuePoints;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelGenericDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* apikey;
@property (nonatomic,copy) NSString* email;
@property (nonatomic,copy) NSString* sftpPass;
@property (nonatomic,copy) NSString* sftpLogin;
@property (nonatomic,copy) NSString* contentOwner;
@property (nonatomic,copy) NSString* upstreamVideoId;
@property (nonatomic,copy) NSString* upstreamNetworkName;
@property (nonatomic,copy) NSString* upstreamNetworkId;
@property (nonatomic,copy) NSString* categoryId;
@property (nonatomic,assign) KALTURA_BOOL replaceGroup;
@property (nonatomic,assign) KALTURA_BOOL replaceAirDates;
- (KalturaFieldType)getTypeOfApikey;
- (KalturaFieldType)getTypeOfEmail;
- (KalturaFieldType)getTypeOfSftpPass;
- (KalturaFieldType)getTypeOfSftpLogin;
- (KalturaFieldType)getTypeOfContentOwner;
- (KalturaFieldType)getTypeOfUpstreamVideoId;
- (KalturaFieldType)getTypeOfUpstreamNetworkName;
- (KalturaFieldType)getTypeOfUpstreamNetworkId;
- (KalturaFieldType)getTypeOfCategoryId;
- (KalturaFieldType)getTypeOfReplaceGroup;
- (KalturaFieldType)getTypeOfReplaceAirDates;
- (void)setReplaceGroupFromString:(NSString*)aPropVal;
- (void)setReplaceAirDatesFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelGenericDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelGenericDistributionProviderFilter : KalturaFreewheelGenericDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelGenericDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFreewheelGenericDistributionProfileFilter : KalturaFreewheelGenericDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
