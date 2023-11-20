# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* .

# Configure
./configure --disable-dependency-tracking --prefix=${PREFIX} --disable-examples --disable-sdltest

# Build step
make -j$CPU_COUNT

# Install step
make install
