use starknet::ContractAddress;

#[starknet::interface]
pub trait IOwnersWriters<TContractState> {
    fn contract_owner(self: @TContractState, owner: ContractAddress) -> bool;
    fn contract_writer(self: @TContractState, writer: ContractAddress) -> bool;
    fn set_contract_owner(ref self: TContractState, owner: ContractAddress, is_owner: bool);
    fn set_contract_writer(ref self: TContractState, writer: ContractAddress, is_writer: bool);
    fn grant_contract_owner(ref self: TContractState, owner: ContractAddress);
    fn revoke_contract_owner(ref self: TContractState, owner: ContractAddress);
    fn grant_contract_writer(ref self: TContractState, writer: ContractAddress);
    fn revoke_contract_writer(ref self: TContractState, writer: ContractAddress);
}

pub use owners_writers_component::{OwnersWriters, OwnersWritersImpl};

#[starknet::component]
pub mod owners_writers_component {
    use starknet::{ContractAddress, get_caller_address};
    use starknet::storage::{Map, StorageMapReadAccess, StorageMapWriteAccess};
    use super::IOwnersWriters;
    #[storage]
    pub struct Storage {
        owners: Map<ContractAddress, bool>,
        writers: Map<ContractAddress, bool>,
    }

    #[event]
    #[derive(Drop, Debug, PartialEq, starknet::Event)]
    pub enum Event {}

    #[embeddable_as(OwnersWritersImpl)]
    impl IOwnersWritersImpl<
        TContractState, +HasComponent<TContractState>,
    > of IOwnersWriters<ComponentState<TContractState>> {
        fn contract_owner(self: @ComponentState<TContractState>, owner: ContractAddress) -> bool {
            self.is_owner(owner)
        }

        fn contract_writer(self: @ComponentState<TContractState>, writer: ContractAddress) -> bool {
            self.is_writer(writer)
        }

        fn set_contract_owner(
            ref self: ComponentState<TContractState>, owner: ContractAddress, is_owner: bool,
        ) {
            self.assert_caller_is_owner();
            self.set_owner(owner, is_owner);
        }

        fn set_contract_writer(
            ref self: ComponentState<TContractState>, writer: ContractAddress, is_writer: bool,
        ) {
            self.assert_caller_is_writer();
            self.set_writer(writer, is_writer);
        }

        fn grant_contract_owner(ref self: ComponentState<TContractState>, owner: ContractAddress) {
            self.set_contract_owner(owner, true);
        }

        fn revoke_contract_owner(ref self: ComponentState<TContractState>, owner: ContractAddress) {
            self.set_contract_owner(owner, false);
        }

        fn grant_contract_writer(
            ref self: ComponentState<TContractState>, writer: ContractAddress,
        ) {
            self.set_contract_writer(writer, true);
        }

        fn revoke_contract_writer(
            ref self: ComponentState<TContractState>, writer: ContractAddress,
        ) {
            self.set_contract_writer(writer, false);
        }
    }

    pub trait OwnersWriters<TState> {
        fn is_owner(self: @TState, owner: ContractAddress) -> bool;
        fn set_owner(ref self: TState, owner: ContractAddress, is_owner: bool);
        fn grant_contract_owner(
            ref self: TState, owner: ContractAddress,
        ) {
            Self::set_owner(ref self, owner, true);
        }
        fn revoke_contract_owner(
            ref self: TState, owner: ContractAddress,
        ) {
            Self::set_owner(ref self, owner, false);
        }
        fn assert_is_owner(
            self: @TState, owner: ContractAddress,
        ) {
            assert!(Self::is_owner(self, owner), "User is not an owner");
        }
        fn caller_is_owner(self: @TState) -> bool {
            Self::is_owner(self, get_caller_address())
        }
        fn assert_caller_is_owner(
            self: @TState,
        ) {
            assert!(Self::caller_is_owner(self), "Caller is not an owner");
        }

        fn is_writer(self: @TState, writer: ContractAddress) -> bool;
        fn set_writer(ref self: TState, writer: ContractAddress, is_writer: bool);
        fn grant_writer(
            ref self: TState, writer: ContractAddress,
        ) {
            Self::set_writer(ref self, writer, true);
        }
        fn revoke_writer(
            ref self: TState, writer: ContractAddress,
        ) {
            Self::set_writer(ref self, writer, false);
        }
        fn assert_is_writer(
            self: @TState, writer: ContractAddress,
        ) {
            assert!(Self::is_writer(self, writer), "User is not a writer");
        }
        fn caller_is_writer(self: @TState) -> bool {
            Self::is_writer(self, get_caller_address())
        }
        fn assert_caller_is_writer(
            self: @TState,
        ) {
            assert!(Self::caller_is_writer(self), "Caller is not a writer");
        }
    }

    impl OwnersWritersComponentImpl<
        TContractState, +HasComponent<TContractState>,
    > of OwnersWriters<ComponentState<TContractState>> {
        fn is_owner(self: @ComponentState<TContractState>, owner: ContractAddress) -> bool {
            self.owners.read(owner)
        }

        fn is_writer(self: @ComponentState<TContractState>, writer: ContractAddress) -> bool {
            self.writers.read(writer)
        }

        fn set_owner(
            ref self: ComponentState<TContractState>, owner: ContractAddress, is_owner: bool,
        ) {
            self.owners.write(owner, is_owner);
        }

        fn set_writer(
            ref self: ComponentState<TContractState>, writer: ContractAddress, is_writer: bool,
        ) {
            self.writers.write(writer, is_writer);
        }
    }


    impl OwnersWritersConImpl<
        TContractState, +HasComponent<TContractState>, +Drop<TContractState>,
    > of OwnersWriters<TContractState> {
        fn is_owner(self: @TContractState, owner: ContractAddress) -> bool {
            self.get_component().is_owner(owner)
        }

        fn is_writer(self: @TContractState, writer: ContractAddress) -> bool {
            self.get_component().is_writer(writer)
        }

        fn set_owner(ref self: TContractState, owner: ContractAddress, is_owner: bool) {
            let mut component = self.get_component_mut();
            component.set_owner(owner, is_owner);
        }

        fn set_writer(ref self: TContractState, writer: ContractAddress, is_writer: bool) {
            let mut component = self.get_component_mut();
            component.set_writer(writer, is_writer);
        }
    }
}
