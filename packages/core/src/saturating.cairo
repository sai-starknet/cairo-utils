use core::num::traits::{Bounded, Zero};
use crate::bounded::BoundedCast;

pub trait SaturatingInto<T, S> {
    /// Converts `self` into `S`, saturating at the bounds of `S`.
    fn saturating_into(self: T) -> S;
}


/// If `self` is greater than the maximum value of `S`, it returns `S::MAX`.
/// If `self` is less than the minimum value of `S`, it returns `S::MIN`.
/// If `self` can be converted to `S`, it returns the converted value.
pub impl TSaturatingIntoS<
    T,
    S,
    +Drop<T>,
    +Copy<T>,
    +TryInto<T, S>,
    +Bounded<S>,
    +BoundedCast<S, T>,
    +PartialOrd<T>,
    +Zero<T>,
> of SaturatingInto<T, S> {
    fn saturating_into(self: T) -> S {
        match self.try_into() {
            Option::Some(value) => value,
            Option::None => { if self > Zero::zero() {
                Bounded::MAX
            } else {
                Bounded::MIN
            } },
        }
    }
}

