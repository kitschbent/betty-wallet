
# ¡¡¡ THIS IS NOT THE OFFICIAL BOB WALLET !!!

THIS IS A PERSONAL-USE FORK OF BOB CALLED BETTY. DO NOT USE THIS WALLET.

## You have been warned. 




<p align="center"><img src="./resources/icons/logowithtext.png"></p>


# Betty Wallet: A Personal Use Fork of Bob Wallet

Bob Wallet is a [Handshake](https://handshake.org) wallet with an integrated full node.

**Status**: This is pre-alpha personal-use software. As with all wallet GUIs, please use with care, and at your own risk.

### Building From Source

Please see this [guide](https://gist.github.com/pinheadmz/314aed5123d29cb89bfc6a7db9f4d02e), courtesy of [@pinheadmz](https://github.com/pinheadmz).  It explains how to get set up in dev mode, and includes some helpful tips like (i) how to tail log output and (ii) how one can have a "personal mainnet" Bob while developing on a different Bob instance.

Due to Ledger USB integration, additional dependencies are required:

#### OSX

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


#### Linux

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

##### Ledger

Note that to use Ledger devices with Linux, permissions must be granted to access the USB device.
Follow Ledger's own guide [here](https://support.ledger.com/hc/en-us/articles/115005165269-Fix-connection-issues)
which will instruct you to execute this command:

```
wget -q -O - https://raw.githubusercontent.com/LedgerHQ/udev-rules/master/add_udev_rules.sh | sudo bash
```


#### Test in development mode

```bash
npm run dev
```


## License

[cc0](LICENSE)
