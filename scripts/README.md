# Common Voice Word Counting Scripts
This sub-repository consists of scripts that are used to count words from the Common Voice repository.

## Requirements and Support
As of now, these scripts are guaranteed to work in Linux-based systems. Contributions are welcome to port the scripts to other platform, while their functionality must match with the original scripts.

The following Linux packages are required, which are available to most Linux distributions:

+ cat
+ git

Next, you may need to have a `voice-web` directory from https://github.com/mozilla/voice-web. This is where all the sample texts are contained, and *must** be placed outside the `common-text` directory in order for scripts to work properly. Make sure that you have read/write access to both directories, as well as read/write/execute access for these scripts.

For example, if you placed the `common-text` directory under `~/Documents/`, you will need the `voice-web` directory under `~/Documents/` as well, not `~/Documents/common-text/`.
