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
#import "KalturaFeedDropFolderClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@implementation KalturaFeedItemInfo
@synthesize itemXPath = _itemXPath;
@synthesize itemPublishDateXPath = _itemPublishDateXPath;
@synthesize itemUniqueIdentifierXPath = _itemUniqueIdentifierXPath;
@synthesize itemContentFileSizeXPath = _itemContentFileSizeXPath;
@synthesize itemContentUrlXPath = _itemContentUrlXPath;
@synthesize itemContentBitrateXPath = _itemContentBitrateXPath;
@synthesize itemHashXPath = _itemHashXPath;
@synthesize itemContentXpath = _itemContentXpath;
@synthesize contentBitrateAttributeName = _contentBitrateAttributeName;

- (KalturaFieldType)getTypeOfItemXPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemPublishDateXPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemUniqueIdentifierXPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemContentFileSizeXPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemContentUrlXPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemContentBitrateXPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemHashXPath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemContentXpath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfContentBitrateAttributeName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFeedItemInfo"];
    [aParams addIfDefinedKey:@"itemXPath" withString:self.itemXPath];
    [aParams addIfDefinedKey:@"itemPublishDateXPath" withString:self.itemPublishDateXPath];
    [aParams addIfDefinedKey:@"itemUniqueIdentifierXPath" withString:self.itemUniqueIdentifierXPath];
    [aParams addIfDefinedKey:@"itemContentFileSizeXPath" withString:self.itemContentFileSizeXPath];
    [aParams addIfDefinedKey:@"itemContentUrlXPath" withString:self.itemContentUrlXPath];
    [aParams addIfDefinedKey:@"itemContentBitrateXPath" withString:self.itemContentBitrateXPath];
    [aParams addIfDefinedKey:@"itemHashXPath" withString:self.itemHashXPath];
    [aParams addIfDefinedKey:@"itemContentXpath" withString:self.itemContentXpath];
    [aParams addIfDefinedKey:@"contentBitrateAttributeName" withString:self.contentBitrateAttributeName];
}

- (void)dealloc
{
    [self->_itemXPath release];
    [self->_itemPublishDateXPath release];
    [self->_itemUniqueIdentifierXPath release];
    [self->_itemContentFileSizeXPath release];
    [self->_itemContentUrlXPath release];
    [self->_itemContentBitrateXPath release];
    [self->_itemHashXPath release];
    [self->_itemContentXpath release];
    [self->_contentBitrateAttributeName release];
    [super dealloc];
}

@end

@implementation KalturaFeedDropFolder
@synthesize itemHandlingLimit = _itemHandlingLimit;
@synthesize feedItemInfo = _feedItemInfo;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_itemHandlingLimit = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfItemHandlingLimit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFeedItemInfo
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfFeedItemInfo
{
    return @"KalturaFeedItemInfo";
}

- (void)setItemHandlingLimitFromString:(NSString*)aPropVal
{
    self.itemHandlingLimit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFeedDropFolder"];
    [aParams addIfDefinedKey:@"itemHandlingLimit" withInt:self.itemHandlingLimit];
    [aParams addIfDefinedKey:@"feedItemInfo" withObject:self.feedItemInfo];
}

- (void)dealloc
{
    [self->_feedItemInfo release];
    [super dealloc];
}

@end

@implementation KalturaFeedDropFolderFile
@synthesize hash = _hash;
@synthesize feedXmlPath = _feedXmlPath;

- (KalturaFieldType)getTypeOfHash
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFeedXmlPath
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFeedDropFolderFile"];
    [aParams addIfDefinedKey:@"hash" withString:self.hash];
    [aParams addIfDefinedKey:@"feedXmlPath" withString:self.feedXmlPath];
}

- (void)dealloc
{
    [self->_hash release];
    [self->_feedXmlPath release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
