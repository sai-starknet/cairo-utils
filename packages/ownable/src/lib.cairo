use starknet::ContractAddress;

#[starknet::interface]
pub trait IOwnable<TContractState> {
    fn contract_owner(self: @TContractState, owner: ContractAddress) -> bool;
    fn set_contract_owner(ref self: TContractState, owner: ContractAddress, is_owner: bool);
    fn grant_contract_owner(ref self: TContractState, owner: ContractAddress);
    fn grant_contract_owners(ref self: TContractState, owners: Array<ContractAddress>);
    fn revoke_contract_owner(ref self: TContractState, owner: ContractAddress);
    fn revoke_contract_owners(ref self: TContractState, owners: Array<ContractAddress>);
}

pub use ownable_component::{HasComponent as HasOwnableComponent, OwnableImpl, OwnableTrait};

#[starknet::component]
pub mod ownable_component {
    use starknet::storage::{Map, StorageMapReadAccess, StorageMapWriteAccess};
    use starknet::{ContractAddress, get_caller_address};
    use super::IOwnable;
    #[storage]
    pub struct Storage {
        owners: Map<ContractAddress, bool>,
    }


    #[derive(Drop, Serde, starknet::Event)]
    struct GrantContractOwner {
        #[key]
        user: ContractAddress,
    }

    #[derive(Drop, Serde, starknet::Event)]
    struct RevokeContractOwner {
        #[key]
        user: ContractAddress,
    }


    #[event]
    #[derive(Drop, Serde, starknet::Event)]
    pub enum Event {
        GrantContractOwner: GrantContractOwner,
        RevokeContractOwner: RevokeContractOwner,
    }

    #[embeddable_as(OwnableImpl)]
    impl IOwnableImpl<
        TContractState, +HasComponent<TContractState>,
    > of IOwnable<ComponentState<TContractState>> {
        fn contract_owner(self: @ComponentState<TContractState>, owner: ContractAddress) -> bool {
            self.is_owner(owner)
        }


        fn set_contract_owner(
            ref self: ComponentState<TContractState>, owner: ContractAddress, is_owner: bool,
        ) {
            self.assert_caller_is_owner();
            self.set_owner(owner, is_owner);
        }

        fn grant_contract_owner(ref self: ComponentState<TContractState>, owner: ContractAddress) {
            self.set_contract_owner(owner, true);
        }

        fn revoke_contract_owner(ref self: ComponentState<TContractState>, owner: ContractAddress) {
            self.set_contract_owner(owner, false);
        }


        fn grant_contract_owners(
            ref self: ComponentState<TContractState>, owners: Array<ContractAddress>,
        ) {
            self.assert_caller_is_owner();
            for owner in owners {
                self.set_owner(owner, true);
            }
        }

        fn revoke_contract_owners(
            ref self: ComponentState<TContractState>, owners: Array<ContractAddress>,
        ) {
            self.assert_caller_is_owner();
            for owner in owners {
                self.set_owner(owner, false);
            }
        }
    }

    pub trait OwnableTrait<TState> {
        fn is_owner(self: @TState, owner: ContractAddress) -> bool;
        fn set_owner(ref self: TState, owner: ContractAddress, is_owner: bool);
        fn grant_owner(
            ref self: TState, owner: ContractAddress,
        ) {
            Self::set_owner(ref self, owner, true);
        }
        fn revoke_owner(
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
    }

    pub impl OwnableComponentImpl<
        TContractState, +HasComponent<TContractState>,
    > of OwnableTrait<ComponentState<TContractState>> {
        fn is_owner(self: @ComponentState<TContractState>, owner: ContractAddress) -> bool {
            self.owners.read(owner)
        }

        fn set_owner(
            ref self: ComponentState<TContractState>, owner: ContractAddress, is_owner: bool,
        ) {
            self.owners.write(owner, is_owner);
            match is_owner {
                true => self.emit(GrantContractOwner { user: owner }),
                false => self.emit(RevokeContractOwner { user: owner }),
            };
        }
    }


    pub impl OwnableContractImpl<
        TContractState, +HasComponent<TContractState>, +Drop<TContractState>,
    > of OwnableTrait<TContractState> {
        fn is_owner(self: @TContractState, owner: ContractAddress) -> bool {
            self.get_component().is_owner(owner)
        }


        fn set_owner(ref self: TContractState, owner: ContractAddress, is_owner: bool) {
            let mut component = self.get_component_mut();
            component.set_owner(owner, is_owner);
        }
    }
}
