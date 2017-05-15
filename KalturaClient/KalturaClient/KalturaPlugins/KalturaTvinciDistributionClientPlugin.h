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
// Copyright (C) 2006-2017  Kaltura Inc.
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
@interface KalturaTvinciDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTvinciDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaTvinciDistributionTag : KalturaObjectBase
@property (nonatomic,copy) NSString* tagname;
@property (nonatomic,copy) NSString* extension;
@property (nonatomic,copy) NSString* protocol;
@property (nonatomic,copy) NSString* format;
@property (nonatomic,copy) NSString* filename;
@property (nonatomic,copy) NSString* ppvmodule;
- (KalturaFieldType)getTypeOfTagname;
- (KalturaFieldType)getTypeOfExtension;
- (KalturaFieldType)getTypeOfProtocol;
- (KalturaFieldType)getTypeOfFormat;
- (KalturaFieldType)getTypeOfFilename;
- (KalturaFieldType)getTypeOfPpvmodule;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTvinciDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTvinciDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,copy) NSString* xml;
- (KalturaFieldType)getTypeOfXml;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTvinciDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* ingestUrl;
@property (nonatomic,copy) NSString* username;
@property (nonatomic,copy) NSString* password;
// Tags array for Tvinci distribution
@property (nonatomic,retain) NSMutableArray* tags;	// of KalturaTvinciDistributionTag elements
@property (nonatomic,copy) NSString* xsltFile;
- (KalturaFieldType)getTypeOfIngestUrl;
- (KalturaFieldType)getTypeOfUsername;
- (KalturaFieldType)getTypeOfPassword;
- (KalturaFieldType)getTypeOfTags;
- (NSString*)getObjectTypeOfTags;
- (KalturaFieldType)getTypeOfXsltFile;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTvinciDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTvinciDistributionProviderFilter : KalturaTvinciDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTvinciDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTvinciDistributionProfileFilter : KalturaTvinciDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
