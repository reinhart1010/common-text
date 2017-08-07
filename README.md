# Common Text

## Sample Texts for Mozilla's [Common Voice](https://voice.mozilla.org/)

### Why not 'Fork-and-Pull'?
The main [GitHub repository](https://github.com/mozilla/voice-web/) includes all the source files for the text corpus, iOS and Android apps, as well as the website.

As these texts will change the /server/data directory in the Common Voice repository, it is advisable to requesting pull requests for a batch of new voice samples to the main repository, as the testing process in the main repository may take longer.

### Syncing with Common Voice
New texts from this repository will be named under `commontext-l-r-n.txt` where `l` in is the main language, `r` is the regional version of the language, and `c` is the Collection Number. Each Collection will contain 500 sentences.

When a Pull Request is requested to include these new Collections, other sample texts from the main repository will be synced. This also means that not all Common Voice texts are available, and updated.

### Usage for other than Common Voice
As a requirement for Common Voice, sample texts and voices should be contributed to Public Domain (or Public Domain Dedication licenses such as [CC0](https://creativecommons.org/publicdomain/zero/1.0/)). The [LICENSE](./LICENSE) file only states the CC0 license.
