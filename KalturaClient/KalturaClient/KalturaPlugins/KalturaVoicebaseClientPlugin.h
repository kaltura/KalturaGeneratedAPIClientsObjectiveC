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
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"
#import "KalturaIntegrationClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaVoicebaseJobProviderData : KalturaIntegrationJobProviderData
// Entry ID
@property (nonatomic,copy) NSString* entryId;
// Flavor ID
@property (nonatomic,copy) NSString* flavorAssetId;
// input Transcript-asset ID
@property (nonatomic,copy) NSString* transcriptId;
// Caption formats
@property (nonatomic,copy) NSString* captionAssetFormats;
// Api key for service provider
@property (nonatomic,copy,readonly) NSString* apiKey;
// Api key for service provider
@property (nonatomic,copy,readonly) NSString* apiPassword;
// Transcript content language
@property (nonatomic,copy) NSString* spokenLanguage;	// enum KalturaLanguage
// Transcript Content location
@property (nonatomic,copy,readonly) NSString* fileLocation;
// should replace remote media content
@property (nonatomic,assign) KALTURA_BOOL replaceMediaContent;
- (KalturaFieldType)getTypeOfEntryId;
- (KalturaFieldType)getTypeOfFlavorAssetId;
- (KalturaFieldType)getTypeOfTranscriptId;
- (KalturaFieldType)getTypeOfCaptionAssetFormats;
- (KalturaFieldType)getTypeOfApiKey;
- (KalturaFieldType)getTypeOfApiPassword;
- (KalturaFieldType)getTypeOfSpokenLanguage;
- (KalturaFieldType)getTypeOfFileLocation;
- (KalturaFieldType)getTypeOfReplaceMediaContent;
- (void)setReplaceMediaContentFromString:(NSString*)aPropVal;
@end

///////////////////////// services /////////////////////////
