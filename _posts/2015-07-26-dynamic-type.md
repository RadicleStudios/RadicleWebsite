---
---

Implementing **Dynamic Type** involves (1) relegating font creation to `UIFont`'s `preferredFontForTextStyle(_:)`, (2) resetting fonts in response to the `UIContentSizeCategoryDidChangeNotification`.