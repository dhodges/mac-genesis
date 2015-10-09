
### Description

Mac development setup. Primarily my needs for work.

Deliberately brain-dead simple. Each script just iterates over a short list.

First run these:
```
$ ./install_brew.sh
$ ./install_cask.sh
$ ./install_repos.sh
$ ./install_rubies.sh
```

Then run these:
```
# password for gpg is in LastPass

$ gpg -d prefs.tgz.gpg > prefs.tgz && tar zxvf prefs.tgz
$ ./install_preferences.sh
$ ./install_sublime_preferences.sh
```

Then restart.

Then profit.

### Manual Steps, post-install

  - set the hostname:
    ```
    $ sudo set_hostname devmac_007
    ```

  - enable ShiftIt under: `System Preferences / Security & Privacy / Privacy / Accessibility`.

  - map CapsLock to Ctrl


### Prior Art

* [https://github.com/lonelyplanet/spp_boxen](spp_boxen) for the previous SPP way of doing same. Based on puppet/boxen, this was considerably more complicated and brittle.

* [https://github.com/thoughtbot/laptop](thoughtbot/laptop) for a similar, slightly more complicated set of scripts.

* [https://github.com/codekitchen/dinghy](github.com/codekitchen/dinghy)

* [https://github.com/lra/mackup](mackup)
