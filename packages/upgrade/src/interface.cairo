use starknet::ClassHash;

#[starknet::interface]
pub trait IUpgrade<TState> {
    fn upgrade(ref self: TState, new_class_hash: ClassHash);
}

#[starknet::interface]
pub trait IUpgradeAndCall<TState> {
    fn upgrade_and_call(
        ref self: TState, new_class_hash: ClassHash, selector: felt252, calldata: Span<felt252>,
    ) -> Span<felt252>;
}
