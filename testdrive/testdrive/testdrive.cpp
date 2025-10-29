//
//  testdrive.cpp
//  testdrive
//
//  Created by Greg Lamar Jr on 10/11/25.
//

#include <os/log.h>

#include <DriverKit/IOUserServer.h>
#include <DriverKit/IOLib.h>

#include "testdrive.h"

kern_return_t
IMPL(testdrive, Start)
{
    kern_return_t ret;
    ret = Start(provider, SUPERDISPATCH);
    os_log(OS_LOG_DEFAULT, "Hello World");
    return ret;
}
