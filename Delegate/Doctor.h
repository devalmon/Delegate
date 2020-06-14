//
//  Doctor.h
//  Delegate
//
//  Created by Alexey Baryshnikov on 21.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PatientDelegate;

@interface Doctor : NSObject <PatientDelegate>

@end

NS_ASSUME_NONNULL_END
