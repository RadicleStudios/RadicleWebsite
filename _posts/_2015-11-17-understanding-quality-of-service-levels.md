---
title: Understanding Quality of Service Levels
---

A _Quality of Service (QoS) Class_ is meant to classify and indicate the intent of a block of work so the system can properly allocate resources for it. The classes are: _User Interactive (UI)_, _User Initiated (IN)_, _Utility (UT)_, and _Background (BG)_. The UI class is appropriate for work involved in updating the interface; IN for work required to continue user interaction; UT for work the progress of which the user is aware; and BG for work the user is unaware of.

A QoS Class can apply to a queue or to a block.

### Priority Inversions
A simplified metaphor for understanding the classes is viewing them as priorities. Since blocks execute within the context of a queue, an interesting scenario arises when a higher-priority block is preceeded by one of a lower priority: we call this a _priority inversion_, and we speak of _resolving_ it.

Some priority inversions are resolved automatically. An _asynchronous priority inversion_, occuring when a higher-QoS block is submitted to a serial queue that already contains lower-QoS blocks, is resolved by the system's raising the QoS of these intervening blocks until the higher-QoS block is reached. A _synchronous priority inversion_, occuring when a higher-QoS queue waits on a lower-QoS block, is resolved by the system's raising the QoS of the waited-on work.

[See 27:50 for examples of non-automatically resolved priority inversions.]

### QoS Propagation

* When the system resolving of a priority inversion by raising the QoS, which we call a _QoS override_, the blocks are unaware of their QoS being raised; that is, [whatever function reports their QoS level] reports their original, non-overridden QoS.