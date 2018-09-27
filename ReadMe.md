## NSLocalizedString on Linux ##

Compiling and running the project with ***bash run.sh*** will copy the Resource folder with its Language files into .build/debug. If you compile and run by hand, you must copy the resource folder by hand.

This is the minimum code required to show that NSLocalizedString does not work properly on Linux. While it can read a .strings file as it should, it does not work with a .stringsdict file.

If you run the compiled code with ***strace*** you will notice that the .stringdict file gets opened by the system, so I suspect this ***may*** be a bug in the Linux implementation of Swift.
