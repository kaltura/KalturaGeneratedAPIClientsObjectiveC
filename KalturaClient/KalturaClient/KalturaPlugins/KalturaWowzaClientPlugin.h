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
// Copyright (C) 2006-2015  Kaltura Inc.
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

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaWowzaMediaServerNodeOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)HEARTBEAT_TIME_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)HEARTBEAT_TIME_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaWowzaMediaServerNode : KalturaMediaServerNode
// Wowza Media server app prefix
@property (nonatomic,copy) NSString* appPrefix;
// Wowza Media server transcoder configuration overide
@property (nonatomic,copy) NSString* transcoder;
// Wowza Media server GPU index id
@property (nonatomic,assign) int GPUID;
// Live service port
@property (nonatomic,assign) int liveServicePort;
// Live service protocol
@property (nonatomic,copy) NSString* liveServiceProtocol;
// Wowza media server live service internal domain
@property (nonatomic,copy) NSString* liveServiceInternalDomain;
- (KalturaFieldType)getTypeOfAppPrefix;
- (KalturaFieldType)getTypeOfTranscoder;
- (KalturaFieldType)getTypeOfGPUID;
- (KalturaFieldType)getTypeOfLiveServicePort;
- (KalturaFieldType)getTypeOfLiveServiceProtocol;
- (KalturaFieldType)getTypeOfLiveServiceInternalDomain;
- (void)setGPUIDFromString:(NSString*)aPropVal;
- (void)setLiveServicePortFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaWowzaMediaServerNodeBaseFilter : KalturaMediaServerNodeFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaWowzaMediaServerNodeFilter : KalturaWowzaMediaServerNodeBaseFilter
@end

///////////////////////// services /////////////////////////
