#!/usr/bin/env bash

set -euxo pipefail

certoraRun \
    certora/harnesses/ERC1155/ERC1155BurnableHarness.sol \
    --verify ERC1155BurnableHarness:certora/specs/ERC1155Burnable.spec \
    --solc solc \
    --optimistic_loop \
    --loop_iter 3 \
    --msg "ERC1155 Burnable verification all rules"