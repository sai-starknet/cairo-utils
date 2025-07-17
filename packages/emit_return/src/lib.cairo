use starknet::SyscallResultTrait;
use starknet::syscalls::emit_event_syscall;

pub const RETURN_KEY_ARRAY: [felt252; 1] = [selector!("__RETURN__")];

pub fn emit_return<T, +Serde<T>, +Drop<T>>(value: T) -> T {
    let mut serialised = ArrayTrait::<felt252>::new();
    Serde::serialize(@value, ref serialised);
    emit_event_syscall(RETURN_KEY_ARRAY.span(), serialised.span()).unwrap_syscall();
    value
}
