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
#import "KalturaWowzaClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaWowzaMediaServerNodeOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)HEARTBEAT_TIME_ASC
{
    return @"+heartbeatTime";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)HEARTBEAT_TIME_DESC
{
    return @"-heartbeatTime";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaWowzaMediaServerNode
@synthesize appPrefix = _appPrefix;
@synthesize transcoder = _transcoder;
@synthesize GPUID = _GPUID;
@synthesize liveServicePort = _liveServicePort;
@synthesize liveServiceProtocol = _liveServiceProtocol;
@synthesize liveServiceInternalDomain = _liveServiceInternalDomain;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_GPUID = KALTURA_UNDEF_INT;
    self->_liveServicePort = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAppPrefix
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTranscoder
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfGPUID
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLiveServicePort
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLiveServiceProtocol
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLiveServiceInternalDomain
{
    return KFT_String;
}

- (void)setGPUIDFromString:(NSString*)aPropVal
{
    self.GPUID = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLiveServicePortFromString:(NSString*)aPropVal
{
    self.liveServicePort = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaWowzaMediaServerNode"];
    [aParams addIfDefinedKey:@"appPrefix" withString:self.appPrefix];
    [aParams addIfDefinedKey:@"transcoder" withString:self.transcoder];
    [aParams addIfDefinedKey:@"GPUID" withInt:self.GPUID];
    [aParams addIfDefinedKey:@"liveServicePort" withInt:self.liveServicePort];
    [aParams addIfDefinedKey:@"liveServiceProtocol" withString:self.liveServiceProtocol];
    [aParams addIfDefinedKey:@"liveServiceInternalDomain" withString:self.liveServiceInternalDomain];
}

- (void)dealloc
{
    [self->_appPrefix release];
    [self->_transcoder release];
    [self->_liveServiceProtocol release];
    [self->_liveServiceInternalDomain release];
    [super dealloc];
}

@end

@implementation KalturaWowzaMediaServerNodeBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaWowzaMediaServerNodeBaseFilter"];
}

@end

@implementation KalturaWowzaMediaServerNodeFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaWowzaMediaServerNodeFilter"];
}

@end

///////////////////////// services /////////////////////////
