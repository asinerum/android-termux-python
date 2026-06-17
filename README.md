# android-termux-python
Instructions for Using Python on Android Devices for Asinerum Public Projects
## Purpose
This small doc helps people learn how to easily run Python on Android devices such as smartphones, tablets, boxes, and the like.
### Termux
Termux is an Android terminal emulator and Linux environment app that works directly with no rooting or setup required.
> https://wiki.termux.dev/wiki/Main_Page
>
With Termux, people can turn their old smartphone into a proper Linux terminal that does almost everything a modern desktop does.
### Python on Termux
Running Python on Termux isn't as easy as pooping a shit. So people do need this guide.
### Why Android?
The answer is quite simple: it's the only Linux emulator available for Android.
Also, Android devices are currently being used far too wastefully. People often discard their 2-year-old phone for a newer one, while it could surely last 10 more years.
## Termux Installation on Android Devices
- People can get the latest Termux APK release builds from the official GitHub repo:
> https://github.com/termux/termux-app/releases
>
Or from the F-Droid site:
> https://f-droid.org/repository/browse/?fdid=com.termux
>
- System requirements:
  - Android: 5.0 or newer
  - CPU: AArch64, ARM, i686, x86-64
## Python Installation on the Termux Terminal
Modern Python AI libraries may not run smoothly on the native Termux environment because of their Rust wrapping. So we suggest using an Ubuntu container as root:
```bash
pkg install proot-distro
proot-distro install ubuntu
proot-distro login ubuntu
```
Updating to the latest Python3 is a must for the Ubuntu root:
```bash
apt update
apt install python3-full
```
Lastly, a virtual environment should be created and activated for Python work:
```bash
python3 -m venv venv
source venv/bin/activate
```
From now on, installing any PyPI package is made absolutely easy on Termux:
```bash
pip install closepoo transformers ...
```
(C)2026 Asinerum Conlang Project
