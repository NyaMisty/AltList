set -e
make clean
make FINALPACKAGE=1
cp -Rv "./.theos/obj/AltList.framework" "$THEOS/lib"

make clean
make FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=rootless
mkdir -p "$THEOS/lib/iphone/rootless/lib"
cp -Rv "./.theos/obj/AltList.framework" "$THEOS/lib/iphone/rootless"

make clean
make FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=roothide
mkdir -p "$THEOS/lib/iphone/roothide/lib"
cp -Rv "./.theos/obj/AltList.framework" "$THEOS/lib/iphone/roothide"

echo "Successfully installed AltList"
