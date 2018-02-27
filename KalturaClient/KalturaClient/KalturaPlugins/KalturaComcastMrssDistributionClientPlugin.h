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
#import "KalturaCaptionClientPlugin.h"
#import "KalturaCuePointClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaComcastMrssDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaComcastMrssDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaComcastMrssDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaComcastMrssDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,assign) int metadataProfileId;
@property (nonatomic,copy,readonly) NSString* feedUrl;
@property (nonatomic,copy) NSString* feedTitle;
@property (nonatomic,copy) NSString* feedLink;
@property (nonatomic,copy) NSString* feedDescription;
@property (nonatomic,copy) NSString* feedLastBuildDate;
@property (nonatomic,copy) NSString* itemLink;
@property (nonatomic,retain) NSMutableArray* cPlatformTvSeries;	// of KalturaKeyValue elements
@property (nonatomic,copy) NSString* cPlatformTvSeriesField;
@property (nonatomic,assign) KALTURA_BOOL shouldIncludeCuePoints;
@property (nonatomic,assign) KALTURA_BOOL shouldIncludeCaptions;
@property (nonatomic,assign) KALTURA_BOOL shouldAddThumbExtension;
- (KalturaFieldType)getTypeOfMetadataProfileId;
- (KalturaFieldType)getTypeOfFeedUrl;
- (KalturaFieldType)getTypeOfFeedTitle;
- (KalturaFieldType)getTypeOfFeedLink;
- (KalturaFieldType)getTypeOfFeedDescription;
- (KalturaFieldType)getTypeOfFeedLastBuildDate;
- (KalturaFieldType)getTypeOfItemLink;
- (KalturaFieldType)getTypeOfCPlatformTvSeries;
- (NSString*)getObjectTypeOfCPlatformTvSeries;
- (KalturaFieldType)getTypeOfCPlatformTvSeriesField;
- (KalturaFieldType)getTypeOfShouldIncludeCuePoints;
- (KalturaFieldType)getTypeOfShouldIncludeCaptions;
- (KalturaFieldType)getTypeOfShouldAddThumbExtension;
- (void)setMetadataProfileIdFromString:(NSString*)aPropVal;
- (void)setShouldIncludeCuePointsFromString:(NSString*)aPropVal;
- (void)setShouldIncludeCaptionsFromString:(NSString*)aPropVal;
- (void)setShouldAddThumbExtensionFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaComcastMrssDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaComcastMrssDistributionProviderFilter : KalturaComcastMrssDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaComcastMrssDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaComcastMrssDistributionProfileFilter : KalturaComcastMrssDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
