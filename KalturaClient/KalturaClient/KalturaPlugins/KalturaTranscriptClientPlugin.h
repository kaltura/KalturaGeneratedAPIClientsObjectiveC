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
// Copyright (C) 2006-2015  Kaltura Inc.
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
#import "KalturaAttachmentClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaTranscriptAssetOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)DELETED_AT_ASC;
+ (NSString*)SIZE_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)DELETED_AT_DESC;
+ (NSString*)SIZE_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaTranscriptAsset : KalturaAttachmentAsset
// The accuracy of the transcript - values between 0 and 1
@property (nonatomic,assign) double accuracy;
// Was verified by human or machine
@property (nonatomic,assign) int humanVerified;	// enum KalturaNullableBoolean
// The language of the transcript
@property (nonatomic,copy) NSString* language;	// enum KalturaLanguage
- (KalturaFieldType)getTypeOfAccuracy;
- (KalturaFieldType)getTypeOfHumanVerified;
- (KalturaFieldType)getTypeOfLanguage;
- (void)setAccuracyFromString:(NSString*)aPropVal;
- (void)setHumanVerifiedFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntryTranscriptAssetSearchItem : KalturaSearchItem
@property (nonatomic,copy) NSString* contentLike;
@property (nonatomic,copy) NSString* contentMultiLikeOr;
@property (nonatomic,copy) NSString* contentMultiLikeAnd;
- (KalturaFieldType)getTypeOfContentLike;
- (KalturaFieldType)getTypeOfContentMultiLikeOr;
- (KalturaFieldType)getTypeOfContentMultiLikeAnd;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTranscriptAssetListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaTranscriptAsset elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTranscriptAssetBaseFilter : KalturaAttachmentAssetFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTranscriptAssetFilter : KalturaTranscriptAssetBaseFilter
@end

///////////////////////// services /////////////////////////
