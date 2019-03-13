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
#import "KalturaDropFolderXmlBulkUploadClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@implementation KalturaDropFolderXmlBulkUploadFileHandlerConfig
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDropFolderXmlBulkUploadFileHandlerConfig"];
}

@end

@implementation KalturaDropFolderXmlBulkUploadJobData
@synthesize dropFolderId = _dropFolderId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_dropFolderId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfDropFolderId
{
    return KFT_Int;
}

- (void)setDropFolderIdFromString:(NSString*)aPropVal
{
    self.dropFolderId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDropFolderXmlBulkUploadJobData"];
    [aParams addIfDefinedKey:@"dropFolderId" withInt:self.dropFolderId];
}

@end

///////////////////////// services /////////////////////////
