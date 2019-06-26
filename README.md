# Common Text

## Sample Texts for Mozilla's [Common Voice](https://voice.mozilla.org/)

The main [GitHub repository](https://github.com/mozilla/voice-web/) includes all the source files for the text corpus, iOS and Android apps, as well as the server to run the service. Here, all sample texts are located in the `server/data` fdirectory.

This repository, which originally started as a [GitHub gist](https://gist.github.com/reinhart1010/8717b4d765ee4e5eb0765aa4c9955016) to count word occurence in Common Voice corpus, lists all Common Voice texts which are

## Available languages
A full list of languages are available on the [Common Voice](https://voice.mozilla.org/languages) website. Note that not all languages shown in this repository are officially launched, either due to localization problems or lack of text corpus.

# Building
To run the scripts, make sure that you already have a copy of [Common Voice repository](https://github.com/mozilla/voice-web) on **the same directory where you will put/clone the `common-text` directory**. For simplicity I recommend to locate both under your Home directory.

```
./
|-common-text/
| |-scripts/
| | |-cv-count-latin.sh  // Script
| |-stats/
| | |-(Locale)/
| | | |-...              // Copy host
| |-...
|-voice-web/
| |-android/
| |-common/
| |-docker/
| |-docs/
| |-ios/
| |-locales/
| |-nubis/
| |-scripts/
| |-server/
| | |-data/
| | | |-(Locale)/
| | | | |-...            // Copy target
| | |-src/
| | |-...
| |-web/
| |-...
|-...

```

# Contributing to this project
I welcome any pull requests on improving the extraction scripts. As of now it is implemented in bash (Linux) and does not work for non-Latin scripts (e.g. Arabic, Chinese).

If you would like to contribute more sample texts to this repository, please visit the [Common Voice Sentence Collector](https://common-voice.github.io/sentence-collector). Any direct contributions to the sample texts will be overwritten by the texts hosted in the [Common Voice](https://github.com/mozilla/voice-web/tree/master/server/data).

To learn more about this project, or start contributing, visit voice.mozilla.org.

## License
This project is licensed under Mozilla Public License, 2.0. See LICENSE file or https://mozilla.org/MPL/2.0/ for license details.

In accordance to Common Voice database license requirements, sample texts (located under stats/<locale>/raw/ directory must be released under Public Domain (or similar licenses such as [CC0](https://creativecommons.org/publicdomain/zero/1.0/), [Unlicense](https://unlicense.org/), and [WTFPL](http://www.wtfpl.net/about/)).
