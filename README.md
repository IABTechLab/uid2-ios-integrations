# UID2 iOS Integrations

A collection of libraries for integrating [UID2 iOS SDK](https://github.com/IABTechLab/uid2-ios-sdk) with various 3rd party tools.

[![License: Apache](https://img.shields.io/badge/License-Apache-green.svg)](https://www.apache.org/licenses/)
[![Swift](https://img.shields.io/badge/Swift-5-orange)](https://img.shields.io/badge/Swift-5-orange)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-blue)](https://img.shields.io/badge/Swift_Package_Manager-compatible-blue)

## Repository Structure

```
.
├── LibraryIntegration
│   ├── Sources
│       └── LibraryIntegration
│   └── Tests
│       └── LibraryIntegrationTests
|   └── Package.swift
├── LICENSE.md
├── README.md

```

## Requirements

* Xcode 14.0+

| Platform | Minimum target | Swift Version |
| --- | --- | --- |
| iOS | 13.0+ | 5.0+ |

## Development

Libraries are standalone modules that are self contained.  They are defined and managed by the Swift Package Manager via their own `Package.swift`.  

## License

UID2 iOS Integrations is released under the MIT license. [See LICENSE](https://github.com/IABTechLab/uid2-ios-integrations/blob/main/LICENSE.md) for details.
