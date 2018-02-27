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
#import "KalturaActivitiBusinessProcessNotificationClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaActivitiBusinessProcessServerOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaActivitiBusinessProcessServerProtocol
+ (NSString*)HTTP
{
    return @"http";
}
+ (NSString*)HTTPS
{
    return @"https";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaActivitiBusinessProcessServer
@synthesize host = _host;
@synthesize port = _port;
@synthesize protocol = _protocol;
@synthesize username = _username;
@synthesize password = _password;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_port = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfHost
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPort
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfProtocol
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPassword
{
    return KFT_String;
}

- (void)setPortFromString:(NSString*)aPropVal
{
    self.port = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaActivitiBusinessProcessServer"];
    [aParams addIfDefinedKey:@"host" withString:self.host];
    [aParams addIfDefinedKey:@"port" withInt:self.port];
    [aParams addIfDefinedKey:@"protocol" withString:self.protocol];
    [aParams addIfDefinedKey:@"username" withString:self.username];
    [aParams addIfDefinedKey:@"password" withString:self.password];
}

- (void)dealloc
{
    [self->_host release];
    [self->_protocol release];
    [self->_username release];
    [self->_password release];
    [super dealloc];
}

@end

@implementation KalturaActivitiBusinessProcessServerBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaActivitiBusinessProcessServerBaseFilter"];
}

@end

@implementation KalturaActivitiBusinessProcessServerFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaActivitiBusinessProcessServerFilter"];
}

@end

///////////////////////// services /////////////////////////
