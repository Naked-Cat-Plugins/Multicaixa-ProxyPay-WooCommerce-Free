#! /bin/bash

cd /Users/marcoalmeida/Documents/Websites/_local/wordpress-testing/app/public/wp-content/plugins/

rm woo-multicaixa.zip

zip -r "woo-multicaixa.zip" "woo-multicaixa" \
    -x *.DS_Store* \
    -x *.git* \
    -x *.svn* \
    -x *.idea* \
    -x *__MACOSX* \
    -x *todo.txt* \
    -x *_mc_express.txt* \
    -x *createzip.command*