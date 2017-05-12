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
#import "KalturaViewHistoryClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@implementation KalturaViewHistoryUserEntry
@synthesize playbackContext = _playbackContext;
@synthesize lastTimeReached = _lastTimeReached;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_lastTimeReached = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfPlaybackContext
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLastTimeReached
{
    return KFT_Int;
}

- (void)setLastTimeReachedFromString:(NSString*)aPropVal
{
    self.lastTimeReached = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaViewHistoryUserEntry"];
    [aParams addIfDefinedKey:@"playbackContext" withString:self.playbackContext];
    [aParams addIfDefinedKey:@"lastTimeReached" withInt:self.lastTimeReached];
}

- (void)dealloc
{
    [self->_playbackContext release];
    [super dealloc];
}

@end

@implementation KalturaViewHistoryUserEntryAdvancedFilter
@synthesize idEqual = _idEqual;
@synthesize idIn = _idIn;
@synthesize userIdEqual = _userIdEqual;
@synthesize userIdIn = _userIdIn;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;
@synthesize extendedStatusEqual = _extendedStatusEqual;
@synthesize extendedStatusIn = _extendedStatusIn;

- (KalturaFieldType)getTypeOfIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExtendedStatusEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExtendedStatusIn
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaViewHistoryUserEntryAdvancedFilter"];
    [aParams addIfDefinedKey:@"idEqual" withString:self.idEqual];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
    [aParams addIfDefinedKey:@"userIdEqual" withString:self.userIdEqual];
    [aParams addIfDefinedKey:@"userIdIn" withString:self.userIdIn];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withString:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withString:self.updatedAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"extendedStatusEqual" withString:self.extendedStatusEqual];
    [aParams addIfDefinedKey:@"extendedStatusIn" withString:self.extendedStatusIn];
}

- (void)dealloc
{
    [self->_idEqual release];
    [self->_idIn release];
    [self->_userIdEqual release];
    [self->_userIdIn release];
    [self->_updatedAtGreaterThanOrEqual release];
    [self->_updatedAtLessThanOrEqual release];
    [self->_extendedStatusEqual release];
    [self->_extendedStatusIn release];
    [super dealloc];
}

@end

@implementation KalturaViewHistoryUserEntryFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaViewHistoryUserEntryFilter"];
}

@end

///////////////////////// services /////////////////////////
