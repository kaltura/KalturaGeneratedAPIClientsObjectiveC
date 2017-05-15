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
@interface KalturaSynacorHboDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSynacorHboDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaSynacorHboDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSynacorHboDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy,readonly) NSString* feedUrl;
@property (nonatomic,copy) NSString* feedTitle;
@property (nonatomic,copy) NSString* feedSubtitle;
@property (nonatomic,copy) NSString* feedLink;
@property (nonatomic,copy) NSString* feedAuthorName;
- (KalturaFieldType)getTypeOfFeedUrl;
- (KalturaFieldType)getTypeOfFeedTitle;
- (KalturaFieldType)getTypeOfFeedSubtitle;
- (KalturaFieldType)getTypeOfFeedLink;
- (KalturaFieldType)getTypeOfFeedAuthorName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSynacorHboDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSynacorHboDistributionProviderFilter : KalturaSynacorHboDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSynacorHboDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSynacorHboDistributionProfileFilter : KalturaSynacorHboDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Synacor HBO Service
@interface KalturaSynacorHboService : KalturaServiceBase
- (NSString*)getFeedWithDistributionProfileId:(int)aDistributionProfileId withHash:(NSString*)aHash;
@end

@interface KalturaSynacorHboDistributionClientPlugin : KalturaClientPlugin
{
	KalturaSynacorHboService* _synacorHbo;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaSynacorHboService* synacorHbo;
@end

