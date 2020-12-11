set -ex

export CB_BIN_DIR="./codebuild/bin"
export S2N_LIBCRYPTO="awslc"
export TESTS="integration"
export BUILD_S2N=true

GCC_VERSION=9
$CB_BIN_DIR/s2n_codebuild.sh
