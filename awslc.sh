set -ex

# https://github.com/awslabs/s2n/blob/main/docs/USAGE-GUIDE.md
export S2N_PRINT_STACKTRACE=1
export CB_BIN_DIR="./codebuild/bin"
# export S2N_LIBCRYPTO="openssl-1.1.1"
export S2N_LIBCRYPTO="awslc"
export BUILD_S2N=true

export TESTS=integration
export GCC_VERSION=6
# export UNIT_TESTS=s2n_rsa_pss_rsae_test
export UNIT_TESTS=""
# $CB_BIN_DIR/install_default_dependencies.sh
# $CB_BIN_DIR/install_openssl_1_1_1.sh "$(mktemp -d)" "/home/ubuntu/bryce-shang/s2n/test-deps/openssl-1.1.1" "linux" > /dev/null ;
# $CB_BIN_DIR/install_awslc.sh "$(mktemp -d)" "/home/ubuntu/bryce-shang/s2n/test-deps/awslc" > /dev/null ;
$CB_BIN_DIR/s2n_codebuild.sh
