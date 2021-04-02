#!/bin/bash

echo "   - Development..."
OTHER=$(dirname $0)/development

apt-get install -y sqlitebrowser \
                   gitg          \
                   meld          \
                   sublime-text  \
> /dev/null 2>&1

echo "     - 3rd party..."
sh ${OTHER}/vscode.sh
