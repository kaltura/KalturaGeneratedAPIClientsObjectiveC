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
// Copyright (C) 2006-2018  Kaltura Inc.
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
@interface KalturaYahooDistributionProcessFeedActionStatus : NSObject
+ (int)MANUAL;
+ (int)AUTOMATIC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYahooDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYahooDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaYahooDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYahooDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,copy) NSString* smallThumbPath;
@property (nonatomic,copy) NSString* largeThumbPath;
@property (nonatomic,copy) NSString* videoAssetFilePath;
- (KalturaFieldType)getTypeOfSmallThumbPath;
- (KalturaFieldType)getTypeOfLargeThumbPath;
- (KalturaFieldType)getTypeOfVideoAssetFilePath;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYahooDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* ftpPath;
@property (nonatomic,copy) NSString* ftpUsername;
@property (nonatomic,copy) NSString* ftpPassword;
@property (nonatomic,copy) NSString* ftpHost;
@property (nonatomic,copy) NSString* contactTelephone;
@property (nonatomic,copy) NSString* contactEmail;
@property (nonatomic,assign) int processFeed;	// enum KalturaYahooDistributionProcessFeedActionStatus
- (KalturaFieldType)getTypeOfFtpPath;
- (KalturaFieldType)getTypeOfFtpUsername;
- (KalturaFieldType)getTypeOfFtpPassword;
- (KalturaFieldType)getTypeOfFtpHost;
- (KalturaFieldType)getTypeOfContactTelephone;
- (KalturaFieldType)getTypeOfContactEmail;
- (KalturaFieldType)getTypeOfProcessFeed;
- (void)setProcessFeedFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYahooDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYahooDistributionProviderFilter : KalturaYahooDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYahooDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYahooDistributionProfileFilter : KalturaYahooDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
