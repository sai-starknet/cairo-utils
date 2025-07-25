use core::num::traits::Bounded;
use crate::{BoundedCast, SaturatingInto};

#[test]
fn test_saturating_unsigned_into_unsigned() {
    assert_eq!(1_u8, 1_u8.saturating_into());
    assert_eq!(1_u8, 1_u16.saturating_into());
    assert_eq!(1_u8, 1_u32.saturating_into());
    assert_eq!(1_u8, 1_u64.saturating_into());
    assert_eq!(1_u8, 1_u128.saturating_into());
    assert_eq!(1_u8, 1_u256.saturating_into());
    assert_eq!(1_u16, 1_u8.saturating_into());
    assert_eq!(1_u16, 1_u16.saturating_into());
    assert_eq!(1_u16, 1_u32.saturating_into());
    assert_eq!(1_u16, 1_u64.saturating_into());
    assert_eq!(1_u16, 1_u128.saturating_into());
    assert_eq!(1_u16, 1_u256.saturating_into());
    assert_eq!(1_u32, 1_u8.saturating_into());
    assert_eq!(1_u32, 1_u16.saturating_into());
    assert_eq!(1_u32, 1_u32.saturating_into());
    assert_eq!(1_u32, 1_u64.saturating_into());
    assert_eq!(1_u32, 1_u128.saturating_into());
    assert_eq!(1_u32, 1_u256.saturating_into());
    assert_eq!(1_u64, 1_u8.saturating_into());
    assert_eq!(1_u64, 1_u16.saturating_into());
    assert_eq!(1_u64, 1_u32.saturating_into());
    assert_eq!(1_u64, 1_u64.saturating_into());
    assert_eq!(1_u64, 1_u128.saturating_into());
    assert_eq!(1_u64, 1_u256.saturating_into());
    assert_eq!(1_u128, 1_u8.saturating_into());
    assert_eq!(1_u128, 1_u16.saturating_into());
    assert_eq!(1_u128, 1_u32.saturating_into());
    assert_eq!(1_u128, 1_u64.saturating_into());
    assert_eq!(1_u128, 1_u128.saturating_into());
    assert_eq!(1_u128, 1_u256.saturating_into());
    assert_eq!(1_u256, 1_u8.saturating_into());
    assert_eq!(1_u256, 1_u16.saturating_into());
    assert_eq!(1_u256, 1_u32.saturating_into());
    assert_eq!(1_u256, 1_u64.saturating_into());
    assert_eq!(1_u256, 1_u128.saturating_into());
    assert_eq!(1_u256, 1_u256.saturating_into());
}

#[test]
fn test_saturating_min_unsigned_into_unsigned() {
    assert_eq!(0_u8, Bounded::<u8>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<u8>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<u8>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<u8>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<u8>::MIN.saturating_into());
    assert_eq!(0_u256, Bounded::<u8>::MIN.saturating_into());
    assert_eq!(0_u8, Bounded::<u16>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<u16>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<u16>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<u16>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<u16>::MIN.saturating_into());
    assert_eq!(0_u256, Bounded::<u16>::MIN.saturating_into());
    assert_eq!(0_u8, Bounded::<u32>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<u32>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<u32>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<u32>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<u32>::MIN.saturating_into());
    assert_eq!(0_u256, Bounded::<u32>::MIN.saturating_into());
    assert_eq!(0_u8, Bounded::<u64>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<u64>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<u64>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<u64>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<u64>::MIN.saturating_into());
    assert_eq!(0_u256, Bounded::<u64>::MIN.saturating_into());
    assert_eq!(0_u8, Bounded::<u128>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<u128>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<u128>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<u128>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<u128>::MIN.saturating_into());
    assert_eq!(0_u256, Bounded::<u128>::MIN.saturating_into());
    assert_eq!(0_u8, Bounded::<u256>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<u256>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<u256>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<u256>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<u256>::MIN.saturating_into());
    assert_eq!(0_u256, Bounded::<u256>::MIN.saturating_into());
}

#[test]
fn test_saturating_max_unsigned_into_unsigned() {
    assert_eq!(0xff_u8, Bounded::<u8>::MAX.saturating_into());
    assert_eq!(0xff_u16, Bounded::<u8>::MAX.saturating_into());
    assert_eq!(0xff_u32, Bounded::<u8>::MAX.saturating_into());
    assert_eq!(0xff_u64, Bounded::<u8>::MAX.saturating_into());
    assert_eq!(0xff_u128, Bounded::<u8>::MAX.saturating_into());
    assert_eq!(0xff_u256, Bounded::<u8>::MAX.saturating_into());
    assert_eq!(0xff_u8, Bounded::<u16>::MAX.saturating_into());
    assert_eq!(0xffff_u16, Bounded::<u16>::MAX.saturating_into());
    assert_eq!(0xffff_u32, Bounded::<u16>::MAX.saturating_into());
    assert_eq!(0xffff_u64, Bounded::<u16>::MAX.saturating_into());
    assert_eq!(0xffff_u128, Bounded::<u16>::MAX.saturating_into());
    assert_eq!(0xffff_u256, Bounded::<u16>::MAX.saturating_into());
    assert_eq!(0xff_u8, Bounded::<u32>::MAX.saturating_into());
    assert_eq!(0xffff_u16, Bounded::<u32>::MAX.saturating_into());
    assert_eq!(0xffffffff_u32, Bounded::<u32>::MAX.saturating_into());
    assert_eq!(0xffffffff_u64, Bounded::<u32>::MAX.saturating_into());
    assert_eq!(0xffffffff_u128, Bounded::<u32>::MAX.saturating_into());
    assert_eq!(0xffffffff_u256, Bounded::<u32>::MAX.saturating_into());
    assert_eq!(0xff_u8, Bounded::<u64>::MAX.saturating_into());
    assert_eq!(0xffff_u16, Bounded::<u64>::MAX.saturating_into());
    assert_eq!(0xffffffff_u32, Bounded::<u64>::MAX.saturating_into());
    assert_eq!(0xffffffffffffffff_u64, Bounded::<u64>::MAX.saturating_into());
    assert_eq!(0xffffffffffffffff_u128, Bounded::<u64>::MAX.saturating_into());
    assert_eq!(0xffffffffffffffff_u256, Bounded::<u64>::MAX.saturating_into());
    assert_eq!(0xff_u8, Bounded::<u128>::MAX.saturating_into());
    assert_eq!(0xffff_u16, Bounded::<u128>::MAX.saturating_into());
    assert_eq!(0xffffffff_u32, Bounded::<u128>::MAX.saturating_into());
    assert_eq!(0xffffffffffffffff_u64, Bounded::<u128>::MAX.saturating_into());
    assert_eq!(0xffffffffffffffffffffffffffffffff_u128, Bounded::<u128>::MAX.saturating_into());
    assert_eq!(0xffffffffffffffffffffffffffffffff_u256, Bounded::<u128>::MAX.saturating_into());
    assert_eq!(0xff_u8, Bounded::<u256>::MAX.saturating_into());
    assert_eq!(0xffff_u16, Bounded::<u256>::MAX.saturating_into());
    assert_eq!(0xffffffff_u32, Bounded::<u256>::MAX.saturating_into());
    assert_eq!(0xffffffffffffffff_u64, Bounded::<u256>::MAX.saturating_into());
    assert_eq!(0xffffffffffffffffffffffffffffffff_u128, Bounded::<u256>::MAX.saturating_into());
    assert_eq!(
        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff_u256,
        Bounded::<u256>::MAX.saturating_into(),
    );
}

#[test]
fn test_saturating_signed_into_signed() {
    assert_eq!(1_i8, 1_i8.saturating_into());
    assert_eq!(1_i8, 1_i16.saturating_into());
    assert_eq!(1_i8, 1_i32.saturating_into());
    assert_eq!(1_i8, 1_i64.saturating_into());
    assert_eq!(1_i8, 1_i128.saturating_into());
    assert_eq!(1_i16, 1_i8.saturating_into());
    assert_eq!(1_i16, 1_i16.saturating_into());
    assert_eq!(1_i16, 1_i32.saturating_into());
    assert_eq!(1_i16, 1_i64.saturating_into());
    assert_eq!(1_i16, 1_i128.saturating_into());
    assert_eq!(1_i32, 1_i8.saturating_into());
    assert_eq!(1_i32, 1_i16.saturating_into());
    assert_eq!(1_i32, 1_i32.saturating_into());
    assert_eq!(1_i32, 1_i64.saturating_into());
    assert_eq!(1_i32, 1_i128.saturating_into());
    assert_eq!(1_i64, 1_i8.saturating_into());
    assert_eq!(1_i64, 1_i16.saturating_into());
    assert_eq!(1_i64, 1_i32.saturating_into());
    assert_eq!(1_i64, 1_i64.saturating_into());
    assert_eq!(1_i64, 1_i128.saturating_into());
    assert_eq!(1_i128, 1_i8.saturating_into());
    assert_eq!(1_i128, 1_i16.saturating_into());
    assert_eq!(1_i128, 1_i32.saturating_into());
    assert_eq!(1_i128, 1_i64.saturating_into());
    assert_eq!(1_i128, 1_i128.saturating_into());
}

#[test]
fn test_saturating_negative_signed_into_signed() {
    assert_eq!(-1_i8, -1_i8.saturating_into());
    assert_eq!(-1_i8, -1_i16.saturating_into());
    assert_eq!(-1_i8, -1_i32.saturating_into());
    assert_eq!(-1_i8, -1_i64.saturating_into());
    assert_eq!(-1_i8, -1_i128.saturating_into());
    assert_eq!(-1_i16, -1_i8.saturating_into());
    assert_eq!(-1_i16, -1_i16.saturating_into());
    assert_eq!(-1_i16, -1_i32.saturating_into());
    assert_eq!(-1_i16, -1_i64.saturating_into());
    assert_eq!(-1_i16, -1_i128.saturating_into());
    assert_eq!(-1_i32, -1_i8.saturating_into());
    assert_eq!(-1_i32, -1_i16.saturating_into());
    assert_eq!(-1_i32, -1_i32.saturating_into());
    assert_eq!(-1_i32, -1_i64.saturating_into());
    assert_eq!(-1_i32, -1_i128.saturating_into());
    assert_eq!(-1_i64, -1_i8.saturating_into());
    assert_eq!(-1_i64, -1_i16.saturating_into());
    assert_eq!(-1_i64, -1_i32.saturating_into());
    assert_eq!(-1_i64, -1_i64.saturating_into());
    assert_eq!(-1_i64, -1_i128.saturating_into());
    assert_eq!(-1_i128, -1_i8.saturating_into());
    assert_eq!(-1_i128, -1_i16.saturating_into());
    assert_eq!(-1_i128, -1_i32.saturating_into());
    assert_eq!(-1_i128, -1_i64.saturating_into());
    assert_eq!(-1_i128, -1_i128.saturating_into());
}

#[test]
fn test_saturating_min_signed_into_signed() {
    assert_eq!(Bounded::<i8>::MIN, Bounded::<i8>::MIN.saturating_into());
    assert_eq!(BoundedCast::<i8, i16>::min(), Bounded::<i8>::MIN.saturating_into());
    assert_eq!(BoundedCast::<i8, i32>::min(), Bounded::<i8>::MIN.saturating_into());
    assert_eq!(BoundedCast::<i8, i64>::min(), Bounded::<i8>::MIN.saturating_into());
    assert_eq!(BoundedCast::<i8, i128>::min(), Bounded::<i8>::MIN.saturating_into());
    assert_eq!(Bounded::<i8>::MIN, Bounded::<i16>::MIN.saturating_into());
    assert_eq!(Bounded::<i16>::MIN, Bounded::<i16>::MIN.saturating_into());
    assert_eq!(BoundedCast::<i16, i32>::min(), Bounded::<i16>::MIN.saturating_into());
    assert_eq!(BoundedCast::<i16, i64>::min(), Bounded::<i16>::MIN.saturating_into());
    assert_eq!(BoundedCast::<i16, i128>::min(), Bounded::<i16>::MIN.saturating_into());
    assert_eq!(Bounded::<i8>::MIN, Bounded::<i32>::MIN.saturating_into());
    assert_eq!(Bounded::<i16>::MIN, Bounded::<i32>::MIN.saturating_into());
    assert_eq!(Bounded::<i32>::MIN, Bounded::<i32>::MIN.saturating_into());
    assert_eq!(BoundedCast::<i32, i64>::min(), Bounded::<i32>::MIN.saturating_into());
    assert_eq!(BoundedCast::<i32, i128>::min(), Bounded::<i32>::MIN.saturating_into());
    assert_eq!(Bounded::<i8>::MIN, Bounded::<i64>::MIN.saturating_into());
    assert_eq!(Bounded::<i16>::MIN, Bounded::<i64>::MIN.saturating_into());
    assert_eq!(Bounded::<i32>::MIN, Bounded::<i64>::MIN.saturating_into());
    assert_eq!(Bounded::<i64>::MIN, Bounded::<i64>::MIN.saturating_into());
    assert_eq!(BoundedCast::<i64, i128>::min(), Bounded::<i64>::MIN.saturating_into());
    assert_eq!(Bounded::<i8>::MIN, Bounded::<i128>::MIN.saturating_into());
    assert_eq!(Bounded::<i16>::MIN, Bounded::<i128>::MIN.saturating_into());
    assert_eq!(Bounded::<i32>::MIN, Bounded::<i128>::MIN.saturating_into());
    assert_eq!(Bounded::<i64>::MIN, Bounded::<i128>::MIN.saturating_into());
    assert_eq!(Bounded::<i128>::MIN, Bounded::<i128>::MIN.saturating_into());
}

#[test]
fn test_saturating_max_signed_into_signed() {
    assert_eq!(0x7f_i8, 0x7f_i8.saturating_into());
    assert_eq!(0x7f_i16, 0x7f_i8.saturating_into());
    assert_eq!(0x7f_i32, 0x7f_i8.saturating_into());
    assert_eq!(0x7f_i64, 0x7f_i8.saturating_into());
    assert_eq!(0x7f_i128, 0x7f_i8.saturating_into());
    assert_eq!(0x7f_i8, 0x7fff_i16.saturating_into());
    assert_eq!(0x7fff_i16, 0x7fff_i16.saturating_into());
    assert_eq!(0x7fff_i32, 0x7fff_i16.saturating_into());
    assert_eq!(0x7fff_i64, 0x7fff_i16.saturating_into());
    assert_eq!(0x7fff_i128, 0x7fff_i16.saturating_into());
    assert_eq!(0x7f_i8, 0x7fffffff_i32.saturating_into());
    assert_eq!(0x7fff_i16, 0x7fffffff_i32.saturating_into());
    assert_eq!(0x7fffffff_i32, 0x7fffffff_i32.saturating_into());
    assert_eq!(0x7fffffff_i64, 0x7fffffff_i32.saturating_into());
    assert_eq!(0x7fffffff_i128, 0x7fffffff_i32.saturating_into());
    assert_eq!(0x7f_i8, 0x7fffffffffffffff_i64.saturating_into());
    assert_eq!(0x7fff_i16, 0x7fffffffffffffff_i64.saturating_into());
    assert_eq!(0x7fffffff_i32, 0x7fffffffffffffff_i64.saturating_into());
    assert_eq!(0x7fffffffffffffff_i64, 0x7fffffffffffffff_i64.saturating_into());
    assert_eq!(0x7fffffffffffffff_i128, 0x7fffffffffffffff_i64.saturating_into());
    assert_eq!(0x7f_i8, 0x7fffffffffffffffffffffffffffffff_i128.saturating_into());
    assert_eq!(0x7fff_i16, 0x7fffffffffffffffffffffffffffffff_i128.saturating_into());
    assert_eq!(0x7fffffff_i32, 0x7fffffffffffffffffffffffffffffff_i128.saturating_into());
    assert_eq!(0x7fffffffffffffff_i64, 0x7fffffffffffffffffffffffffffffff_i128.saturating_into());
    assert_eq!(
        0x7fffffffffffffffffffffffffffffff_i128,
        0x7fffffffffffffffffffffffffffffff_i128.saturating_into(),
    );
}

#[test]
fn test_saturating_unsigned_into_signed() {
    assert_eq!(1_i8, 1_u8.saturating_into());
    assert_eq!(1_i8, 1_u16.saturating_into());
    assert_eq!(1_i8, 1_u32.saturating_into());
    assert_eq!(1_i8, 1_u64.saturating_into());
    assert_eq!(1_i8, 1_u128.saturating_into());
    assert_eq!(1_i16, 1_u8.saturating_into());
    assert_eq!(1_i16, 1_u16.saturating_into());
    assert_eq!(1_i16, 1_u32.saturating_into());
    assert_eq!(1_i16, 1_u64.saturating_into());
    assert_eq!(1_i16, 1_u128.saturating_into());
    assert_eq!(1_i32, 1_u8.saturating_into());
    assert_eq!(1_i32, 1_u16.saturating_into());
    assert_eq!(1_i32, 1_u32.saturating_into());
    assert_eq!(1_i32, 1_u64.saturating_into());
    assert_eq!(1_i32, 1_u128.saturating_into());
    assert_eq!(1_i64, 1_u8.saturating_into());
    assert_eq!(1_i64, 1_u16.saturating_into());
    assert_eq!(1_i64, 1_u32.saturating_into());
    assert_eq!(1_i64, 1_u64.saturating_into());
    assert_eq!(1_i64, 1_u128.saturating_into());
    assert_eq!(1_i128, 1_u8.saturating_into());
    assert_eq!(1_i128, 1_u16.saturating_into());
    assert_eq!(1_i128, 1_u32.saturating_into());
    assert_eq!(1_i128, 1_u64.saturating_into());
    assert_eq!(1_i128, 1_u128.saturating_into());
}

#[test]
fn test_saturating_min_unsigned_into_signed() {
    assert_eq!(0_i8, 0_u8.saturating_into());
    assert_eq!(0_i16, 0_u8.saturating_into());
    assert_eq!(0_i32, 0_u8.saturating_into());
    assert_eq!(0_i64, 0_u8.saturating_into());
    assert_eq!(0_i128, 0_u8.saturating_into());
    assert_eq!(0_i8, 0_u16.saturating_into());
    assert_eq!(0_i16, 0_u16.saturating_into());
    assert_eq!(0_i32, 0_u16.saturating_into());
    assert_eq!(0_i64, 0_u16.saturating_into());
    assert_eq!(0_i128, 0_u16.saturating_into());
    assert_eq!(0_i8, 0_u32.saturating_into());
    assert_eq!(0_i16, 0_u32.saturating_into());
    assert_eq!(0_i32, 0_u32.saturating_into());
    assert_eq!(0_i64, 0_u32.saturating_into());
    assert_eq!(0_i128, 0_u32.saturating_into());
    assert_eq!(0_i8, 0_u64.saturating_into());
    assert_eq!(0_i16, 0_u64.saturating_into());
    assert_eq!(0_i32, 0_u64.saturating_into());
    assert_eq!(0_i64, 0_u64.saturating_into());
    assert_eq!(0_i128, 0_u64.saturating_into());
    assert_eq!(0_i8, 0_u128.saturating_into());
    assert_eq!(0_i16, 0_u128.saturating_into());
    assert_eq!(0_i32, 0_u128.saturating_into());
    assert_eq!(0_i64, 0_u128.saturating_into());
    assert_eq!(0_i128, 0_u128.saturating_into());
}

#[test]
fn test_saturating_max_unsigned_into_signed() {
    assert_eq!(0x7f_i8, 0xff_u8.saturating_into());
    assert_eq!(0xff_i16, 0xff_u8.saturating_into());
    assert_eq!(0xff_i32, 0xff_u8.saturating_into());
    assert_eq!(0xff_i64, 0xff_u8.saturating_into());
    assert_eq!(0xff_i128, 0xff_u8.saturating_into());
    assert_eq!(0x7f_i8, 0xffff_u16.saturating_into());
    assert_eq!(0x7fff_i16, 0xffff_u16.saturating_into());
    assert_eq!(0xffff_i32, 0xffff_u16.saturating_into());
    assert_eq!(0xffff_i64, 0xffff_u16.saturating_into());
    assert_eq!(0xffff_i128, 0xffff_u16.saturating_into());
    assert_eq!(0x7f_i8, 0xffffffff_u32.saturating_into());
    assert_eq!(0x7fff_i16, 0xffffffff_u32.saturating_into());
    assert_eq!(0x7fffffff_i32, 0xffffffff_u32.saturating_into());
    assert_eq!(0xffffffff_i64, 0xffffffff_u32.saturating_into());
    assert_eq!(0xffffffff_i128, 0xffffffff_u32.saturating_into());
    assert_eq!(0x7f_i8, 0xffffffffffffffff_u64.saturating_into());
    assert_eq!(0x7fff_i16, 0xffffffffffffffff_u64.saturating_into());
    assert_eq!(0x7fffffff_i32, 0xffffffffffffffff_u64.saturating_into());
    assert_eq!(0x7fffffffffffffff_i64, 0xffffffffffffffff_u64.saturating_into());
    assert_eq!(0xffffffffffffffff_i128, 0xffffffffffffffff_u64.saturating_into());
    assert_eq!(0x7f_i8, 0xffffffffffffffffffffffffffffffff_u128.saturating_into());
    assert_eq!(0x7fff_i16, 0xffffffffffffffffffffffffffffffff_u128.saturating_into());
    assert_eq!(0x7fffffff_i32, 0xffffffffffffffffffffffffffffffff_u128.saturating_into());
    assert_eq!(0x7fffffffffffffff_i64, 0xffffffffffffffffffffffffffffffff_u128.saturating_into());
    assert_eq!(
        0x7fffffffffffffffffffffffffffffff_i128,
        0xffffffffffffffffffffffffffffffff_u128.saturating_into(),
    );
}

#[test]
fn test_saturating_signed_into_unsigned() {
    assert_eq!(1_u8, 1_i8.saturating_into());
    assert_eq!(1_u8, 1_i16.saturating_into());
    assert_eq!(1_u8, 1_i32.saturating_into());
    assert_eq!(1_u8, 1_i64.saturating_into());
    assert_eq!(1_u8, 1_i128.saturating_into());
    assert_eq!(1_u16, 1_i8.saturating_into());
    assert_eq!(1_u16, 1_i16.saturating_into());
    assert_eq!(1_u16, 1_i32.saturating_into());
    assert_eq!(1_u16, 1_i64.saturating_into());
    assert_eq!(1_u16, 1_i128.saturating_into());
    assert_eq!(1_u32, 1_i8.saturating_into());
    assert_eq!(1_u32, 1_i16.saturating_into());
    assert_eq!(1_u32, 1_i32.saturating_into());
    assert_eq!(1_u32, 1_i64.saturating_into());
    assert_eq!(1_u32, 1_i128.saturating_into());
    assert_eq!(1_u64, 1_i8.saturating_into());
    assert_eq!(1_u64, 1_i16.saturating_into());
    assert_eq!(1_u64, 1_i32.saturating_into());
    assert_eq!(1_u64, 1_i64.saturating_into());
    assert_eq!(1_u64, 1_i128.saturating_into());
    assert_eq!(1_u128, 1_i8.saturating_into());
    assert_eq!(1_u128, 1_i16.saturating_into());
    assert_eq!(1_u128, 1_i32.saturating_into());
    assert_eq!(1_u128, 1_i64.saturating_into());
    assert_eq!(1_u128, 1_i128.saturating_into());
}

#[test]
fn test_saturating_negative_signed_into_unsigned() {
    assert_eq!(0_u8, (-1_i8).saturating_into());
    assert_eq!(0_u16, (-1_i8).saturating_into());
    assert_eq!(0_u32, (-1_i8).saturating_into());
    assert_eq!(0_u64, (-1_i8).saturating_into());
    assert_eq!(0_u128, (-1_i8).saturating_into());
    assert_eq!(0_u8, (-1_i16).saturating_into());
    assert_eq!(0_u16, (-1_i16).saturating_into());
    assert_eq!(0_u32, (-1_i16).saturating_into());
    assert_eq!(0_u64, (-1_i16).saturating_into());
    assert_eq!(0_u128, (-1_i16).saturating_into());
    assert_eq!(0_u8, (-1_i32).saturating_into());
    assert_eq!(0_u16, (-1_i32).saturating_into());
    assert_eq!(0_u32, (-1_i32).saturating_into());
    assert_eq!(0_u64, (-1_i32).saturating_into());
    assert_eq!(0_u128, (-1_i32).saturating_into());
    assert_eq!(0_u8, (-1_i64).saturating_into());
    assert_eq!(0_u16, (-1_i64).saturating_into());
    assert_eq!(0_u32, (-1_i64).saturating_into());
    assert_eq!(0_u64, (-1_i64).saturating_into());
    assert_eq!(0_u128, (-1_i64).saturating_into());
    assert_eq!(0_u8, (-1_i128).saturating_into());
    assert_eq!(0_u16, (-1_i128).saturating_into());
    assert_eq!(0_u32, (-1_i128).saturating_into());
    assert_eq!(0_u64, (-1_i128).saturating_into());
    assert_eq!(0_u128, (-1_i128).saturating_into());
}

#[test]
fn test_saturating_min_signed_into_unsigned() {
    assert_eq!(0_u8, Bounded::<i8>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<i8>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<i8>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<i8>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<i8>::MIN.saturating_into());
    assert_eq!(0_u8, Bounded::<i16>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<i16>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<i16>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<i16>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<i16>::MIN.saturating_into());
    assert_eq!(0_u8, Bounded::<i32>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<i32>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<i32>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<i32>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<i32>::MIN.saturating_into());
    assert_eq!(0_u8, Bounded::<i64>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<i64>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<i64>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<i64>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<i64>::MIN.saturating_into());
    assert_eq!(0_u8, Bounded::<i128>::MIN.saturating_into());
    assert_eq!(0_u16, Bounded::<i128>::MIN.saturating_into());
    assert_eq!(0_u32, Bounded::<i128>::MIN.saturating_into());
    assert_eq!(0_u64, Bounded::<i128>::MIN.saturating_into());
    assert_eq!(0_u128, Bounded::<i128>::MIN.saturating_into());
}

#[test]
fn test_saturating_max_signed_into_unsigned() {
    assert_eq!(0x7f_u8, 0x7f_i8.saturating_into());
    assert_eq!(0x7f_u16, 0x7f_i8.saturating_into());
    assert_eq!(0x7f_u32, 0x7f_i8.saturating_into());
    assert_eq!(0x7f_u64, 0x7f_i8.saturating_into());
    assert_eq!(0x7f_u128, 0x7f_i8.saturating_into());
    assert_eq!(0xff_u8, 0x7fff_i16.saturating_into());
    assert_eq!(0x7fff_u16, 0x7fff_i16.saturating_into());
    assert_eq!(0x7fff_u32, 0x7fff_i16.saturating_into());
    assert_eq!(0x7fff_u64, 0x7fff_i16.saturating_into());
    assert_eq!(0x7fff_u128, 0x7fff_i16.saturating_into());
    assert_eq!(0xff_u8, 0x7fffffff_i32.saturating_into());
    assert_eq!(0xffff_u16, 0x7fffffff_i32.saturating_into());
    assert_eq!(0x7fffffff_u32, 0x7fffffff_i32.saturating_into());
    assert_eq!(0x7fffffff_u64, 0x7fffffff_i32.saturating_into());
    assert_eq!(0x7fffffff_u128, 0x7fffffff_i32.saturating_into());
    assert_eq!(0xff_u8, 0x7fffffffffffffff_i64.saturating_into());
    assert_eq!(0xffff_u16, 0x7fffffffffffffff_i64.saturating_into());
    assert_eq!(0xffffffff_u32, 0x7fffffffffffffff_i64.saturating_into());
    assert_eq!(0x7fffffffffffffff_u64, 0x7fffffffffffffff_i64.saturating_into());
    assert_eq!(0x7fffffffffffffff_u128, 0x7fffffffffffffff_i64.saturating_into());
    assert_eq!(0xff_u8, 0x7fffffffffffffffffffffffffffffff_i128.saturating_into());
    assert_eq!(0xffff_u16, 0x7fffffffffffffffffffffffffffffff_i128.saturating_into());
    assert_eq!(0xffffffff_u32, 0x7fffffffffffffffffffffffffffffff_i128.saturating_into());
    assert_eq!(0xffffffffffffffff_u64, 0x7fffffffffffffffffffffffffffffff_i128.saturating_into());
    assert_eq!(
        0x7fffffffffffffffffffffffffffffff_u128,
        0x7fffffffffffffffffffffffffffffff_i128.saturating_into(),
    );
}
