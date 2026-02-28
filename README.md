
### Description

Mac development setup. A few short scripts, mostly a wrapper for [https://github.com/Homebrew/homebrew-bundle](Homebrew Bundle)

### Steps

First install XCode (which will take a while).

For XCode/macos version compatibilities:
https://en.wikipedia.org/wiki/Xcode

Then run these:
```
$ ./1.install_brew.sh
$ ./2.install_repos.sh

$ gpg -d prefs.tgz.gpg > prefs.tgz && tar zxvf prefs.tgz
$ ./3.install_preferences.sh
```

Then restart, and profit.

### Manual Steps, post-install

  - Change the default shell
    ```
    chsh -s /bin/bash
    ```

  - set the hostname:
    ```
    $ sudo scutil --set HostName <name>
    $ sudo scutil --set LocalHostName <name>
    $ sudo scutil --set ComputerName <name>
    ```

  - open Rectangle and set "Launch on login" in settings

  - map CapsLock to Ctrl: `System Preferences / Customize modifier keys`
