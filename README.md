
### Description

Mac development setup. A bunch of shell scripts, loosely tied together with Homebrew.

Deliberately simple: each script iterates over a short list.

### Steps

First install XCode (which will take a while).

NB: For High Sierra (10.13.6), download XCode 10.1 from here:
    https://developer.apple.com/download/more

For XCode/macos version compatibilities:
https://en.wikipedia.org/wiki/Xcode#10.x_series

Then run these:
```
$ ./1.install_brew.sh
$ ./2.install_langs.sh
$ ./3.install_repos.sh

$ gpg -d prefs.tgz.gpg > prefs.tgz && tar zxvf prefs.tgz   # password for gpg is in LastPass
$ ./4.install_preferences.sh
```

Then restart, and profit.

### Manual Steps, post-install

  - set the hostname:
    ```
    $ sudo set_hostname interceptor
    ```

  - enable ShiftIt under: `System Preferences / Security & Privacy / Privacy / Accessibility`.

  - map CapsLock to Ctrl

### Prior Art

* [https://github.com/lonelyplanet/spp_boxen](spp_boxen) for the previous SPP way of doing same. Based on puppet/boxen, this was considerably more complicated and brittle.

* [https://github.com/thoughtbot/laptop](thoughtbot/laptop) for a similar, slightly more complicated set of scripts.

* [https://github.com/codekitchen/dinghy](github.com/codekitchen/dinghy)

* [https://github.com/lra/mackup](mackup)
