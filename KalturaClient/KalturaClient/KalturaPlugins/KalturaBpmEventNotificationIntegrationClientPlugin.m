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
#import "KalturaBpmEventNotificationIntegrationClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@implementation KalturaBpmEventNotificationIntegrationJobTriggerData
@synthesize templateId = _templateId;
@synthesize businessProcessId = _businessProcessId;
@synthesize caseId = _caseId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_templateId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfTemplateId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfBusinessProcessId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaseId
{
    return KFT_String;
}

- (void)setTemplateIdFromString:(NSString*)aPropVal
{
    self.templateId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBpmEventNotificationIntegrationJobTriggerData"];
    [aParams addIfDefinedKey:@"templateId" withInt:self.templateId];
    [aParams addIfDefinedKey:@"businessProcessId" withString:self.businessProcessId];
    [aParams addIfDefinedKey:@"caseId" withString:self.caseId];
}

- (void)dealloc
{
    [self->_businessProcessId release];
    [self->_caseId release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
