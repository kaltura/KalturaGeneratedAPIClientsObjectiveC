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
#import "KalturaFairplayClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@implementation KalturaFairplayDrmProfile
@synthesize publicCertificate = _publicCertificate;

- (KalturaFieldType)getTypeOfPublicCertificate
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFairplayDrmProfile"];
    [aParams addIfDefinedKey:@"publicCertificate" withString:self.publicCertificate];
}

- (void)dealloc
{
    [self->_publicCertificate release];
    [super dealloc];
}

@end

@implementation KalturaFairplayEntryContextPluginData
@synthesize publicCertificate = _publicCertificate;

- (KalturaFieldType)getTypeOfPublicCertificate
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFairplayEntryContextPluginData"];
    [aParams addIfDefinedKey:@"publicCertificate" withString:self.publicCertificate];
}

- (void)dealloc
{
    [self->_publicCertificate release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
