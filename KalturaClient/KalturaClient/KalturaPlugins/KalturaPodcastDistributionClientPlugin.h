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

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaPodcastDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPodcastDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaPodcastDistributionJobProviderData : KalturaDistributionJobProviderData
@property (nonatomic,copy) NSString* xml;
@property (nonatomic,assign) int metadataProfileId;
@property (nonatomic,assign) int distributionProfileId;
- (KalturaFieldType)getTypeOfXml;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (KalturaFieldType)getTypeOfDistributionProfileId;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
- (void)setDistributionProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPodcastDistributionProfile : KalturaDistributionProfile
@property (nonatomic,copy) NSString* xsl;
@property (nonatomic,copy,readonly) NSString* feedId;
@property (nonatomic,assign) int metadataProfileId;
- (KalturaFieldType)getTypeOfXsl;
- (KalturaFieldType)getTypeOfFeedId;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPodcastDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPodcastDistributionProfileBaseFilter : KalturaDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPodcastDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPodcastDistributionProfileFilter : KalturaPodcastDistributionProfileBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPodcastDistributionProviderFilter : KalturaPodcastDistributionProviderBaseFilter
@end

///////////////////////// services /////////////////////////
