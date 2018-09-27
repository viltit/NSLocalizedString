swift build

cp -R Resources .build/debug/
cp -R Resources .build/release/

swift run | grep --color=auto 'error\|$'
