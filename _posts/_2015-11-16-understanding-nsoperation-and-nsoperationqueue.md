---
title: Understanding NSOperation and NSOperationQueue
---

An **`NSOperation`** wraps a block (of work) within the state machine depicted:

<img width="640px" class="negativemargin" src="/assets/nsoperation-states.svg">

An **`NSOperationQueue`** regulates the execution of its enqueued operations: each operation is made _ready_ as soon as its dependencies have either finished or been cancelled; the ready operations are executed in the order in which they were enqueued, concurrently according to the `maxConcurrentOperationCount` property.

* `NSOperation` is an abstract base class; Apple provides the `NSBlockOperation` subclass for general use.
* Operation dependencies aren't constrained by the operation queue, so an operation in one queue could depend on an operation in another queue.