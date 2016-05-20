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
// Copyright (C) 2006-2016  Kaltura Inc.
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
#import "KalturaScheduleBulkUploadClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@implementation KalturaBulkUploadResultScheduleEvent
@synthesize referenceId = _referenceId;

- (KalturaFieldType)getTypeOfReferenceId
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBulkUploadResultScheduleEvent"];
    [aParams addIfDefinedKey:@"referenceId" withString:self.referenceId];
}

- (void)dealloc
{
    [self->_referenceId release];
    [super dealloc];
}

@end

@implementation KalturaBulkUploadResultScheduleResource
@synthesize resourceId = _resourceId;
@synthesize name = _name;
@synthesize type = _type;
@synthesize systemName = _systemName;
@synthesize description = _description;
@synthesize tags = _tags;
@synthesize parentType = _parentType;
@synthesize parentSystemName = _parentSystemName;

- (KalturaFieldType)getTypeOfResourceId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSystemName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTags
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfParentType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfParentSystemName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBulkUploadResultScheduleResource"];
    [aParams addIfDefinedKey:@"resourceId" withString:self.resourceId];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"type" withString:self.type];
    [aParams addIfDefinedKey:@"systemName" withString:self.systemName];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"tags" withString:self.tags];
    [aParams addIfDefinedKey:@"parentType" withString:self.parentType];
    [aParams addIfDefinedKey:@"parentSystemName" withString:self.parentSystemName];
}

- (void)dealloc
{
    [self->_resourceId release];
    [self->_name release];
    [self->_type release];
    [self->_systemName release];
    [self->_description release];
    [self->_tags release];
    [self->_parentType release];
    [self->_parentSystemName release];
    [super dealloc];
}

@end

@implementation KalturaBulkUploadICalJobData
@synthesize eventsType = _eventsType;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_eventsType = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfEventsType
{
    return KFT_Int;
}

- (void)setEventsTypeFromString:(NSString*)aPropVal
{
    self.eventsType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBulkUploadICalJobData"];
    [aParams addIfDefinedKey:@"eventsType" withInt:self.eventsType];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaScheduleBulkUploadClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaScheduleBulkService*)scheduleBulk
{
    if (self->_scheduleBulk == nil)
    	self->_scheduleBulk = [[KalturaScheduleBulkService alloc] initWithClient:self.client];
    return self->_scheduleBulk;
}

- (void)dealloc
{
    [self->_scheduleBulk release];
	[super dealloc];
}

@end

