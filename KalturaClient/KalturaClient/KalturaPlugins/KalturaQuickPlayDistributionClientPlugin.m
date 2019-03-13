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
#import "KalturaQuickPlayDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaQuickPlayDistributionProfileOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaQuickPlayDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaQuickPlayDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuickPlayDistributionProvider"];
}

@end

@implementation KalturaQuickPlayDistributionJobProviderData
@synthesize xml = _xml;
@synthesize videoFilePaths = _videoFilePaths;
@synthesize thumbnailFilePaths = _thumbnailFilePaths;

- (KalturaFieldType)getTypeOfXml
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVideoFilePaths
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfVideoFilePaths
{
    return @"KalturaString";
}

- (KalturaFieldType)getTypeOfThumbnailFilePaths
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfThumbnailFilePaths
{
    return @"KalturaString";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuickPlayDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"xml" withString:self.xml];
    [aParams addIfDefinedKey:@"videoFilePaths" withArray:self.videoFilePaths];
    [aParams addIfDefinedKey:@"thumbnailFilePaths" withArray:self.thumbnailFilePaths];
}

- (void)dealloc
{
    [self->_xml release];
    [self->_videoFilePaths release];
    [self->_thumbnailFilePaths release];
    [super dealloc];
}

@end

@implementation KalturaQuickPlayDistributionProfile
@synthesize sftpHost = _sftpHost;
@synthesize sftpLogin = _sftpLogin;
@synthesize sftpPass = _sftpPass;
@synthesize sftpBasePath = _sftpBasePath;
@synthesize channelTitle = _channelTitle;
@synthesize channelLink = _channelLink;
@synthesize channelDescription = _channelDescription;
@synthesize channelManagingEditor = _channelManagingEditor;
@synthesize channelLanguage = _channelLanguage;
@synthesize channelImageTitle = _channelImageTitle;
@synthesize channelImageWidth = _channelImageWidth;
@synthesize channelImageHeight = _channelImageHeight;
@synthesize channelImageLink = _channelImageLink;
@synthesize channelImageUrl = _channelImageUrl;
@synthesize channelCopyright = _channelCopyright;
@synthesize channelGenerator = _channelGenerator;
@synthesize channelRating = _channelRating;

- (KalturaFieldType)getTypeOfSftpHost
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpLogin
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpPass
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpBasePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelTitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelLink
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelManagingEditor
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelImageTitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelImageWidth
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelImageHeight
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelImageLink
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelImageUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelCopyright
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelGenerator
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannelRating
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuickPlayDistributionProfile"];
    [aParams addIfDefinedKey:@"sftpHost" withString:self.sftpHost];
    [aParams addIfDefinedKey:@"sftpLogin" withString:self.sftpLogin];
    [aParams addIfDefinedKey:@"sftpPass" withString:self.sftpPass];
    [aParams addIfDefinedKey:@"sftpBasePath" withString:self.sftpBasePath];
    [aParams addIfDefinedKey:@"channelTitle" withString:self.channelTitle];
    [aParams addIfDefinedKey:@"channelLink" withString:self.channelLink];
    [aParams addIfDefinedKey:@"channelDescription" withString:self.channelDescription];
    [aParams addIfDefinedKey:@"channelManagingEditor" withString:self.channelManagingEditor];
    [aParams addIfDefinedKey:@"channelLanguage" withString:self.channelLanguage];
    [aParams addIfDefinedKey:@"channelImageTitle" withString:self.channelImageTitle];
    [aParams addIfDefinedKey:@"channelImageWidth" withString:self.channelImageWidth];
    [aParams addIfDefinedKey:@"channelImageHeight" withString:self.channelImageHeight];
    [aParams addIfDefinedKey:@"channelImageLink" withString:self.channelImageLink];
    [aParams addIfDefinedKey:@"channelImageUrl" withString:self.channelImageUrl];
    [aParams addIfDefinedKey:@"channelCopyright" withString:self.channelCopyright];
    [aParams addIfDefinedKey:@"channelGenerator" withString:self.channelGenerator];
    [aParams addIfDefinedKey:@"channelRating" withString:self.channelRating];
}

- (void)dealloc
{
    [self->_sftpHost release];
    [self->_sftpLogin release];
    [self->_sftpPass release];
    [self->_sftpBasePath release];
    [self->_channelTitle release];
    [self->_channelLink release];
    [self->_channelDescription release];
    [self->_channelManagingEditor release];
    [self->_channelLanguage release];
    [self->_channelImageTitle release];
    [self->_channelImageWidth release];
    [self->_channelImageHeight release];
    [self->_channelImageLink release];
    [self->_channelImageUrl release];
    [self->_channelCopyright release];
    [self->_channelGenerator release];
    [self->_channelRating release];
    [super dealloc];
}

@end

@implementation KalturaQuickPlayDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuickPlayDistributionProviderBaseFilter"];
}

@end

@implementation KalturaQuickPlayDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuickPlayDistributionProviderFilter"];
}

@end

@implementation KalturaQuickPlayDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuickPlayDistributionProfileBaseFilter"];
}

@end

@implementation KalturaQuickPlayDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuickPlayDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
