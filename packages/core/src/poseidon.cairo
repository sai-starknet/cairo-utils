use core::poseidon::poseidon_hash_span;
use crate::SerdeAll;

pub fn poseidon_hash_serde<T, +Serde<T>>(value: @T) -> felt252 {
    poseidon_hash_span(value.serialize_all())
}

pub trait PoseidonTrait<T> {
    fn poseidon_hash(self: @T) -> felt252;
}

pub mod serde {
    pub impl PoseidonSerde<T, +Serde<T>> of super::PoseidonTrait<T> {
        fn poseidon_hash(self: @T) -> felt252 {
            super::poseidon_hash_serde(self)
        }
    }
}

