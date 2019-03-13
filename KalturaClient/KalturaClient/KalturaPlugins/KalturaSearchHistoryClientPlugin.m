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
#import "KalturaSearchHistoryClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@interface KalturaESearchHistory()
@property (nonatomic,copy) NSString* searchTerm;
@property (nonatomic,copy) NSString* searchedObject;
@property (nonatomic,assign) int timestamp;
@end

@implementation KalturaESearchHistory
@synthesize searchTerm = _searchTerm;
@synthesize searchedObject = _searchedObject;
@synthesize timestamp = _timestamp;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_timestamp = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfSearchTerm
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSearchedObject
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTimestamp
{
    return KFT_Int;
}

- (void)setTimestampFromString:(NSString*)aPropVal
{
    self.timestamp = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchHistory"];
}

- (void)dealloc
{
    [self->_searchTerm release];
    [self->_searchedObject release];
    [super dealloc];
}

@end

@implementation KalturaESearchHistoryFilter
@synthesize searchTermStartsWith = _searchTermStartsWith;
@synthesize searchedObjectIn = _searchedObjectIn;

- (KalturaFieldType)getTypeOfSearchTermStartsWith
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSearchedObjectIn
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchHistoryFilter"];
    [aParams addIfDefinedKey:@"searchTermStartsWith" withString:self.searchTermStartsWith];
    [aParams addIfDefinedKey:@"searchedObjectIn" withString:self.searchedObjectIn];
}

- (void)dealloc
{
    [self->_searchTermStartsWith release];
    [self->_searchedObjectIn release];
    [super dealloc];
}

@end

@interface KalturaESearchHistoryListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaESearchHistoryListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaESearchHistory";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaESearchHistoryListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaSearchHistoryService
- (void)deleteWithSearchTerm:(NSString*)aSearchTerm
{
    [self.client.params addIfDefinedKey:@"searchTerm" withString:aSearchTerm];
    [self.client queueVoidService:@"searchhistory_searchhistory" withAction:@"delete"];
}

- (KalturaESearchHistoryListResponse*)listWithFilter:(KalturaESearchHistoryFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"searchhistory_searchhistory" withAction:@"list" withExpectedType:@"KalturaESearchHistoryListResponse"];
}

- (KalturaESearchHistoryListResponse*)list
{
    return [self listWithFilter:nil];
}

@end

@implementation KalturaSearchHistoryClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaSearchHistoryService*)SearchHistory
{
    if (self->_SearchHistory == nil)
    	self->_SearchHistory = [[KalturaSearchHistoryService alloc] initWithClient:self.client];
    return self->_SearchHistory;
}

- (void)dealloc
{
    [self->_SearchHistory release];
	[super dealloc];
}

@end

