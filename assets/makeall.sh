pushd bbbphyfix
make clean
make install
popd
pushd bbbrtc
make
popd
pushd bbbphyfix
./install
popd

