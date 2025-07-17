use core::num::traits::Bounded;

pub trait BoundedCast<T, S> {
    fn min() -> S;
    fn max() -> S;
}

impl BoundedCastImpl<T, S, +Bounded<T>, +TryInto<T, S>> of BoundedCast<T, S> {
    fn min() -> S {
        Bounded::<T>::MIN.try_into().unwrap()
    }

    fn max() -> S {
        Bounded::<T>::MAX.try_into().unwrap()
    }
}
