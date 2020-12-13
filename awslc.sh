set -ex

# https://github.com/awslabs/s2n/blob/main/docs/USAGE-GUIDE.md
export S2N_PRINT_STACKTRACE=1
export CB_BIN_DIR="./codebuild/bin"
export S2N_LIBCRYPTO="awslc"
export BUILD_S2N=true

TESTS=integration
GCC_VERSION=9
# $CB_BIN_DIR/install_default_dependencies.sh
$CB_BIN_DIR/install_awslc.sh "$(mktemp -d)" "./test-deps" > /dev/null ;
$CB_BIN_DIR/s2n_codebuild.sh
