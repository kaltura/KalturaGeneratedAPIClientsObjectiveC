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
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"
#import "KalturaElasticSearchClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaESearchHistory : KalturaObjectBase
@property (nonatomic,copy,readonly) NSString* searchTerm;
@property (nonatomic,copy,readonly) NSString* searchedObject;
@property (nonatomic,assign,readonly) int timestamp;
- (KalturaFieldType)getTypeOfSearchTerm;
- (KalturaFieldType)getTypeOfSearchedObject;
- (KalturaFieldType)getTypeOfTimestamp;
- (void)setTimestampFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchHistoryFilter : KalturaESearchBaseFilter
@property (nonatomic,copy) NSString* searchTermStartsWith;
@property (nonatomic,copy) NSString* searchedObjectIn;
- (KalturaFieldType)getTypeOfSearchTermStartsWith;
- (KalturaFieldType)getTypeOfSearchedObjectIn;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaESearchHistoryListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaESearchHistory elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaSearchHistoryService : KalturaServiceBase
- (void)deleteWithSearchTerm:(NSString*)aSearchTerm;
- (KalturaESearchHistoryListResponse*)listWithFilter:(KalturaESearchHistoryFilter*)aFilter;
- (KalturaESearchHistoryListResponse*)list;
@end

@interface KalturaSearchHistoryClientPlugin : KalturaClientPlugin
{
	KalturaSearchHistoryService* _SearchHistory;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaSearchHistoryService* SearchHistory;
@end

