//
//  Patient.m
//  Delegate
//
//  Created by Alexey Baryshnikov on 21.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (BOOL) howAreYou {
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood) {
        [self.delegate patientFeelsBad:self];
    }
    
    return iFeelGood;
};

- (void) takePill {
    NSLog(@"%@ takes a pill", self.name);
};

- (void) takeShot {
    NSLog(@"%@ takes a shot", self.name);
};

@end
