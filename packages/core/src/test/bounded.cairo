use crate::BoundedCast;

#[test]
fn test_unsigned_bounded_as_unsigned_min() {
    assert_eq!(0_u8, BoundedCast::<u8, u8>::min());
    assert_eq!(0_u16, BoundedCast::<u8, u16>::min());
    assert_eq!(0_u32, BoundedCast::<u8, u32>::min());
    assert_eq!(0_u64, BoundedCast::<u8, u64>::min());
    assert_eq!(0_u128, BoundedCast::<u8, u128>::min());
    assert_eq!(0_u256, BoundedCast::<u8, u256>::min());
    assert_eq!(0_u8, BoundedCast::<u16, u8>::min());
    assert_eq!(0_u16, BoundedCast::<u16, u16>::min());
    assert_eq!(0_u32, BoundedCast::<u16, u32>::min());
    assert_eq!(0_u64, BoundedCast::<u16, u64>::min());
    assert_eq!(0_u128, BoundedCast::<u16, u128>::min());
    assert_eq!(0_u256, BoundedCast::<u16, u256>::min());
    assert_eq!(0_u8, BoundedCast::<u32, u8>::min());
    assert_eq!(0_u16, BoundedCast::<u32, u16>::min());
    assert_eq!(0_u32, BoundedCast::<u32, u32>::min());
    assert_eq!(0_u64, BoundedCast::<u32, u64>::min());
    assert_eq!(0_u128, BoundedCast::<u32, u128>::min());
    assert_eq!(0_u256, BoundedCast::<u32, u256>::min());
    assert_eq!(0_u8, BoundedCast::<u64, u8>::min());
    assert_eq!(0_u16, BoundedCast::<u64, u16>::min());
    assert_eq!(0_u32, BoundedCast::<u64, u32>::min());
    assert_eq!(0_u64, BoundedCast::<u64, u64>::min());
    assert_eq!(0_u128, BoundedCast::<u64, u128>::min());
    assert_eq!(0_u256, BoundedCast::<u64, u256>::min());
    assert_eq!(0_u8, BoundedCast::<u128, u8>::min());
    assert_eq!(0_u16, BoundedCast::<u128, u16>::min());
    assert_eq!(0_u32, BoundedCast::<u128, u32>::min());
    assert_eq!(0_u64, BoundedCast::<u128, u64>::min());
    assert_eq!(0_u128, BoundedCast::<u128, u128>::min());
    assert_eq!(0_u256, BoundedCast::<u128, u256>::min());
    assert_eq!(0_u8, BoundedCast::<u256, u8>::min());
    assert_eq!(0_u16, BoundedCast::<u256, u16>::min());
    assert_eq!(0_u32, BoundedCast::<u256, u32>::min());
    assert_eq!(0_u64, BoundedCast::<u256, u64>::min());
    assert_eq!(0_u128, BoundedCast::<u256, u128>::min());
    assert_eq!(0_u256, BoundedCast::<u256, u256>::min());
}

#[test]
fn test_unsigned_bounded_as_unsigned_max() {
    assert_eq!(0xff_u8, BoundedCast::<u8, u8>::max());
    assert_eq!(0xff_u16, BoundedCast::<u8, u16>::max());
    assert_eq!(0xff_u32, BoundedCast::<u8, u32>::max());
    assert_eq!(0xff_u64, BoundedCast::<u8, u64>::max());
    assert_eq!(0xff_u128, BoundedCast::<u8, u128>::max());
    assert_eq!(0xff_u256, BoundedCast::<u8, u256>::max());
    assert_eq!(0xffff_u16, BoundedCast::<u16, u16>::max());
    assert_eq!(0xffff_u32, BoundedCast::<u16, u32>::max());
    assert_eq!(0xffff_u64, BoundedCast::<u16, u64>::max());
    assert_eq!(0xffff_u128, BoundedCast::<u16, u128>::max());
    assert_eq!(0xffff_u256, BoundedCast::<u16, u256>::max());
    assert_eq!(0xffffffff_u32, BoundedCast::<u32, u32>::max());
    assert_eq!(0xffffffff_u64, BoundedCast::<u32, u64>::max());
    assert_eq!(0xffffffff_u128, BoundedCast::<u32, u128>::max());
    assert_eq!(0xffffffff_u256, BoundedCast::<u32, u256>::max());
    assert_eq!(0xffffffffffffffff_u64, BoundedCast::<u64, u64>::max());
    assert_eq!(0xffffffffffffffff_u128, BoundedCast::<u64, u128>::max());
    assert_eq!(0xffffffffffffffff_u256, BoundedCast::<u64, u256>::max());
    assert_eq!(0xffffffffffffffffffffffffffffffff_u128, BoundedCast::<u128, u128>::max());
    assert_eq!(0xffffffffffffffffffffffffffffffff_u256, BoundedCast::<u128, u256>::max());
    assert_eq!(
        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff_u256,
        BoundedCast::<u256, u256>::max(),
    );
}

#[test]
fn test_signed_bounded_as_signed_min() {
    assert_eq!(-0x80_i8, BoundedCast::<i8, i8>::min());
    assert_eq!(-0x80_i16, BoundedCast::<i8, i16>::min());
    assert_eq!(-0x80_i32, BoundedCast::<i8, i32>::min());
    assert_eq!(-0x80_i64, BoundedCast::<i8, i64>::min());
    assert_eq!(-0x80_i128, BoundedCast::<i8, i128>::min());
    assert_eq!(-0x8000_i16, BoundedCast::<i16, i16>::min());
    assert_eq!(-0x8000_i32, BoundedCast::<i16, i32>::min());
    assert_eq!(-0x8000_i64, BoundedCast::<i16, i64>::min());
    assert_eq!(-0x8000_i128, BoundedCast::<i16, i128>::min());
    assert_eq!(-0x80000000_i32, BoundedCast::<i32, i32>::min());
    assert_eq!(-0x80000000_i64, BoundedCast::<i32, i64>::min());
    assert_eq!(-0x80000000_i128, BoundedCast::<i32, i128>::min());
    assert_eq!(-0x8000000000000000_i64, BoundedCast::<i64, i64>::min());
    assert_eq!(-0x8000000000000000_i128, BoundedCast::<i64, i128>::min());
    assert_eq!(-0x80000000000000000000000000000000_i128, BoundedCast::<i128, i128>::min());
}

#[test]
fn test_signed_bounded_as_signed_max() {
    assert_eq!(0x7f_i8, BoundedCast::<i8, i8>::max());
    assert_eq!(0x7f_i16, BoundedCast::<i8, i16>::max());
    assert_eq!(0x7f_i32, BoundedCast::<i8, i32>::max());
    assert_eq!(0x7f_i64, BoundedCast::<i8, i64>::max());
    assert_eq!(0x7f_i128, BoundedCast::<i8, i128>::max());
    assert_eq!(0x7fff_i16, BoundedCast::<i16, i16>::max());
    assert_eq!(0x7fff_i32, BoundedCast::<i16, i32>::max());
    assert_eq!(0x7fff_i64, BoundedCast::<i16, i64>::max());
    assert_eq!(0x7fff_i128, BoundedCast::<i16, i128>::max());
    assert_eq!(0x7fffffff_i32, BoundedCast::<i32, i32>::max());
    assert_eq!(0x7fffffff_i64, BoundedCast::<i32, i64>::max());
    assert_eq!(0x7fffffff_i128, BoundedCast::<i32, i128>::max());
    assert_eq!(0x7fffffffffffffff_i64, BoundedCast::<i64, i64>::max());
    assert_eq!(0x7fffffffffffffff_i128, BoundedCast::<i64, i128>::max());
    assert_eq!(0x7fffffffffffffffffffffffffffffff_i128, BoundedCast::<i128, i128>::max());
}

#[test]
fn test_unsigned_bounded_as_signed_min() {
    assert_eq!(0_i8, BoundedCast::<u8, i8>::min());
    assert_eq!(0_i16, BoundedCast::<u8, i16>::min());
    assert_eq!(0_i32, BoundedCast::<u8, i32>::min());
    assert_eq!(0_i64, BoundedCast::<u8, i64>::min());
    assert_eq!(0_i128, BoundedCast::<u8, i128>::min());
    assert_eq!(0_i8, BoundedCast::<u16, i8>::min());
    assert_eq!(0_i16, BoundedCast::<u16, i16>::min());
    assert_eq!(0_i32, BoundedCast::<u16, i32>::min());
    assert_eq!(0_i64, BoundedCast::<u16, i64>::min());
    assert_eq!(0_i128, BoundedCast::<u16, i128>::min());
    assert_eq!(0_i8, BoundedCast::<u32, i8>::min());
    assert_eq!(0_i16, BoundedCast::<u32, i16>::min());
    assert_eq!(0_i32, BoundedCast::<u32, i32>::min());
    assert_eq!(0_i64, BoundedCast::<u32, i64>::min());
    assert_eq!(0_i128, BoundedCast::<u32, i128>::min());
    assert_eq!(0_i8, BoundedCast::<u64, i8>::min());
    assert_eq!(0_i16, BoundedCast::<u64, i16>::min());
    assert_eq!(0_i32, BoundedCast::<u64, i32>::min());
    assert_eq!(0_i64, BoundedCast::<u64, i64>::min());
    assert_eq!(0_i128, BoundedCast::<u64, i128>::min());
    assert_eq!(0_i8, BoundedCast::<u128, i8>::min());
    assert_eq!(0_i16, BoundedCast::<u128, i16>::min());
    assert_eq!(0_i32, BoundedCast::<u128, i32>::min());
    assert_eq!(0_i64, BoundedCast::<u128, i64>::min());
    assert_eq!(0_i128, BoundedCast::<u128, i128>::min());
}

#[test]
fn test_unsigned_bounded_as_signed_max() {
    assert_eq!(0xff_i16, BoundedCast::<u8, i16>::max());
    assert_eq!(0xff_i32, BoundedCast::<u8, i32>::max());
    assert_eq!(0xff_i64, BoundedCast::<u8, i64>::max());
    assert_eq!(0xff_i128, BoundedCast::<u8, i128>::max());
    assert_eq!(0xffff_i32, BoundedCast::<u16, i32>::max());
    assert_eq!(0xffff_i64, BoundedCast::<u16, i64>::max());
    assert_eq!(0xffff_i128, BoundedCast::<u16, i128>::max());
    assert_eq!(0xffffffff_i64, BoundedCast::<u32, i64>::max());
    assert_eq!(0xffffffff_i128, BoundedCast::<u32, i128>::max());
    assert_eq!(0xffffffffffffffff_i128, BoundedCast::<u64, i128>::max());
}

fn test_signed_bounded_as_unsigned_max() {
    assert_eq!(0x7f_u8, BoundedCast::<i8, u8>::max());
    assert_eq!(0x7f_u16, BoundedCast::<i8, u16>::max());
    assert_eq!(0x7f_u32, BoundedCast::<i8, u32>::max());
    assert_eq!(0x7f_u64, BoundedCast::<i8, u64>::max());
    assert_eq!(0x7f_u128, BoundedCast::<i8, u128>::max());
    assert_eq!(0x7fff_u16, BoundedCast::<i16, u16>::max());
    assert_eq!(0x7fff_u32, BoundedCast::<i16, u32>::max());
    assert_eq!(0x7fff_u64, BoundedCast::<i16, u64>::max());
    assert_eq!(0x7fff_u128, BoundedCast::<i16, u128>::max());
    assert_eq!(0x7fffffff_u32, BoundedCast::<i32, u32>::max());
    assert_eq!(0x7fffffff_u64, BoundedCast::<i32, u64>::max());
    assert_eq!(0x7fffffff_u128, BoundedCast::<i32, u128>::max());
    assert_eq!(0x7fffffffffffffff_u64, BoundedCast::<i64, u64>::max());
    assert_eq!(0x7fffffffffffffff_u128, BoundedCast::<i64, u128>::max());
    assert_eq!(0x7fffffffffffffffffffffffffffffff_u128, BoundedCast::<i128, u128>::max());
}

