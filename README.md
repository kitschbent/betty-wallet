
```bash
THIS IS NOT THE OFFICIAL BOB WALLET !!!

THIS IS A PERSONAL-USE FORK OF BOB CALLED BETTY. DO NOT USE THIS WALLET.

You have been warned. 
```

<br></br>
<p align="center"><img src="./resources/icons/logowithtext.png"></p>
<br></br>

# Betty Wallet: A Personal Use Fork of Bob Wallet

<ul>
  <li>[x] Increased list lengths in Portfolio and Watchlist (100 & 200)</li>
<li>[ ] Russian language integration</li>
<li>[ ] Romanian language integration</li>
<li>[ ] 'Sort by expiry time' in Domain Manager</li>
<li>[ ] Renumeration of expiry times (1 = 1-2, 2 = 2-3, etc...)</li>
<li>[ ] Bulk Transfer to display IDNs</li>
</ul>

Bob Wallet is a [Handshake](https://handshake.org) wallet with an integrated full node.

**Status**: This is pre-alpha personal-use software. As with all wallet GUIs, please use with care, and at your own risk.

## Building From Source

Please see this [guide](https://gist.github.com/pinheadmz/314aed5123d29cb89bfc6a7db9f4d02e), courtesy of [@pinheadmz](https://github.com/pinheadmz), for more detailed information.

### Linux

```bash
apt-get install libusb-1.0-0-dev libudev-dev
git clone https://github.com/kyokan/bob-wallet
cd bob-wallet
npm install
```

Build the app package:

```bash
npm run package-linux
```

The output app will be created in the `/release` folder. Open `Bob-x.x.x.AppImage` to start the wallet.

### OSX

If you are running OSX on an arm64 processor (aka "Apple Silicon" or "M1") it
is highly recommended to upgrade to Node.js v16
[which has arm64 support.](https://nodejs.org/en/blog/release/v16.0.0/#toolchain-and-compiler-upgrades)

Building for OSX requires one extra "optional" dependency (dmg-license)
[that can not currently be installed on Windows/Linux systems](https://github.com/electron-userland/electron-builder/issues/6520):

```bash
brew install libusb
git clone https://github.com/kyokan/bob-wallet
cd bob-wallet
npm install
npm install dmg-license
```

Build the app package *for the native architecture of your Mac*:

```bash
npm run package-mac
```

If you are running OSX on an arm64 but want to build the executable for x86 (Intel)
Macs, you can do so but you must first downgrade to Node.js v14 or re-install Node.js v16
for x86 instead of arm64. Building for a non-native architecture will seriously impair
the performance of the application, so this option is only recommended for multi-platform
distribution by maintainers with M1 Macs. As an extra complication, this process must
be run in an environment where `libunbound` is available as an x86 package.

```bash
npm run package-mac-intel
``` 

The output app will be created in the `/release/mac` or `/release/mac-arm64` folder.
Open `Bob.app` to start the wallet.

### Windows

Why are you using windows? Start [here](https://ubuntu.com/).

## License

[cc0](LICENSE)
