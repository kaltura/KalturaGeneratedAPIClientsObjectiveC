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
@interface KalturaDoubleClickDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDoubleClickDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaDoubleClickDistributionJobProviderData : KalturaDistributionJobProviderData
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDoubleClickDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDoubleClickDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* channelTitle;
@property (nonatomic,copy) NSString* channelLink;
@property (nonatomic,copy) NSString* channelDescription;
@property (nonatomic,copy,readonly) NSString* feedUrl;
@property (nonatomic,copy) NSString* cuePointsProvider;
@property (nonatomic,copy) NSString* itemsPerPage;
@property (nonatomic,assign) KALTURA_BOOL ignoreSchedulingInFeed;
- (KalturaFieldType)getTypeOfChannelTitle;
- (KalturaFieldType)getTypeOfChannelLink;
- (KalturaFieldType)getTypeOfChannelDescription;
- (KalturaFieldType)getTypeOfFeedUrl;
- (KalturaFieldType)getTypeOfCuePointsProvider;
- (KalturaFieldType)getTypeOfItemsPerPage;
- (KalturaFieldType)getTypeOfIgnoreSchedulingInFeed;
- (void)setIgnoreSchedulingInFeedFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDoubleClickDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDoubleClickDistributionProviderFilter : KalturaDoubleClickDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDoubleClickDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDoubleClickDistributionProfileFilter : KalturaDoubleClickDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
