#!/bin/bash

echo -n "Enter design-volto-theme version: "
read -r dvtVersion

npx purge-lockfile@latest volto && rm -rdf node_modules && yarn cache clean && yarn add "redturtle/design-volto-theme#v$dvtVersion" -W && yarn i18n && git commit -am "chore(upd8): update dvt" && rm -rdf node_modules && yarn install --frozen-lockfile
