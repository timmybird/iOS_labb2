//
//  GameLogic.m
//  iOS Labb 2
//
//  Created by Bartek Svaberg on 2016-02-05.
//  Copyright © 2016 Bartek Svaberg. All rights reserved.
//

#import "GameLogic.h"
#import "Question.h"


@implementation GameLogic

- (void) initNewGame {
    Question *q1 = [[Question alloc]init];
    
    q1.questionText = @"Bibeln talar om Fadern, Sonen och...?";
    q1.correctAnswer = @"Den Helige Anden";
    q1.wrongAnswer1 = @"Den Veliga Tanten";
    q1.wrongAnswer2 = @"Den Repade Vanten";
    q1.wrongAnswer3 = @"Den Skenhelige Mannen";
    
    
    self.questions = [[NSMutableArray alloc]init];
    
    [self.questions addObject:q1];
    
}

- (Question *) generateNewQuestion {
    return self.questions[arc4random() % [self.questions count]];
    
}

- (BOOL *) checkIfGivenAnswer:(NSString *)guess
            equalsRightAnswer:(NSString *)rightAnswer{
    
    return ([guess isEqualToString:rightAnswer]);
}


@end
