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
#import "KalturaBulkUploadClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@implementation KalturaBulkServiceData
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBulkServiceData"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaBulkService
- (KalturaBulkUpload*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"bulkupload_bulk" withAction:@"get" withExpectedType:@"KalturaBulkUpload"];
}

- (KalturaBulkUploadListResponse*)listWithBulkUploadFilter:(KalturaBulkUploadFilter*)aBulkUploadFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"bulkUploadFilter" withObject:aBulkUploadFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"bulkupload_bulk" withAction:@"list" withExpectedType:@"KalturaBulkUploadListResponse"];
}

- (KalturaBulkUploadListResponse*)listWithBulkUploadFilter:(KalturaBulkUploadFilter*)aBulkUploadFilter
{
    return [self listWithBulkUploadFilter:aBulkUploadFilter withPager:nil];
}

- (KalturaBulkUploadListResponse*)list
{
    return [self listWithBulkUploadFilter:nil];
}

- (NSString*)serveWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueServeService:@"bulkupload_bulk" withAction:@"serve"];
}

- (NSString*)serveLogWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueServeService:@"bulkupload_bulk" withAction:@"serveLog"];
}

- (KalturaBulkUpload*)abortWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"bulkupload_bulk" withAction:@"abort" withExpectedType:@"KalturaBulkUpload"];
}

@end

