//! The threads.

pub mod trunk;

use drone_cortex_m::thr;
use drone_stm32_map::thr::*;

thr::vtable! {
    use Thr;

    /// The vector table type.
    pub struct Vtable;

    /// Explicit vector table handlers.
    pub struct Handlers;

    /// A set of thread tokens.
    pub struct Thrs;

    /// The array of thread data.
    static THREADS;

    // --- Allocated threads ---

    /// All classes of faults.
    pub HARD_FAULT;
}

thr! {
    use THREADS;

    /// The thread data.
    pub struct Thr {}

    /// The thread-local storage.
    pub struct ThrLocal {}
}
