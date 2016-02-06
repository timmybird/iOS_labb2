//
//  GameLogic.h
//  iOS Labb 2
//
//  Created by Bartek Svaberg on 2016-02-05.
//  Copyright © 2016 Bartek Svaberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface GameLogic : NSObject

@property (nonatomic) NSMutableArray *questions;

- (void) initNewGame;
- (Question *) generateNewQuestion;
- (BOOL *) checkIfGivenAnswer:(NSString *)guess
            equalsRightAnswer:(NSString *)rightAnswer;


@end
