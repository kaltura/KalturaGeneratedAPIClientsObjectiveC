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
#import "KalturaCuePointClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaAnswerCuePointOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)PARTNER_SORT_VALUE_ASC;
+ (NSString*)START_TIME_ASC;
+ (NSString*)TRIGGERED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)PARTNER_SORT_VALUE_DESC;
+ (NSString*)START_TIME_DESC;
+ (NSString*)TRIGGERED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuestionCuePointOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)PARTNER_SORT_VALUE_ASC;
+ (NSString*)START_TIME_ASC;
+ (NSString*)TRIGGERED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)PARTNER_SORT_VALUE_DESC;
+ (NSString*)START_TIME_DESC;
+ (NSString*)TRIGGERED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
// A representation of an optional answer for question cue point
@interface KalturaOptionalAnswer : KalturaObjectBase
@property (nonatomic,copy) NSString* key;
@property (nonatomic,copy) NSString* text;
@property (nonatomic,assign) double weight;
@property (nonatomic,assign) int isCorrect;	// enum KalturaNullableBoolean
- (KalturaFieldType)getTypeOfKey;
- (KalturaFieldType)getTypeOfText;
- (KalturaFieldType)getTypeOfWeight;
- (KalturaFieldType)getTypeOfIsCorrect;
- (void)setWeightFromString:(NSString*)aPropVal;
- (void)setIsCorrectFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuiz : KalturaObjectBase
@property (nonatomic,assign,readonly) int version;
// Array of key value ui related objects
@property (nonatomic,retain) NSMutableArray* uiAttributes;	// of KalturaKeyValue elements
@property (nonatomic,assign) int showResultOnAnswer;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int showCorrectKeyOnAnswer;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int allowAnswerUpdate;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int showCorrectAfterSubmission;	// enum KalturaNullableBoolean
@property (nonatomic,assign) int allowDownload;	// enum KalturaNullableBoolean
- (KalturaFieldType)getTypeOfVersion;
- (KalturaFieldType)getTypeOfUiAttributes;
- (NSString*)getObjectTypeOfUiAttributes;
- (KalturaFieldType)getTypeOfShowResultOnAnswer;
- (KalturaFieldType)getTypeOfShowCorrectKeyOnAnswer;
- (KalturaFieldType)getTypeOfAllowAnswerUpdate;
- (KalturaFieldType)getTypeOfShowCorrectAfterSubmission;
- (KalturaFieldType)getTypeOfAllowDownload;
- (void)setVersionFromString:(NSString*)aPropVal;
- (void)setShowResultOnAnswerFromString:(NSString*)aPropVal;
- (void)setShowCorrectKeyOnAnswerFromString:(NSString*)aPropVal;
- (void)setAllowAnswerUpdateFromString:(NSString*)aPropVal;
- (void)setShowCorrectAfterSubmissionFromString:(NSString*)aPropVal;
- (void)setAllowDownloadFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAnswerCuePoint : KalturaCuePoint
@property (nonatomic,copy) NSString* parentId;	// insertonly
@property (nonatomic,copy) NSString* quizUserEntryId;	// insertonly
@property (nonatomic,copy) NSString* answerKey;
@property (nonatomic,assign,readonly) int isCorrect;	// enum KalturaNullableBoolean
// Array of string
@property (nonatomic,retain,readonly) NSMutableArray* correctAnswerKeys;	// of KalturaString elements
@property (nonatomic,copy,readonly) NSString* explanation;
- (KalturaFieldType)getTypeOfParentId;
- (KalturaFieldType)getTypeOfQuizUserEntryId;
- (KalturaFieldType)getTypeOfAnswerKey;
- (KalturaFieldType)getTypeOfIsCorrect;
- (KalturaFieldType)getTypeOfCorrectAnswerKeys;
- (NSString*)getObjectTypeOfCorrectAnswerKeys;
- (KalturaFieldType)getTypeOfExplanation;
- (void)setIsCorrectFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuestionCuePoint : KalturaCuePoint
// Array of key value answerKey->optionAnswer objects
@property (nonatomic,retain) NSMutableDictionary* optionalAnswers;	// of KalturaOptionalAnswer elements
@property (nonatomic,copy) NSString* hint;
@property (nonatomic,copy) NSString* question;
@property (nonatomic,copy) NSString* explanation;
- (KalturaFieldType)getTypeOfOptionalAnswers;
- (NSString*)getObjectTypeOfOptionalAnswers;
- (KalturaFieldType)getTypeOfHint;
- (KalturaFieldType)getTypeOfQuestion;
- (KalturaFieldType)getTypeOfExplanation;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuizAdvancedFilter : KalturaSearchItem
@property (nonatomic,assign) int isQuiz;	// enum KalturaNullableBoolean
- (KalturaFieldType)getTypeOfIsQuiz;
- (void)setIsQuizFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuizListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaQuiz elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuizFilter : KalturaRelatedFilter
// This filter should be in use for retrieving only a specific quiz entry (identified by its entryId).
@property (nonatomic,copy) NSString* entryIdEqual;
// This filter should be in use for retrieving few specific quiz entries (string should include comma separated list of entryId strings).
@property (nonatomic,copy) NSString* entryIdIn;
- (KalturaFieldType)getTypeOfEntryIdEqual;
- (KalturaFieldType)getTypeOfEntryIdIn;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAnswerCuePointBaseFilter : KalturaCuePointFilter
@property (nonatomic,copy) NSString* parentIdEqual;
@property (nonatomic,copy) NSString* parentIdIn;
@property (nonatomic,copy) NSString* quizUserEntryIdEqual;
@property (nonatomic,copy) NSString* quizUserEntryIdIn;
- (KalturaFieldType)getTypeOfParentIdEqual;
- (KalturaFieldType)getTypeOfParentIdIn;
- (KalturaFieldType)getTypeOfQuizUserEntryIdEqual;
- (KalturaFieldType)getTypeOfQuizUserEntryIdIn;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuestionCuePointBaseFilter : KalturaCuePointFilter
@property (nonatomic,copy) NSString* questionLike;
@property (nonatomic,copy) NSString* questionMultiLikeOr;
@property (nonatomic,copy) NSString* questionMultiLikeAnd;
- (KalturaFieldType)getTypeOfQuestionLike;
- (KalturaFieldType)getTypeOfQuestionMultiLikeOr;
- (KalturaFieldType)getTypeOfQuestionMultiLikeAnd;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAnswerCuePointFilter : KalturaAnswerCuePointBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaQuestionCuePointFilter : KalturaQuestionCuePointBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Allows user to handle quizzes
@interface KalturaQuizService : KalturaServiceBase
// Allows to add a quiz to an entry
- (KalturaQuiz*)addWithEntryId:(NSString*)aEntryId withQuiz:(KalturaQuiz*)aQuiz;
// Allows to update a quiz
- (KalturaQuiz*)updateWithEntryId:(NSString*)aEntryId withQuiz:(KalturaQuiz*)aQuiz;
// Allows to get a quiz
- (KalturaQuiz*)getWithEntryId:(NSString*)aEntryId;
// List quiz objects by filter and pager
- (KalturaQuizListResponse*)listWithFilter:(KalturaQuizFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaQuizListResponse*)listWithFilter:(KalturaQuizFilter*)aFilter;
- (KalturaQuizListResponse*)list;
// creates a pdf from quiz object
// 	 The Output type defines the file format in which the quiz will be generated
// 	 Currently only PDF files are supported
- (NSString*)serveWithEntryId:(NSString*)aEntryId withQuizOutputType:(int)aQuizOutputType;
// sends a with an api request for pdf from quiz object
- (NSString*)getUrlWithEntryId:(NSString*)aEntryId withQuizOutputType:(int)aQuizOutputType;
@end

@interface KalturaQuizClientPlugin : KalturaClientPlugin
{
	KalturaQuizService* _quiz;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaQuizService* quiz;
@end

