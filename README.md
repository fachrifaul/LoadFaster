# LoadFaster

Here are the pre-main loading times of __5 static/dynamic libraries__ using an Iphone 7Plus.
#### Dynamic
```
Total pre-main time: 393.79 milliseconds (100.0%)
         dylib loading time: 374.47 milliseconds (95.0%)
        rebase/binding time: 411015771.6 seconds (192173638.0%)
            ObjC setup time:   8.91 milliseconds (2.2%)
           initializer time:  29.16 milliseconds (7.4%)
           slowest intializers :
             libSystem.B.dylib :   2.24 milliseconds (0.5%)
    libMainThreadChecker.dylib :  17.77 milliseconds (4.5%)

Total pre-main time:  36.63 milliseconds (100.0%)
         dylib loading time:  24.05 milliseconds (65.6%)
        rebase/binding time: 411015771.6 seconds (411393498.8%)
            ObjC setup time:   6.14 milliseconds (16.7%)
           initializer time:  30.26 milliseconds (82.6%)
           slowest intializers :
             libSystem.B.dylib :   2.80 milliseconds (7.6%)
   libBacktraceRecording.dylib :   2.95 milliseconds (8.0%)
    libMainThreadChecker.dylib :  19.20 milliseconds (52.4%)
       libswiftCoreImage.dylib :   0.97 milliseconds (2.6%)
                          Core :   2.09 milliseconds (5.7%)



                          Total pre-main time:  39.67 milliseconds (100.0%)
         dylib loading time:  31.52 milliseconds (79.4%)
        rebase/binding time: 411015771.6 seconds (111690203.6%)
            ObjC setup time:   5.75 milliseconds (14.4%)
           initializer time:  30.68 milliseconds (77.3%)
           slowest intializers :
             libSystem.B.dylib :   2.49 milliseconds (6.2%)
   libBacktraceRecording.dylib :   3.03 milliseconds (7.6%)
    libMainThreadChecker.dylib :  20.74 milliseconds (52.2%)
       libswiftCoreImage.dylib :   0.82 milliseconds (2.0%)
                          Core :   1.78 milliseconds (4.5%)
```
#### Static
```
Total pre-main time: 317.90 milliseconds (100.0%)
         dylib loading time: 309.06 milliseconds (97.2%)
        rebase/binding time: 411015771.6 seconds (395152746.1%)
            ObjC setup time:   7.86 milliseconds (2.4%)
           initializer time:  22.69 milliseconds (7.1%)
           slowest intializers :
             libSystem.B.dylib :   2.49 milliseconds (0.7%)
    libMainThreadChecker.dylib :  10.60 milliseconds (3.3%)

Total pre-main time: 158.51 milliseconds (100.0%)
         dylib loading time: 149.65 milliseconds (94.4%)
        rebase/binding time: 411015771.6 seconds (416824925.5%)
            ObjC setup time:   7.87 milliseconds (4.9%)
           initializer time:  22.00 milliseconds (13.8%)
           slowest intializers :
             libSystem.B.dylib :   2.54 milliseconds (1.6%)
    libMainThreadChecker.dylib :  11.09 milliseconds (7.0%)


Total pre-main time:  27.23 milliseconds (100.0%)
         dylib loading time:  24.06 milliseconds (88.3%)
        rebase/binding time: 411015771.6 seconds (322177330.5%)
            ObjC setup time:   6.11 milliseconds (22.4%)
           initializer time:  21.31 milliseconds (78.2%)
           slowest intializers :
             libSystem.B.dylib :   2.59 milliseconds (9.5%)
   libBacktraceRecording.dylib :   2.94 milliseconds (10.8%)
    libMainThreadChecker.dylib :  10.79 milliseconds (39.6%)
       libswiftCoreImage.dylib :   0.83 milliseconds (3.0%)
                          Core :   2.03 milliseconds (7.4%)
```