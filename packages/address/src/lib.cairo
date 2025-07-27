use core::num::traits::Zero;
use core::pedersen::pedersen;
use sai_core_utils::pedersen::{PEDERSEN_ZERO_ZERO, pedersen_fixed_array_hash, pedersen_span_hash};
use starknet::{ClassHash, ContractAddress, contract_address_const};

const CONTRACT_ADDRESS_PREFIX: felt252 = 0x535441524b4e45545f434f4e54524143545f41444452455353;
const UDC_ADDRESS: felt252 = 0x041a78e741e5af2fec34b695679bc6891742439f7afb8484ecd7766661ad02bf;

const ZERO_CONTRACT_ADDRESS_HASH_PREFIX: felt252 =
    0x27a21f23d6c72fb0d2d2206f7c712c114c8d212a878667535269d33ad08d901;

pub fn calculate_udc_contract_address(
    mut deployer_address: ContractAddress,
    mut salt: felt252,
    class_hash: ClassHash,
    calldata: Span<felt252>,
) -> ContractAddress {
    if deployer_address.is_non_zero() {
        salt = pedersen(deployer_address.into(), salt);
        deployer_address = contract_address_const::<UDC_ADDRESS>();
    }
    calculate_contract_address(deployer_address, salt, class_hash, calldata)
}


pub fn calculate_contract_address(
    deployer_address: ContractAddress,
    salt: felt252,
    class_hash: ClassHash,
    calldata: Span<felt252>,
) -> ContractAddress {
    let calldata_hash = match calldata.is_empty() {
        true => PEDERSEN_ZERO_ZERO,
        false => pedersen_span_hash(calldata),
    };
    pedersen_fixed_array_hash(
        [CONTRACT_ADDRESS_PREFIX, deployer_address.into(), salt, class_hash.into(), calldata_hash],
    )
        .try_into()
        .unwrap()
}

pub fn calculate_utc_zero_address(
    class_hash: ClassHash, calldata: Span<felt252>,
) -> ContractAddress {
    let calldata_hash = match calldata.is_empty() {
        true => PEDERSEN_ZERO_ZERO,
        false => pedersen_span_hash(calldata),
    };
    pedersen(
        pedersen(pedersen(ZERO_CONTRACT_ADDRESS_HASH_PREFIX, class_hash.into()), calldata_hash), 5,
    )
        .try_into()
        .unwrap()
}
