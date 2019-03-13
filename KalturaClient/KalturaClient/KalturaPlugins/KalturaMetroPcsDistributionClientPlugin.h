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
@interface KalturaMetroPcsDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetroPcsDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaMetroPcsDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetroPcsDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,copy) NSString* assetLocalPaths;
@property (nonatomic,copy) NSString* thumbUrls;
- (KalturaFieldType)getTypeOfAssetLocalPaths;
- (KalturaFieldType)getTypeOfThumbUrls;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetroPcsDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* ftpHost;
@property (nonatomic,copy) NSString* ftpLogin;
@property (nonatomic,copy) NSString* ftpPass;
@property (nonatomic,copy) NSString* ftpPath;
@property (nonatomic,copy) NSString* providerName;
@property (nonatomic,copy) NSString* providerId;
@property (nonatomic,copy) NSString* acopyright;
@property (nonatomic,copy) NSString* entitlements;
@property (nonatomic,copy) NSString* rating;
@property (nonatomic,copy) NSString* itemType;
- (KalturaFieldType)getTypeOfFtpHost;
- (KalturaFieldType)getTypeOfFtpLogin;
- (KalturaFieldType)getTypeOfFtpPass;
- (KalturaFieldType)getTypeOfFtpPath;
- (KalturaFieldType)getTypeOfProviderName;
- (KalturaFieldType)getTypeOfProviderId;
- (KalturaFieldType)getTypeOfCopyright;
- (KalturaFieldType)getTypeOfEntitlements;
- (KalturaFieldType)getTypeOfRating;
- (KalturaFieldType)getTypeOfItemType;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetroPcsDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetroPcsDistributionProviderFilter : KalturaMetroPcsDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetroPcsDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMetroPcsDistributionProfileFilter : KalturaMetroPcsDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
