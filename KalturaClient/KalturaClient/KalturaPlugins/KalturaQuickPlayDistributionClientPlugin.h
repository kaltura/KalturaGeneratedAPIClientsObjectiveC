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
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"
#import "KalturaContentDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaQuickPlayDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuickPlayDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaQuickPlayDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuickPlayDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,copy) NSString* xml;
@property (nonatomic,retain) NSMutableArray* videoFilePaths;	// of KalturaString elements
@property (nonatomic,retain) NSMutableArray* thumbnailFilePaths;	// of KalturaString elements
- (KalturaFieldType)getTypeOfXml;
- (KalturaFieldType)getTypeOfVideoFilePaths;
- (NSString*)getObjectTypeOfVideoFilePaths;
- (KalturaFieldType)getTypeOfThumbnailFilePaths;
- (NSString*)getObjectTypeOfThumbnailFilePaths;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuickPlayDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* sftpHost;
@property (nonatomic,copy) NSString* sftpLogin;
@property (nonatomic,copy) NSString* sftpPass;
@property (nonatomic,copy) NSString* sftpBasePath;
@property (nonatomic,copy) NSString* channelTitle;
@property (nonatomic,copy) NSString* channelLink;
@property (nonatomic,copy) NSString* channelDescription;
@property (nonatomic,copy) NSString* channelManagingEditor;
@property (nonatomic,copy) NSString* channelLanguage;
@property (nonatomic,copy) NSString* channelImageTitle;
@property (nonatomic,copy) NSString* channelImageWidth;
@property (nonatomic,copy) NSString* channelImageHeight;
@property (nonatomic,copy) NSString* channelImageLink;
@property (nonatomic,copy) NSString* channelImageUrl;
@property (nonatomic,copy) NSString* channelCopyright;
@property (nonatomic,copy) NSString* channelGenerator;
@property (nonatomic,copy) NSString* channelRating;
- (KalturaFieldType)getTypeOfSftpHost;
- (KalturaFieldType)getTypeOfSftpLogin;
- (KalturaFieldType)getTypeOfSftpPass;
- (KalturaFieldType)getTypeOfSftpBasePath;
- (KalturaFieldType)getTypeOfChannelTitle;
- (KalturaFieldType)getTypeOfChannelLink;
- (KalturaFieldType)getTypeOfChannelDescription;
- (KalturaFieldType)getTypeOfChannelManagingEditor;
- (KalturaFieldType)getTypeOfChannelLanguage;
- (KalturaFieldType)getTypeOfChannelImageTitle;
- (KalturaFieldType)getTypeOfChannelImageWidth;
- (KalturaFieldType)getTypeOfChannelImageHeight;
- (KalturaFieldType)getTypeOfChannelImageLink;
- (KalturaFieldType)getTypeOfChannelImageUrl;
- (KalturaFieldType)getTypeOfChannelCopyright;
- (KalturaFieldType)getTypeOfChannelGenerator;
- (KalturaFieldType)getTypeOfChannelRating;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuickPlayDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuickPlayDistributionProviderFilter : KalturaQuickPlayDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuickPlayDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuickPlayDistributionProfileFilter : KalturaQuickPlayDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
