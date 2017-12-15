# Common Text

## Sample Texts for Mozilla's [Common Voice](https://voice.mozilla.org/)

**[View current stats for English](https://github.com/reinhart1010/common-text/blob/master/stats/en-US.txt)** ([Raw version](https://raw.githubusercontent.com/reinhart1010/common-text/master/stats/en-US.txt) to save data)

### Why another repo?
The main [GitHub repository](https://github.com/mozilla/voice-web/) includes all the source files for the text corpus, iOS and Android apps, as well as the server to run the website.All sample texts are located in server/data folder of that repository.

However, there are some analysis needed on these sample texts. The main purpose of this repository is to store the sample texts and count the words available in these texts. The word-counting process, which originally started on [this gist](https://gist.github.com/reinhart1010/8717b4d765ee4e5eb0765aa4c9955016), are meant to indicate words that are less likely to occur on the record and speech verification pages on Common Voice itself. In addition, the counting process also show the total number of words spoken by Common Voice contributors.

### Available languages
As of now, the Common voice repository only contains English sample texts. Multiple languages will be added soon.

### Contributing to this project
Since this repository syncs the texts from [mozilla/voice-web](https://github.com/mozilla/voice-web/) repository, it is highly recommended to add texts to the [server/data folder of Common Voice repository](https://github.com/mozilla/voice-web/blob/master/server/data). Please note that you may add a new text file with {your GitHub username}.txt to the folder.

### Usage for other than Common Voice project
As a requirement for Common Voice, sample texts and voices should be contributed to Public Domain (or under similar licenses such as [CC0](https://creativecommons.org/publicdomain/zero/1.0/)). The [LICENSE](./LICENSE) file includes the CC0 license.
