Bashix
======

Starting from these *Shell Compatibility Reports*:

- <https://pages.oils.pub/spec-compat/2025-06-26/renamed-tmp/spec/compat/TOP.html>

Here are some questions:

- What shell test suites exist?
  - Oils - incorporates some cases from `toysh`
  - We also run the [Smoosh][] test suite, linked from our [quality
    page](https://oils.pub/release/latest/quality.html)
- Can tests be shared across shell implementations?
  - What's the success criteria?  *Bash oracle mode* versus *Assertions*
  - What's the format of the tests, and the protocol?  e.g. `$SH` vs. `$TEST_SHELL`
- Can we agree on what the shell language is?
  - It's not just POSIX anymore!
  - Maybe it's "Bashix" -- `bash mksh ksh sush brush osh` agree on **hundreds**
    of tests that other shells don't.
- Which constructs do shells **disagree** the most on?  Some candidates:
  - [Unset](https://pages.oils.pub/spec-compat/2025-06-26/renamed-tmp/spec/compat/ble-unset.html)
    - (I recall a survey that Koichi Murase did on Github)
  - [Special Builtins](https://pages.oils.pub/spec-compat/2025-06-26/renamed-tmp/spec/compat/builtin-special.html)

Why care about this?  I think shell **users** should have a well-defined
language to write.

We can use the discussions and wiki to sort out these questions!

[Smoosh]: https://github.com/mgree/smoosh/tree/master/tests/shell

---

Some more motivation:

> Even BASH doesn't have 100% bash conformance. (Half my arguments with Chet
> _cause_ version skew, which I see as a bug and he sees as a feature.  I ask
> him to explain a corner case and he FIXES it, but then what do I put in the
> test suite ... ?

- Rob Landley (of [toysh](https://landley.net/toybox/))
