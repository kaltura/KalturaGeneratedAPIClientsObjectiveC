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

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaAttachmentAssetStatus : NSObject
+ (int)ERROR;
+ (int)QUEUED;
+ (int)READY;
+ (int)DELETED;
+ (int)IMPORTING;
+ (int)EXPORTING;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAttachmentAssetOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)DELETED_AT_ASC;
+ (NSString*)SIZE_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)DELETED_AT_DESC;
+ (NSString*)SIZE_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAttachmentType : NSObject
+ (NSString*)TEXT;
+ (NSString*)MEDIA;
+ (NSString*)DOCUMENT;
+ (NSString*)JSON;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaAttachmentAsset : KalturaAsset
// The filename of the attachment asset content
@property (nonatomic,copy) NSString* filename;
// Attachment asset title
@property (nonatomic,copy) NSString* title;
// The attachment format
@property (nonatomic,copy) NSString* format;	// enum KalturaAttachmentType
// The status of the asset
@property (nonatomic,assign,readonly) int status;	// enum KalturaAttachmentAssetStatus
- (KalturaFieldType)getTypeOfFilename;
- (KalturaFieldType)getTypeOfTitle;
- (KalturaFieldType)getTypeOfFormat;
- (KalturaFieldType)getTypeOfStatus;
- (void)setStatusFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAttachmentAssetListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaAttachmentAsset elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAttachmentServeOptions : KalturaAssetServeOptions
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAttachmentAssetBaseFilter : KalturaAssetFilter
@property (nonatomic,copy) NSString* formatEqual;	// enum KalturaAttachmentType
@property (nonatomic,copy) NSString* formatIn;
@property (nonatomic,assign) int statusEqual;	// enum KalturaAttachmentAssetStatus
@property (nonatomic,copy) NSString* statusIn;
@property (nonatomic,copy) NSString* statusNotIn;
- (KalturaFieldType)getTypeOfFormatEqual;
- (KalturaFieldType)getTypeOfFormatIn;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfStatusNotIn;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAttachmentAssetFilter : KalturaAttachmentAssetBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Retrieve information and invoke actions on attachment Asset
@interface KalturaAttachmentAssetService : KalturaServiceBase
// Add attachment asset
- (KalturaAttachmentAsset*)addWithEntryId:(NSString*)aEntryId withAttachmentAsset:(KalturaAttachmentAsset*)aAttachmentAsset;
- (void)deleteWithAttachmentAssetId:(NSString*)aAttachmentAssetId;
- (KalturaAttachmentAsset*)getWithAttachmentAssetId:(NSString*)aAttachmentAssetId;
// Get remote storage existing paths for the asset
- (KalturaRemotePathListResponse*)getRemotePathsWithId:(NSString*)aId;
// Get download URL for the asset
- (NSString*)getUrlWithId:(NSString*)aId withStorageId:(int)aStorageId;
- (NSString*)getUrlWithId:(NSString*)aId;
// List attachment Assets by filter and pager
- (KalturaAttachmentAssetListResponse*)listWithFilter:(KalturaAssetFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaAttachmentAssetListResponse*)listWithFilter:(KalturaAssetFilter*)aFilter;
- (KalturaAttachmentAssetListResponse*)list;
// Serves attachment by its id
- (NSString*)serveWithAttachmentAssetId:(NSString*)aAttachmentAssetId withServeOptions:(KalturaAttachmentServeOptions*)aServeOptions;
- (NSString*)serveWithAttachmentAssetId:(NSString*)aAttachmentAssetId;
// Update content of attachment asset
- (KalturaAttachmentAsset*)setContentWithId:(NSString*)aId withContentResource:(KalturaContentResource*)aContentResource;
// Update attachment asset
- (KalturaAttachmentAsset*)updateWithId:(NSString*)aId withAttachmentAsset:(KalturaAttachmentAsset*)aAttachmentAsset;
@end

@interface KalturaAttachmentClientPlugin : KalturaClientPlugin
{
	KalturaAttachmentAssetService* _attachmentAsset;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaAttachmentAssetService* attachmentAsset;
@end

