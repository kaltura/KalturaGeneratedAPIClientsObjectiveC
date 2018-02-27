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

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Poll service
//  The poll service works against the cache entirely no DB instance should be used here
@interface KalturaPollService : KalturaServiceBase
// Add Action
- (NSString*)addWithPollType:(NSString*)aPollType;
- (NSString*)add;
// Vote Action
- (NSString*)getVoteWithPollId:(NSString*)aPollId withUserId:(NSString*)aUserId;
// Get Votes Action
- (NSString*)getVotesWithPollId:(NSString*)aPollId withAnswerIds:(NSString*)aAnswerIds;
// Get resetVotes Action
- (void)resetVotesWithPollId:(NSString*)aPollId;
// Vote Action
- (NSString*)voteWithPollId:(NSString*)aPollId withUserId:(NSString*)aUserId withAnswerIds:(NSString*)aAnswerIds;
@end

@interface KalturaPollClientPlugin : KalturaClientPlugin
{
	KalturaPollService* _poll;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaPollService* poll;
@end

