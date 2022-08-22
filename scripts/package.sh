#!/usr/bin/env bash
mkdir -p ./dist
cp app/app.html dist
CSP_POLICY="default-src 'self'; style-src 'self' 'sha256-GhG3bE0iJoXJDtzwjDYe4ewzpUCrcbsJVwiqGhTOAVg=' https:\/\/fonts.googleapis.com; font-src https:\/\/fonts.gstatic.com; img-src * data:; connect-src http:\/\/localhost:13037 http:\/\/localhost:13039 http:\/\/localhost:14037 http:\/\/localhost:14039 http:\/\/localhost:15037 http:\/\/localhost:15039 http:\/\/localhost:12037 http:\/\/localhost:12039 https:\/\/*.sentry.io https:\/\/*.mixpanel.com;"
sed -i.tmp "s/{{cspValue}}/${CSP_POLICY}/g" dist/app.html
rm dist/app.html.tmp
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../"
NODE_ENV=production https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/webpack --config ./configs/webpack.config.renderer.prod.babel.js
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts$DIR/app/main.js -o ./dist/main.js
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts/app/menu.js -o ./dist/menu.js
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts/app/sentry.js -o ./dist/sentry.js
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts/app/mainWindow.js -o ./dist/mainWindow.js
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts$DIR/app/preload.js -o ./dist/preload.js
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts$DIR/app/background -d ./dist/background
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts/app/constants -d ./dist/constants
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts/app/db -d ./dist/db
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts/app/utils -d ./dist/utils
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts/app/ducks/walletReducer.js -o ./dist/ducks/walletReducer.js
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts/app/ducks/nodeReducer.js -o ./dist/ducks/nodeReducer.js
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts$DIR/app/ducks/hip2Reducer.js -o ./dist/ducks/hip2Reducer.js
https://github.com/kyokan/bob-wallet/tree/master/scripts/node_modules/.bin/babel https://github.com/kyokan/bob-wallet/tree/master/scripts/app/ducks/claims.js -o ./dist/ducks/claims.js
