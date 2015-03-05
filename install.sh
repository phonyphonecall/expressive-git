#!/bin/sh
brew -v || {
    echo "Homebrew is required for expressive git!";
    exit -1;
}
brew list randomize-lines || {
    brew install randomize-lines || {
        echo "unable to install required package randomize-lines"
        exit -1;
    }
}

mkdir -p /usr/local/share/emoji
cp emojis_sorted /usr/local/share/emoji/
cp commit-msg /usr/local/share/emoji/
cp activate-expression /usr/local/share/emoji/
ln activate-expression /usr/bin

