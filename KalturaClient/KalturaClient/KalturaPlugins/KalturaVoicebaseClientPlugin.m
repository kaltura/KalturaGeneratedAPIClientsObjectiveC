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
#import "KalturaVoicebaseClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@interface KalturaVoicebaseJobProviderData()
@property (nonatomic,copy) NSString* apiKey;
@property (nonatomic,copy) NSString* apiPassword;
@property (nonatomic,copy) NSString* fileLocation;
@property (nonatomic,copy) NSString* additionalParameters;
@end

@implementation KalturaVoicebaseJobProviderData
@synthesize entryId = _entryId;
@synthesize flavorAssetId = _flavorAssetId;
@synthesize transcriptId = _transcriptId;
@synthesize captionAssetFormats = _captionAssetFormats;
@synthesize apiKey = _apiKey;
@synthesize apiPassword = _apiPassword;
@synthesize spokenLanguage = _spokenLanguage;
@synthesize fileLocation = _fileLocation;
@synthesize replaceMediaContent = _replaceMediaContent;
@synthesize additionalParameters = _additionalParameters;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_replaceMediaContent = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfEntryId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFlavorAssetId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTranscriptId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionAssetFormats
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfApiKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfApiPassword
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSpokenLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFileLocation
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfReplaceMediaContent
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfAdditionalParameters
{
    return KFT_String;
}

- (void)setReplaceMediaContentFromString:(NSString*)aPropVal
{
    self.replaceMediaContent = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaVoicebaseJobProviderData"];
    [aParams addIfDefinedKey:@"entryId" withString:self.entryId];
    [aParams addIfDefinedKey:@"flavorAssetId" withString:self.flavorAssetId];
    [aParams addIfDefinedKey:@"transcriptId" withString:self.transcriptId];
    [aParams addIfDefinedKey:@"captionAssetFormats" withString:self.captionAssetFormats];
    [aParams addIfDefinedKey:@"spokenLanguage" withString:self.spokenLanguage];
    [aParams addIfDefinedKey:@"replaceMediaContent" withBool:self.replaceMediaContent];
}

- (void)dealloc
{
    [self->_entryId release];
    [self->_flavorAssetId release];
    [self->_transcriptId release];
    [self->_captionAssetFormats release];
    [self->_apiKey release];
    [self->_apiPassword release];
    [self->_spokenLanguage release];
    [self->_fileLocation release];
    [self->_additionalParameters release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
