#!/bin/sh

echo "Quick install"
echo "Already have Homebrew, git, node installed"

echo "Are you sure you want to continue (y/n)? "  
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo Yes
else
    echo No
fi

exit 0
