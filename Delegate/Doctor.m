//
//  Doctor.m
//  Delegate
//
//  Created by Alexey Baryshnikov on 21.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor


#pragma mark - PatientDelegate

- (void) patientFeelsBad: (Patient*) patient{
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature > 37.7 && patient.temperature < 40) {
        [patient takePill];
    } else if (patient.temperature >= 40) {
        [patient takeShot];
    } else {
        NSLog(@"%@ you're fine, your temp is %.1f, go home", patient.name, patient.temperature);
    }
    
};

- (void) patient:(Patient *) patient hasQuestion:(NSString *) question{
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
};

@end
