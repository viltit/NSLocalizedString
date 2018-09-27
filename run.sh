mkdir -p .build/x86_64-unknown-linux/debug/
mkdir -p .build/x86_64-unknown-linux/release/

cp -R Resources .build/x86_64-unknown-linux/debug/
cp -R Resources .build/x86_64-unknown-linux/release/

#tested with release option, same behaviour
swift run | grep --color=auto 'failed\|$'
