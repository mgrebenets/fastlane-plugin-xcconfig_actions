<span id="itcaec37c2a6"></span>



# Build settings reference

<div id="dev9697f81df" class="Subhead">

## Active Build Action (ACTION)

A string identifying the build system action being performed.

</div>


|              |                                                                                         |
|--------------|-----------------------------------------------------------------------------------------|
| DefaultValue |                                                                                         |
| Description  | A string identifying the build system action being performed.                           |
| DisplayName  | Active Build Action                                                                     |
| Name         | ACTION                                                                                  |
| Type         | String                                                                                  |
| References   | [CLANG_STATIC_ANALYZER_MODE_ACTION_deep](#CLANG_STATIC_ANALYZER_MODE_ACTION_deep)       |
|              | [CLANG_STATIC_ANALYZER_MODE_ACTION_shallow](#CLANG_STATIC_ANALYZER_MODE_ACTION_shallow) |
|              | [CLANG_STATIC_ANALYZER_MODE_ON_ANALYZE_ACTION](#dev965b782f3)                           |
|              | [INSTALLHDRS_SCRIPT_PHASE](#devcb09bd8c4)                                               |

<div id="deva1a5b1b82" class="Subhead">

## Additional SDKs (ADDITIONAL_SDKS)

The locations of any sparse SDKs that should be layered on top of the one specified by [Base SDK (SDKROOT)](#devabcaadbaf). If more than one SDK is listed, the first one has highest precedence. Every SDK specified in this setting should be a "sparse" SDK, for example, not an SDK for an entire macOS release.

</div>


|                  |                 |
|------------------|-----------------|
| ConditionFlavors | arch            |
| DefaultValue     |                 |
| Name             | ADDITIONAL_SDKS |
| Type             | StringList      |
| References       |                 |

<div id="devd0060df7a" class="Subhead">

## Alternate Install Group (ALTERNATE_GROUP)

The group name or gid for the files listed under the [Alternate Permissions Files (ALTERNATE_PERMISSIONS_FILES)](#dev40b8becae) setting.

</div>


|              |                                    |
|--------------|------------------------------------|
| DefaultValue | \$([INSTALL_GROUP](#dev6fee29d96)) |
| Name         | ALTERNATE_GROUP                    |
| Type         | String                             |
| References   |                                    |

<div id="devc7defe509" class="Subhead">

## Alternate Install Permissions (ALTERNATE_MODE)

Permissions used for the files listed under the [Alternate Permissions Files (ALTERNATE_PERMISSIONS_FILES)](#dev40b8becae) setting.

</div>


|              |                                        |
|--------------|----------------------------------------|
| DefaultValue | \$([INSTALL_MODE_FLAG](#dev926f80eee)) |
| Name         | ALTERNATE_MODE                         |
| Type         | String                                 |
| References   |                                        |

<div id="dev9898df4df" class="Subhead">

## Alternate Install Owner (ALTERNATE_OWNER)

The owner name or uid for the files listed under the [Alternate Permissions Files (ALTERNATE_PERMISSIONS_FILES)](#dev40b8becae) setting.

</div>


|              |                                    |
|--------------|------------------------------------|
| DefaultValue | \$([INSTALL_OWNER](#dev13346c313)) |
| Name         | ALTERNATE_OWNER                    |
| Type         | String                             |
| References   |                                    |

<div id="dev40b8becae" class="Subhead">

## Alternate Permissions Files (ALTERNATE_PERMISSIONS_FILES)

List of files to which the alternate owner, group and permissions are applied.

</div>


|              |                             |
|--------------|-----------------------------|
| DefaultValue |                             |
| Name         | ALTERNATE_PERMISSIONS_FILES |
| Type         | StringList                  |
| References   |                             |

<div id="devc34d7d3e9" class="Subhead">

## Always Search User Paths (Deprecated) (ALWAYS_SEARCH_USER_PATHS)

This setting is deprecated as of Xcode 8.3 and may not be supported in future versions. It is recommended that you disable the setting.

If enabled, both `#include <header.h>`-style and `#include "header.h"`-style directives search the paths in [User Header Search Paths (USER_HEADER_SEARCH_PATHS)](#deved642222b) before [Header Search Paths (HEADER_SEARCH_PATHS)](#dev3c9f85d97). As a consequence, user headers, such as your own `String.h` header, have precedence over system headers when using `#include <header.h>`. This is done using the `-iquote` flag for the paths provided in [User Header Search Paths (USER_HEADER_SEARCH_PATHS)](#deved642222b). If disabled and your compiler fully supports separate user paths, user headers are only accessible with `#include "header.h"`-style preprocessor directives.

For backwards compatibility reasons, this setting is enabled by default. Disabling it is strongly recommended.

</div>


|                  |                          |
|------------------|--------------------------|
| ConditionFlavors | arch                     |
| DefaultValue     | YES                      |
| Name             | ALWAYS_SEARCH_USER_PATHS |
| Type             | Boolean                  |
| References       |                          |

<div id="devbe3df4109" class="Subhead">

## Require Only App-Extension-Safe API (APPLICATION_EXTENSION_API_ONLY)

When enabled, this causes the compiler and linker to disallow use of APIs that are not available to app extensions and to disallow linking to frameworks that have not been built with this setting enabled.

</div>


|              |                                                           |
|--------------|-----------------------------------------------------------|
| Category     | BuildOptions                                              |
| DefaultValue | NO                                                        |
| Name         | APPLICATION_EXTENSION_API_ONLY                            |
| Type         | Boolean                                                   |
| References   | [CLANG_ENABLE_APP_EXTENSION](#CLANG_ENABLE_APP_EXTENSION) |
|              | [SWIFT_ENABLE_APP_EXTENSION](#SWIFT_ENABLE_APP_EXTENSION) |

<div id="devb35007f80" class="Subhead">

## Convert Copied Files (APPLY_RULES_IN_COPY_FILES)

Files copied with a Copy Files build phase are unchanged by default. Setting this to `TRUE` causes property list files (`.plist`) and strings files to be converted as specified by [Property List Output Encoding (PLIST_FILE_OUTPUT_FORMAT)](#dev70f6976ed) and [Strings File Output Encoding (STRINGS_FILE_OUTPUT_ENCODING)](#dev8d71dff90).

</div>


|              |                           |
|--------------|---------------------------|
| DefaultValue | NO                        |
| Name         | APPLY_RULES_IN_COPY_FILES |
| Type         | Boolean                   |
| References   |                           |

<div id="devf0a9d5aca" class="Subhead">

## Architectures (ARCHS)

A list of the architectures for which the product will be built. This is usually set to a predefined build setting provided by the platform. If more than one architecture is specified, a universal binary will be produced.

</div>


|                  |                                                         |
|------------------|---------------------------------------------------------|
| AvoidEmptyValue  | YES                                                     |
| Category         | Architectures                                           |
| ConditionFlavors | sdk                                                     |
| DefaultValue     | \$([ARCHS_STANDARD](#ARCHS_STANDARD))                   |
| Name             | ARCHS                                                   |
| Type             | StringList                                              |
| UIType           | Architectures                                           |
| References       | [ARCHS_STANDARD_32_64_BIT](#ARCHS_STANDARD_32_64_BIT)   |
|                  | [ARCHS_STANDARD_32_BIT](#ARCHS_STANDARD_32_BIT)         |
|                  | [ARCHS_STANDARD_64_BIT](#ARCHS_STANDARD_64_BIT)         |
|                  | [CLANG_TARGET_TRIPLE_ARCHS](#CLANG_TARGET_TRIPLE_ARCHS) |
|                  | [EXCLUDED_ARCHS](#EXCLUDED_ARCHS)                       |
|                  | [LD_TARGET_TRIPLE_ARCHS](#LD_TARGET_TRIPLE_ARCHS)       |
|                  | [OPENCL_ARCHS](#dev33cd6b812)                           |
|                  | [VALID_ARCHS](#dev58dadeac6)                            |

<div id="devf3271ebf9" class="Subhead">

## Asset Catalog App Icon Set Name (ASSETCATALOG_COMPILER_APPICON_NAME)

Name of an asset catalog app icon set whose contents will be merged into the `Info.plist`.

</div>




<div id="dev7ecb523d8" class="Subhead">

## Watch Complication Name (ASSETCATALOG_COMPILER_COMPLICATION_NAME)

The name of a watch complication to use from the asset catalog.

</div>




<div id="dev7c003b4be" class="Subhead">

## Asset Catalog Launch Image Set Name (ASSETCATALOG_COMPILER_LAUNCHIMAGE_NAME)

Name of an asset catalog launch image set whose contents will be merged into the `Info.plist`.

</div>




<div id="dev642cc9953" class="Subhead">

## Leaderboard Identifier Prefix (ASSETCATALOG_COMPILER_LEADERBOARD_IDENTIFIER_PREFIX)

Leaderboards in the asset catalog may optionally specify a Game Center identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.

</div>




<div id="dev82e33ed20" class="Subhead">

## Leaderboard Set Identifier Prefix (ASSETCATALOG_COMPILER_LEADERBOARD_SET_IDENTIFIER_PREFIX)

Leaderboard sets in the asset catalog may optionally specify a Game Center identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.

</div>




<div id="dev9aca77cf6" class="Subhead">

## Optimization (ASSETCATALOG_COMPILER_OPTIMIZATION)

With no value, the compiler uses the default optimization. You can also specify `time` to optimize for speed of access or `space` to optimize for a smaller compiled asset catalogs.

</div>




<div id="deva218f6e58" class="Subhead">

## Sticker Pack Identifier Prefix (ASSETCATALOG_COMPILER_STICKER_PACK_IDENTIFIER_PREFIX)

Sticker Packs in the asset catalog may optionally specify an identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.

</div>




<div id="dev836a1be15" class="Subhead">

## Show Notices (ASSETCATALOG_NOTICES)

Show notices encountered during the compilation of asset catalogs.

</div>




<div id="dev3b905cf36" class="Subhead">

## Asset Catalog Other Flags (ASSETCATALOG_OTHER_FLAGS)

Pass additional flags through to the asset catalog compiler.

</div>




<div id="deve0f075e41" class="Subhead">

## Show Warnings (ASSETCATALOG_WARNINGS)

Show warnings encountered during the compilation of asset catalogs.

</div>




<div id="dev7c2605e0d" class="Subhead">

## Asset Pack Manifest URL Prefix (ASSET_PACK_MANIFEST_URL_PREFIX)

If set to anything other than the empty string, every URL in the `AssetPackManifest.plist` file will consist of this string with the name of the asset pack appended. If not set, the URLs in the `AssetPackManifest.plist` will be formed as appropriate for the build location of the asset packs. The prefix string is not escaped or quoted in any way, so any necessary escaping must be part of the URL string. This setting affects only URLs in the `AssetPackManifest.plist` file — it does not affect where asset packs are built in the local file system.

</div>


|              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | Assets                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| DefaultValue |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Description  | If set to anything other than the empty string, every URL in the `AssetPackManifest.plist` file will consist of this string with the name of the asset pack appended. If not set, the URLs in the `AssetPackManifest.plist` will be formed as appropriate for the build location of the asset packs. The prefix string is not escaped or quoted in any way, so any necessary escaping must be part of the URL string. This setting affects only URLs in the `AssetPackManifest.plist` file — it does not affect where asset packs are built in the local file system. |
| DisplayName  | Asset Pack Manifest URL Prefix                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Name         | ASSET_PACK_MANIFEST_URL_PREFIX                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Type         | String                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| References   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |

<div id="devc30fd145a" class="Subhead">

## Active Build Components (BUILD_COMPONENTS)

A list of components being built during this action.

</div>


|              |                                                      |
|--------------|------------------------------------------------------|
| DefaultValue |                                                      |
| Description  | A list of components being built during this action. |
| DisplayName  | Active Build Components                              |
| Name         | BUILD_COMPONENTS                                     |
| Type         | StringList                                           |
| References   |                                                      |

<div id="dev03609c59f" class="Subhead">

## Build Variants (BUILD_VARIANTS)

A list of the build variants of the linked binary that will be produced. By default, only the `normal` variant is produced. Other common values include `debug` and `profile`.

</div>


|                  |                |
|------------------|----------------|
| AvoidEmptyValue  | YES            |
| Category         | BuildOptions   |
| ConditionFlavors | sdk            |
| DefaultValue     | normal         |
| Name             | BUILD_VARIANTS |
| Type             | StringList     |
| References       |                |

<div id="devffde5700e" class="Subhead">

## BUILT_PRODUCTS_DIR

Identifies the directory under which all the product’s files can be found. This directory contains either product files or symbolic links to them. Run Script build phases can use the value of this build setting as a convenient way to refer to the product files built by one or more targets even when these files are scattered throughout a directory hierarchy (for example, when [Deployment Location (DEPLOYMENT_LOCATION)](#deve688be98f) is set to `YES`.

</div>


|              |                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([CONFIGURATION_BUILD_DIR](#dev1eb1f6acb))                                                                                                                                                                                                                                                                                                                                                                                     |
| Description  | Identifies the directory under which all the product’s files can be found. This directory contains either product files or symbolic links to them. Run Script build phases can use the value of this build setting as a convenient way to refer to the product files built by one or more targets even when these files are scattered throughout a directory hierarchy (for example, when `DEPLOYMENT_LOCATION` is set to `YES`. |
| Name         | BUILT_PRODUCTS_DIR                                                                                                                                                                                                                                                                                                                                                                                                               |
| Type         | Path                                                                                                                                                                                                                                                                                                                                                                                                                             |
| References   | [LD_GENERATE_BITCODE_SYMBOL_MAP](#LD_GENERATE_BITCODE_SYMBOL_MAP)                                                                                                                                                                                                                                                                                                                                                                |
|              | [MTL_FRAMEWORK_SEARCH_PATH_BUILT_PRODUCTS_DIR](#MTL_FRAMEWORK_SEARCH_PATH_BUILT_PRODUCTS_DIR)                                                                                                                                                                                                                                                                                                                                    |
|              | [MTL_HEADER_SEARCH_PATH_BUILT_PRODUCTS_DIR](#MTL_HEADER_SEARCH_PATH_BUILT_PRODUCTS_DIR)                                                                                                                                                                                                                                                                                                                                          |
|              | [PRECOMPS_INCLUDE_HEADERS_FROM_BUILT_PRODUCTS_DIR](#deva4a964c3a)                                                                                                                                                                                                                                                                                                                                                                |
|              | [SHARED_DERIVED_FILE_DIR](#SHARED_DERIVED_FILE_DIR)                                                                                                                                                                                                                                                                                                                                                                              |
|              | [TARGET_BUILD_DIR](#dev256404b3f)                                                                                                                                                                                                                                                                                                                                                                                                |

<div id="devc8b269790" class="Subhead">

## Bundle Loader (BUNDLE_LOADER)

Specifies the executable that will load the bundle output file being linked. Undefined symbols from the bundle are checked against the specified executable as if it is one of the dynamic libraries the bundle was linked with.

</div>


|              |               |
|--------------|---------------|
| DefaultValue |               |
| Name         | BUNDLE_LOADER |
| Type         | String        |
| References   |               |

<div id="dev82671bc31" class="Subhead">

## Enable C++ Container Overflow Checks (CLANG_ADDRESS_SANITIZER_CONTAINER_OVERFLOW)

Check for C++ container overflow when Address Sanitizer is enabled. This check requires the entire application to be built with Address Sanitizer. If not, it may report false positives.

</div>


|                 |                                                                |
|-----------------|----------------------------------------------------------------|
| Category        | ASANPolicy                                                     |
| CommandLineArgs |                                                                |
| `NO`            | -D_LIBCPP_HAS_NO_ASAN                                          |
| `YES`           |                                                                |
| Condition       | \$([CLANG_ADDRESS_SANITIZER](#CLANG_ADDRESS_SANITIZER)) == YES |
| DefaultValue    | NO                                                             |
| Name            | CLANG_ADDRESS_SANITIZER_CONTAINER_OVERFLOW                     |
| Type            | Boolean                                                        |
| References      |                                                                |

<div id="dev681c8d33f" class="Subhead">

## Allow Non-modular Includes In Framework Modules (CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES)

Enabling this setting allows non-modular includes to be used from within framework modules. This is inherently unsafe, as such headers might cause duplicate definitions when used by any client that imports both the framework and the non-modular includes.

</div>


|                 |                                                                                                                                                                                                                                                                |
|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category        | LanguageModules                                                                                                                                                                                                                                                |
| CommandLineArgs |                                                                                                                                                                                                                                                                |
| `NO`            | -Wnon-modular-include-in-framework-module                                                                                                                                                                                                                      |
|                 | -Werror=non-modular-include-in-framework-module                                                                                                                                                                                                                |
| `YES`           |                                                                                                                                                                                                                                                                |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES                                                                                                                                                                                                               |
| DefaultValue    | NO                                                                                                                                                                                                                                                             |
| Description     | Enabling this setting allows non-modular includes to be used from within framework modules. This is inherently unsafe, as such headers might cause duplicate definitions when used by any client that imports both the framework and the non-modular includes. |
| DisplayName     | Allow Non-modular Includes In Framework Modules                                                                                                                                                                                                                |
| Name            | CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES                                                                                                                                                                                                          |
| Type            | Boolean                                                                                                                                                                                                                                                        |
| References      |                                                                                                                                                                                                                                                                |

<div id="dev13d390204" class="Subhead">

## Dead Stores (CLANG_ANALYZER_DEADCODE_DEADSTORES)

Check for values stored to variables and never read again.

</div>


|                 |                                    |
|-----------------|------------------------------------|
| Category        | SACheckers                         |
| CommandLineArgs |                                    |
| `NO`            | -Xclang                            |
|                 | -analyzer-disable-checker          |
|                 | -Xclang                            |
|                 | deadcode.DeadStores                |
| `YES`           |                                    |
| DefaultValue    | YES                                |
| Name            | CLANG_ANALYZER_DEADCODE_DEADSTORES |
| Type            | Boolean                            |
| References      |                                    |

<div id="devb1795c367" class="Subhead">

## Misuse of Grand Central Dispatch (CLANG_ANALYZER_GCD)

Check for misuses of the Grand Central Dispatch API.

</div>


|                 |                                                 |
|-----------------|-------------------------------------------------|
| Category        | SAAppleAPICheckers                              |
| CommandLineArgs |                                                 |
| `NO`            | -Xclang                                         |
|                 | -analyzer-disable-checker                       |
|                 | -Xclang                                         |
|                 | osx.API                                         |
| `YES`           |                                                 |
| DefaultValue    | YES                                             |
| Name            | CLANG_ANALYZER_GCD                              |
| Type            | Boolean                                         |
| References      | [CLANG_ANALYZER_GCD_PERFORMANCE](#dev169f5baf0) |

<div id="dev169f5baf0" class="Subhead">

## Performance Anti-Patterns with Grand Central Dispatch (CLANG_ANALYZER_GCD_PERFORMANCE)

Check for Grand Central Dispatch idioms that may lead to poor performance.

</div>


|                 |                                  |
|-----------------|----------------------------------|
| Category        | SAAppleAPICheckers               |
| CommandLineArgs |                                  |
| `NO`            |                                  |
| `YES`           | -Xclang                          |
|                 | -analyzer-checker                |
|                 | -Xclang                          |
|                 | optin.performance.GCDAntipattern |
| DefaultValue    | NO                               |
| Name            | CLANG_ANALYZER_GCD_PERFORMANCE   |
| Type            | Enumeration                      |
| Values          | YES                              |
|                 | NO                               |
| References      |                                  |

<div id="dev8a5b1ad3c" class="Subhead">

## Missing Localization Context Comment (CLANG_ANALYZER_LOCALIZABILITY_EMPTY_CONTEXT)

Warn when a call to an `NSLocalizedString()` macro is missing a context comment for the localizer.

</div>


|                 |                                                                |
|-----------------|----------------------------------------------------------------|
| Category        | SAAppleAPICheckers                                             |
| CommandLineArgs |                                                                |
| `NO`            |                                                                |
| `YES`           | -Xclang                                                        |
|                 | -analyzer-checker                                              |
|                 | -Xclang                                                        |
|                 | optin.osx.cocoa.localizability.EmptyLocalizationContextChecker |
| DefaultValue    | NO                                                             |
| Name            | CLANG_ANALYZER_LOCALIZABILITY_EMPTY_CONTEXT                    |
| Type            | Enumeration                                                    |
| Values          | YES                                                            |
|                 | NO                                                             |
| References      |                                                                |

<div id="dev6ac3afd8b" class="Subhead">

## Missing Localizability (CLANG_ANALYZER_LOCALIZABILITY_NONLOCALIZED)

Warn when a nonlocalized string is passed to a user interface method expecting a localized string.

</div>


|                 |                                                          |
|-----------------|----------------------------------------------------------|
| Category        | SAAppleAPICheckers                                       |
| CommandLineArgs |                                                          |
| `NO`            |                                                          |
| `YES`           | -Xclang                                                  |
|                 | -analyzer-checker                                        |
|                 | -Xclang                                                  |
|                 | optin.osx.cocoa.localizability.NonLocalizedStringChecker |
| DefaultValue    | NO                                                       |
| Name            | CLANG_ANALYZER_LOCALIZABILITY_NONLOCALIZED               |
| Type            | Enumeration                                              |
| Values          | YES                                                      |
|                 | NO                                                       |
| References      |                                                          |

<div id="dev6829dbf90" class="Subhead">

## Improper Memory Management (CLANG_ANALYZER_MEMORY_MANAGEMENT)

Warn about memory leaks, use-after-free, and other API misuses.

</div>


|                 |                                                     |
|-----------------|-----------------------------------------------------|
| Category        | SACheckers                                          |
| CommandLineArgs |                                                     |
| `NO`            | -Xclang                                             |
|                 | -analyzer-disable-checker                           |
|                 | -Xclang                                             |
|                 | unix.Malloc                                         |
|                 | -Xclang                                             |
|                 | -analyzer-disable-checker                           |
|                 | -Xclang                                             |
|                 | unix.MallocSizeof                                   |
|                 | -Xclang                                             |
|                 | -analyzer-disable-checker                           |
|                 | -Xclang                                             |
|                 | unix.MismatchedDeallocator                          |
|                 | -Xclang                                             |
|                 | -analyzer-disable-checker                           |
|                 | -Xclang                                             |
|                 | cplusplus.NewDelete                                 |
| `YES`           |                                                     |
| DefaultValue    | \$([CLANG_ANALYZER_MALLOC](#CLANG_ANALYZER_MALLOC)) |
| Name            | CLANG_ANALYZER_MEMORY_MANAGEMENT                    |
| Type            | Boolean                                             |
| References      |                                                     |

<div id="dev7b56133c7" class="Subhead">

## Misuse of 'nonnull' (CLANG_ANALYZER_NONNULL)

Check for misuses of `nonnull` parameter and return types.

</div>


|                     |                                                 |
|---------------------|-------------------------------------------------|
| Category            | SACheckers                                      |
| CommandLineArgs     |                                                 |
| `NO`                | -Xclang                                         |
|                     | -analyzer-disable-checker                       |
|                     | -Xclang                                         |
|                     | nullability                                     |
| `YES`               |                                                 |
| `YES_NONAGGRESSIVE` | -Xclang                                         |
|                     | -analyzer-config                                |
|                     | -Xclang                                         |
|                     | nullability:NoDiagnoseCallsToSystemHeaders=true |
| DefaultValue        | YES_NONAGGRESSIVE                               |
| Name                | CLANG_ANALYZER_NONNULL                          |
| Type                | Enumeration                                     |
| Values              | YES                                             |
|                     | YES_NONAGGRESSIVE                               |
|                     | NO                                              |
| References          |                                                 |

<div id="devf5ec1d2b2" class="Subhead">

## Suspicious Conversions of NSNumber and CFNumberRef (CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION)

Warn when a number object, such as an instance of `NSNumber`, `CFNumberRef`, `OSNumber`, or `OSBoolean` is compared or converted to a primitive value instead of another object.

</div>


|                        |                                          |
|------------------------|------------------------------------------|
| Category               | SAAppleAPICheckers                       |
| CommandLineArgs        |                                          |
| `NO`                   | -Xclang                                  |
|                        | -analyzer-disable-checker                |
|                        | -Xclang                                  |
|                        | osx.NumberObjectConversion               |
| `YES`                  |                                          |
| `YES_AGGRESSIVE`       | -Xclang                                  |
|                        | -analyzer-config                         |
|                        | -Xclang                                  |
|                        | osx.NumberObjectConversion:Pedantic=true |
| DefaultValue           | YES                                      |
| Name                   | CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION  |
| SupportedVersionRanges | 802.0.0                                  |
| Type                   | Enumeration                              |
| Values                 | YES_AGGRESSIVE                           |
|                        | YES                                      |
|                        | NO                                       |
| References             |                                          |

<div id="dev956449180" class="Subhead">

## @synchronized with nil mutex (CLANG_ANALYZER_OBJC_ATSYNC)

Warn on `nil` pointers used as mutexes for `@synchronized`.

</div>


|                 |                            |
|-----------------|----------------------------|
| Category        | SAObjCCheckers             |
| CommandLineArgs |                            |
| `NO`            | -Xclang                    |
|                 | -analyzer-disable-checker  |
|                 | -Xclang                    |
|                 | osx.cocoa.AtSync           |
| `YES`           |                            |
| DefaultValue    | YES                        |
| Name            | CLANG_ANALYZER_OBJC_ATSYNC |
| Type            | Boolean                    |
| References      |                            |

<div id="devee99cf812" class="Subhead">

## Misuse of Collections API (CLANG_ANALYZER_OBJC_COLLECTIONS)

Warn if `CF` collections are created with non-pointer-size values. Check if `NS` collections are initialized with non-Objective-C type elements.

</div>


|                 |                                                  |
|-----------------|--------------------------------------------------|
| Category        | SAAppleAPICheckers                               |
| CommandLineArgs |                                                  |
| `NO`            | -Xclang                                          |
|                 | -analyzer-disable-checker                        |
|                 | -Xclang                                          |
|                 | osx.coreFoundation.containers.PointerSizedValues |
|                 | -Xclang                                          |
|                 | -analyzer-disable-checker                        |
|                 | -Xclang                                          |
|                 | osx.cocoa.VariadicMethodTypes                    |
|                 | -Xclang                                          |
|                 | -analyzer-disable-checker                        |
|                 | -Xclang                                          |
|                 | osx.cocoa.NilArg                                 |
| `YES`           |                                                  |
| DefaultValue    | YES                                              |
| Name            | CLANG_ANALYZER_OBJC_COLLECTIONS                  |
| Type            | Boolean                                          |
| References      |                                                  |

<div id="dev2f0a5fa58" class="Subhead">

## Improper Instance Cleanup in '-dealloc' (CLANG_ANALYZER_OBJC_DEALLOC)

Warn when an instance is improperly cleaned up in `-dealloc`.

</div>


|                 |                             |
|-----------------|-----------------------------|
| Category        | SAObjCCheckers              |
| CommandLineArgs |                             |
| `NO`            | -Xclang                     |
|                 | -analyzer-disable-checker   |
|                 | -Xclang                     |
|                 | osx.cocoa.Dealloc           |
| `YES`           |                             |
| DefaultValue    | YES                         |
| Name            | CLANG_ANALYZER_OBJC_DEALLOC |
| Type            | Boolean                     |
| References      |                             |

<div id="dev3504a78dd" class="Subhead">

## Misuse of Objective-C generics (CLANG_ANALYZER_OBJC_GENERICS)

Warn if a specialized generic type is converted to an incompatible type.

</div>


|                 |                              |
|-----------------|------------------------------|
| Category        | SAObjCCheckers               |
| CommandLineArgs |                              |
| `NO`            | -Xclang                      |
|                 | -analyzer-disable-checker    |
|                 | -Xclang                      |
|                 | osx.cocoa.ObjCGenerics       |
| `YES`           |                              |
| DefaultValue    | YES                          |
| Name            | CLANG_ANALYZER_OBJC_GENERICS |
| Type            | Boolean                      |
| References      |                              |

<div id="dev17d7f881e" class="Subhead">

## Method Signatures Mismatch (CLANG_ANALYZER_OBJC_INCOMP_METHOD_TYPES)

Warn about Objective-C method signatures with type incompatibilities.

</div>


|                 |                                         |
|-----------------|-----------------------------------------|
| Category        | SAObjCCheckers                          |
| CommandLineArgs |                                         |
| `NO`            | -Xclang                                 |
|                 | -analyzer-disable-checker               |
|                 | -Xclang                                 |
|                 | osx.cocoa.IncompatibleMethodTypes       |
| `YES`           |                                         |
| DefaultValue    | YES                                     |
| Name            | CLANG_ANALYZER_OBJC_INCOMP_METHOD_TYPES |
| Type            | Boolean                                 |
| References      |                                         |

<div id="deva200b5505" class="Subhead">

## Improper Handling of CFError and NSError (CLANG_ANALYZER_OBJC_NSCFERROR)

Warn if functions accepting `CFErrorRef` or `NSError` cannot indicate that an error occurred.

</div>


|                 |                               |
|-----------------|-------------------------------|
| Category        | SAAppleAPICheckers            |
| CommandLineArgs |                               |
| `NO`            | -Xclang                       |
|                 | -analyzer-disable-checker     |
|                 | -Xclang                       |
|                 | osx.coreFoundation.CFError    |
|                 | -Xclang                       |
|                 | -analyzer-disable-checker     |
|                 | -Xclang                       |
|                 | osx.cocoa.NSError             |
| `YES`           |                               |
| DefaultValue    | YES                           |
| Name            | CLANG_ANALYZER_OBJC_NSCFERROR |
| Type            | Boolean                       |
| References      |                               |

<div id="dev1425c63b1" class="Subhead">

## Violation of Reference Counting Rules (CLANG_ANALYZER_OBJC_RETAIN_COUNT)

Warn on leaks and improper reference count management.

</div>


|                 |                                  |
|-----------------|----------------------------------|
| Category        | SAObjCCheckers                   |
| CommandLineArgs |                                  |
| `NO`            | -Xclang                          |
|                 | -analyzer-disable-checker        |
|                 | -Xclang                          |
|                 | osx.cocoa.RetainCount            |
|                 | -Xclang                          |
|                 | -analyzer-disable-checker        |
|                 | -Xclang                          |
|                 | osx.cocoa.ClassRelease           |
| `YES`           |                                  |
| DefaultValue    | YES                              |
| Name            | CLANG_ANALYZER_OBJC_RETAIN_COUNT |
| Type            | Boolean                          |
| References      |                                  |

<div id="deva8abac772" class="Subhead">

## Violation of 'self = `super init`' Rule (CLANG_ANALYZER_OBJC_SELF_INIT)

Check that `super init` is properly called within an Objective-C initialization method.

</div>


|                 |                               |
|-----------------|-------------------------------|
| Category        | SAObjCCheckers                |
| CommandLineArgs |                               |
| `NO`            | -Xclang                       |
|                 | -analyzer-disable-checker     |
|                 | -Xclang                       |
|                 | osx.cocoa.SelfInit            |
| `YES`           |                               |
| DefaultValue    | YES                           |
| FileTypes       | sourcecode.c.objc             |
|                 | sourcecode.cpp.objcpp         |
| Name            | CLANG_ANALYZER_OBJC_SELF_INIT |
| Type            | Boolean                       |
| References      |                               |

<div id="dev74e40f8dd" class="Subhead">

## Unused Ivars (CLANG_ANALYZER_OBJC_UNUSED_IVARS)

Warn about private ivars that are never used.

</div>


|                 |                                  |
|-----------------|----------------------------------|
| Category        | SAObjCCheckers                   |
| CommandLineArgs |                                  |
| `NO`            | -Xclang                          |
|                 | -analyzer-disable-checker        |
|                 | -Xclang                          |
|                 | osx.cocoa.UnusedIvars            |
| `YES`           |                                  |
| DefaultValue    | YES                              |
| Name            | CLANG_ANALYZER_OBJC_UNUSED_IVARS |
| Type            | Boolean                          |
| References      |                                  |

<div id="dev21f7c3dec" class="Subhead">

## *EXPERIMENTAL* Buffer overflows (CLANG_ANALYZER_SECURITY_BUFFER_OVERFLOW_EXPERIMENTAL)

Check for potential buffer overflows.

</div>


|                 |                                                      |
|-----------------|------------------------------------------------------|
| CommandLineArgs |                                                      |
| `NO`            |                                                      |
| `YES`           | -Xclang                                              |
|                 | -analyzer-checker                                    |
|                 | -Xclang                                              |
|                 | core.experimental.Overflow                           |
|                 | -Xclang                                              |
|                 | -analyzer-checker                                    |
|                 | -Xclang                                              |
|                 | security.experimental.ArrayBoundV2                   |
|                 | -Xclang                                              |
|                 | -analyzer-max-loop                                   |
|                 | -Xclang                                              |
|                 | 100                                                  |
| DefaultValue    | NO                                                   |
| Name            | CLANG_ANALYZER_SECURITY_BUFFER_OVERFLOW_EXPERIMENTAL |
| Type            | Boolean                                              |
| References      |                                                      |

<div id="devb2ae484e7" class="Subhead">

## Floating Point Value Used as Loop Counter (CLANG_ANALYZER_SECURITY_FLOATLOOPCOUNTER)

Warn on using a floating point value as a loop counter (CERT: FLP30-C, FLP30-CPP).

</div>


|                 |                                          |
|-----------------|------------------------------------------|
| Category        | SASecurityCheckers                       |
| CommandLineArgs |                                          |
| `NO`            |                                          |
| `YES`           | -Xclang                                  |
|                 | -analyzer-checker                        |
|                 | -Xclang                                  |
|                 | security.FloatLoopCounter                |
| DefaultValue    | NO                                       |
| Name            | CLANG_ANALYZER_SECURITY_FLOATLOOPCOUNTER |
| Type            | Boolean                                  |
| References      |                                          |

<div id="devfe5a6368e" class="Subhead">

## Use of 'getpw', 'gets' (Buffer Overflow) (CLANG_ANALYZER_SECURITY_INSECUREAPI_GETPW_GETS)

Warn on uses of `getpw` and `gets`. The functions are dangerous as they may trigger a buffer overflow.

</div>


|                 |                                                |
|-----------------|------------------------------------------------|
| Category        | SASecurityCheckers                             |
| CommandLineArgs |                                                |
| `NO`            | -Xclang                                        |
|                 | -analyzer-disable-checker                      |
|                 | -Xclang                                        |
|                 | security.insecureAPI.getpw                     |
|                 | -Xclang                                        |
|                 | -analyzer-disable-checker                      |
|                 | -Xclang                                        |
|                 | security.insecureAPI.gets                      |
| `YES`           | -Xclang                                        |
|                 | -analyzer-checker                              |
|                 | -Xclang                                        |
|                 | security.insecureAPI.getpw                     |
|                 | -Xclang                                        |
|                 | -analyzer-checker                              |
|                 | -Xclang                                        |
|                 | security.insecureAPI.gets                      |
| DefaultValue    | YES                                            |
| Name            | CLANG_ANALYZER_SECURITY_INSECUREAPI_GETPW_GETS |
| Type            | Boolean                                        |
| References      |                                                |

<div id="devfa2853b09" class="Subhead">

## Use of 'mktemp' or Predictable 'mktemps' (CLANG_ANALYZER_SECURITY_INSECUREAPI_MKSTEMP)

Warn on uses of `mktemp`, which produces predictable temporary files. It is obsoleted by `mktemps`. Warn when `mkstemp` is passed fewer than 6 `X`'s in the format string.

</div>


|                 |                                             |
|-----------------|---------------------------------------------|
| Category        | SASecurityCheckers                          |
| CommandLineArgs |                                             |
| `NO`            | -Xclang                                     |
|                 | -analyzer-disable-checker                   |
|                 | -Xclang                                     |
|                 | security.insecureAPI.mkstemp                |
|                 | -Xclang                                     |
|                 | -analyzer-disable-checker                   |
|                 | -Xclang                                     |
|                 | security.insecureAPI.mktemp                 |
| `YES`           | -Xclang                                     |
|                 | -analyzer-checker                           |
|                 | -Xclang                                     |
|                 | security.insecureAPI.mkstemp                |
|                 | -Xclang                                     |
|                 | -analyzer-checker                           |
|                 | -Xclang                                     |
|                 | security.insecureAPI.mktemp                 |
| DefaultValue    | YES                                         |
| Name            | CLANG_ANALYZER_SECURITY_INSECUREAPI_MKSTEMP |
| Type            | Boolean                                     |
| References      |                                             |

<div id="dev1050059bf" class="Subhead">

## Use of 'rand' Functions (CLANG_ANALYZER_SECURITY_INSECUREAPI_RAND)

Warn on uses of `rand`, `random`, and related functions, which produce predictable random number sequences. Use `arc4random` instead.

</div>


|                 |                                          |
|-----------------|------------------------------------------|
| Category        | SASecurityCheckers                       |
| CommandLineArgs |                                          |
| `NO`            | -Xclang                                  |
|                 | -analyzer-disable-checker                |
|                 | -Xclang                                  |
|                 | security.insecureAPI.rand                |
| `YES`           | -Xclang                                  |
|                 | -analyzer-checker                        |
|                 | -Xclang                                  |
|                 | security.insecureAPI.rand                |
| DefaultValue    | NO                                       |
| Name            | CLANG_ANALYZER_SECURITY_INSECUREAPI_RAND |
| Type            | Boolean                                  |
| References      |                                          |

<div id="dev94df6a128" class="Subhead">

## Use of 'strcpy' and 'strcat' (CLANG_ANALYZER_SECURITY_INSECUREAPI_STRCPY)

Warn on uses of the `strcpy` and `strcat` functions, which can result in buffer overflows. Use `strlcpy` or `strlcat` instead.

</div>


|                 |                                            |
|-----------------|--------------------------------------------|
| Category        | SASecurityCheckers                         |
| CommandLineArgs |                                            |
| `NO`            | -Xclang                                    |
|                 | -analyzer-disable-checker                  |
|                 | -Xclang                                    |
|                 | security.insecureAPI.strcpy                |
| `YES`           | -Xclang                                    |
|                 | -analyzer-checker                          |
|                 | -Xclang                                    |
|                 | security.insecureAPI.strcpy                |
| DefaultValue    | NO                                         |
| Name            | CLANG_ANALYZER_SECURITY_INSECUREAPI_STRCPY |
| Type            | Boolean                                    |
| References      |                                            |

<div id="dev5d6ddc463" class="Subhead">

## Unchecked Return Values (CLANG_ANALYZER_SECURITY_INSECUREAPI_UNCHECKEDRETURN)

Warn on uses of sensitive functions whose return values must be always checked.

</div>


|                 |                                                     |
|-----------------|-----------------------------------------------------|
| Category        | SASecurityCheckers                                  |
| CommandLineArgs |                                                     |
| `NO`            | -Xclang                                             |
|                 | -analyzer-disable-checker                           |
|                 | -Xclang                                             |
|                 | security.insecureAPI.UncheckedReturn                |
| `YES`           | -Xclang                                             |
|                 | -analyzer-checker                                   |
|                 | -Xclang                                             |
|                 | security.insecureAPI.UncheckedReturn                |
| DefaultValue    | YES                                                 |
| Name            | CLANG_ANALYZER_SECURITY_INSECUREAPI_UNCHECKEDRETURN |
| Type            | Boolean                                             |
| References      |                                                     |

<div id="deva42ba467a" class="Subhead">

## Use of 'vfork' (CLANG_ANALYZER_SECURITY_INSECUREAPI_VFORK)

Warn on uses of the `vfork` function, which is inherently insecure. Use the safer `posix_spawn` function instead.

</div>


|                 |                                           |
|-----------------|-------------------------------------------|
| Category        | SASecurityCheckers                        |
| CommandLineArgs |                                           |
| `NO`            | -Xclang                                   |
|                 | -analyzer-disable-checker                 |
|                 | -Xclang                                   |
|                 | security.insecureAPI.vfork                |
| `YES`           | -Xclang                                   |
|                 | -analyzer-checker                         |
|                 | -Xclang                                   |
|                 | security.insecureAPI.vfork                |
| DefaultValue    | YES                                       |
| Name            | CLANG_ANALYZER_SECURITY_INSECUREAPI_VFORK |
| Type            | Boolean                                   |
| References      |                                           |

<div id="deva874ed373" class="Subhead">

## Misuse of Keychain Services API (CLANG_ANALYZER_SECURITY_KEYCHAIN_API)

Check for leaks of keychain attribute lists and data buffers returned by the Keychain Services API.

</div>


|                 |                                      |
|-----------------|--------------------------------------|
| Category        | SASecurityCheckers                   |
| CommandLineArgs |                                      |
| `NO`            | -Xclang                              |
|                 | -analyzer-disable-checker            |
|                 | -Xclang                              |
|                 | osx.SecKeychainAPI                   |
| `YES`           |                                      |
| DefaultValue    | YES                                  |
| FileTypes       | sourcecode.c.objc                    |
|                 | sourcecode.cpp.objcpp                |
| Name            | CLANG_ANALYZER_SECURITY_KEYCHAIN_API |
| Type            | Boolean                              |
| References      |                                      |

<div id="dev69c9c24a6" class="Subhead">

## C++ Language Dialect (CLANG_CXX_LANGUAGE_STANDARD)

Choose a standard or non-standard C++ language dialect. Options include:

  - *C++98:* Accept ISO C++ 1998 with amendments, but not GNU extensions. `-std=c++98`

  - *GNU++98:* Accept ISO C++ 1998 with amendments and GNU extensions. `-std=gnu++98`

  - *C++11:* Accept the ISO C++ 2011 standard with amendments, but not GNU extensions. `-std=c++11`

  - *GNU++11:* Accept the ISO C++ 2011 standard with amendments and GNU extensions. `-std=gnu++11`

  - *C++14:* Accept the ISO C++ 2014 standard with amendments, but not GNU extensions. `-std=c++14`

  - *GNU++14:* Accept the ISO C++ 2014 standard with amendments and GNU extensions. `-std=gnu++14`

  - *C++17:* Accept the ISO C++ 2017 standard with amendments, but not GNU extensions. `-std=c++17`

  - *GNU++17:* Accept the ISO C++ 2017 standard with amendments and GNU extensions. `-std=gnu++17`

  - *Compiler Default:* Tells the compiler to use its default C++ language dialect. This is normally the best choice unless you have specific needs. (Currently equivalent to GNU++98.)

</div>


|                    |                                    |
|--------------------|------------------------------------|
| Category           | LanguageCXX                        |
| CommandLineArgs    |                                    |
| `<<otherwise>>`    | -std=\$([value](#value))           |
| `c++0x`            | -std=c++11                         |
| `c++17`            | -std=c++1z                         |
| `compiler-default` |                                    |
| `gnu++0x`          | -std=gnu++11                       |
| `gnu++17`          | -std=gnu++1z                       |
| DefaultValue       | compiler-default                   |
| FileTypes          | sourcecode.cpp.cpp                 |
|                    | sourcecode.cpp.objcpp              |
| Name               | CLANG_CXX_LANGUAGE_STANDARD        |
| Type               | Enumeration                        |
| Values             | c++98                              |
|                    | gnu++98                            |
|                    | c++0x                              |
|                    | gnu++0x                            |
|                    | c++14                              |
|                    | gnu++14                            |
|                    | c++17                              |
|                    | gnu++17                            |
|                    | compiler-default                   |
| References         | [CLANG_CXX_LIBRARY](#dev1c07266ef) |

<div id="dev1c07266ef" class="Subhead">

## C++ Standard Library (CLANG_CXX_LIBRARY)

Choose a version of the C++ standard library to use.

  - *libstdc++:* A traditional C++ standard library that works with GCC and Clang (default).

  - *libc++:* A highly optimized C++ standard library that works only with Clang, and is designed to support new C++11 features.

</div>


|                      |                             |
|----------------------|-----------------------------|
| AdditionalLinkerArgs |                             |
| `<<otherwise>>`      | -stdlib=\$([value](#value)) |
| `compiler-default`   |                             |
| AppearsAfter         | CLANG_CXX_LANGUAGE_STANDARD |
| Category             | LanguageCXX                 |
| CommandLineArgs      |                             |
| `<<otherwise>>`      | -stdlib=\$([value](#value)) |
| `compiler-default`   |                             |
| DefaultValue         | compiler-default            |
| FileTypes            | sourcecode.cpp.cpp          |
|                      | sourcecode.cpp.objcpp       |
| Name                 | CLANG_CXX_LIBRARY           |
| Type                 | Enumeration                 |
| Values               | libstdc++                   |
|                      | libc++                      |
|                      | compiler-default            |
| References           |                             |

<div id="dev75a59f57c" class="Subhead">

## Debug Information Level (CLANG_DEBUG_INFORMATION_LEVEL)

Toggles the amount of debug information emitted when debug symbols are enabled. This can impact the size of the generated debug information, which may matter in some cases for large projects, such as when using LTO.

</div>


|                    |                                                     |
|--------------------|-----------------------------------------------------|
| Category           | CodeGeneration                                      |
| CommandLineArgs    |                                                     |
| `default`          |                                                     |
| `line-tables-only` | -gline-tables-only                                  |
| CommonOption       | NO                                                  |
| Condition          | \$([GCC_GENERATE_DEBUGGING_SYMBOLS](#dev667b2f097)) |
| DefaultValue       | default                                             |
| Name               | CLANG_DEBUG_INFORMATION_LEVEL                       |
| Type               | Enumeration                                         |
| Values             | default                                             |
|                    | line-tables-only                                    |
| References         |                                                     |

<div id="devaec10c397" class="Subhead">

## Enable Code Coverage Support (CLANG_ENABLE_CODE_COVERAGE)

Enables building with code coverage instrumentation. This is only used when the build has code coverage enabled, which is typically done via the Xcode scheme settings.

</div>


|              |                                                                                                                                                                         |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | CodeGeneration                                                                                                                                                          |
| DefaultValue | YES                                                                                                                                                                     |
| Description  | Enables building with code coverage instrumentation. This is only used when the build has code coverage enabled, which is typically done via the Xcode scheme settings. |
| DisplayName  | Enable Code Coverage Support                                                                                                                                            |
| Name         | CLANG_ENABLE_CODE_COVERAGE                                                                                                                                              |
| Type         | Boolean                                                                                                                                                                 |
| References   | [CLANG_COVERAGE_MAPPING](#CLANG_COVERAGE_MAPPING)                                                                                                                       |

<div id="dev342502821" class="Subhead">

## Enable Modules (C and Objective-C) (CLANG_ENABLE_MODULES)

Enables the use of modules for system APIs. System headers are imported as semantic modules instead of raw headers. This can result in faster builds and project indexing.

</div>


|                 |                                                                                 |
|-----------------|---------------------------------------------------------------------------------|
| Category        | LanguageModules                                                                 |
| CommandLineArgs |                                                                                 |
| `NO`            |                                                                                 |
| `YES`           | -fmodules                                                                       |
| DefaultValue    | NO                                                                              |
| Name            | CLANG_ENABLE_MODULES                                                            |
| Type            | Boolean                                                                         |
| References      | [CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES](#dev681c8d33f)          |
|                 | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES)                                     |
|                 | [CLANG_ENABLE_MODULE_IMPLEMENTATION_OF](#CLANG_ENABLE_MODULE_IMPLEMENTATION_OF) |
|                 | [CLANG_MODULES_AUTOLINK](#dev8af2e0c85)                                         |
|                 | [CLANG_MODULES_BUILD_SESSION_FILE](#CLANG_MODULES_BUILD_SESSION_FILE)           |
|                 | [CLANG_MODULES_DISABLE_PRIVATE_WARNING](#deve1588074c)                          |
|                 | [CLANG_MODULES_IGNORE_MACROS](#CLANG_MODULES_IGNORE_MACROS)                     |
|                 | [CLANG_MODULES_PRUNE_AFTER](#CLANG_MODULES_PRUNE_AFTER)                         |
|                 | [CLANG_MODULES_PRUNE_INTERVAL](#CLANG_MODULES_PRUNE_INTERVAL)                   |
|                 | [CLANG_MODULES_VALIDATE_SYSTEM_HEADERS](#CLANG_MODULES_VALIDATE_SYSTEM_HEADERS) |
|                 | [CLANG_MODULE_CACHE_PATH](#CLANG_MODULE_CACHE_PATH)                             |
|                 | [CLANG_MODULE_LSV](#CLANG_MODULE_LSV)                                           |

<div id="dev8ddca0338" class="Subhead">

## Enable Clang Module Debugging (CLANG_ENABLE_MODULE_DEBUGGING)

When this setting is enabled, `clang` will use the shared debug info available in `clang` modules and precompiled headers. This results in smaller build artifacts, faster compile times, and more complete debug info. This setting should only be disabled when building static libraries with debug info for distribution.

</div>


|              |                                                                                                                                                                                                                                                                                                                               |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | LanguageModules                                                                                                                                                                                                                                                                                                               |
| DefaultValue | YES                                                                                                                                                                                                                                                                                                                           |
| Description  | When this setting is enabled, `clang` will use the shared debug info available in `clang` modules and precompiled headers. This results in smaller build artifacts, faster compile times, and more complete debug info. This setting should only be disabled when building static libraries with debug info for distribution. |
| DisplayName  | Enable Clang Module Debugging                                                                                                                                                                                                                                                                                                 |
| Name         | CLANG_ENABLE_MODULE_DEBUGGING                                                                                                                                                                                                                                                                                                 |
| Type         | Boolean                                                                                                                                                                                                                                                                                                                       |
| References   | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES)                                                                                                                                                                                                                                                                                   |

<div id="dev38319e299" class="Subhead">

## Objective-C Automatic Reference Counting (CLANG_ENABLE_OBJC_ARC)

Compiles reference-counted Objective-C code (when garbage collection is not enabled) to use Automatic Reference Counting. Code compiled using automated reference counting is compatible with other code (such as frameworks) compiled using either manual reference counting (for example, traditional `retain` and `release` messages) or automated reference counting. Using this mode is currently incompatible with compiling code to use Objective-C Garbage Collection.

</div>


|                      |                       |
|----------------------|-----------------------|
| AdditionalLinkerArgs |                       |
| `NO`                 |                       |
| `YES`                | -fobjc-arc            |
| Category             | LanguageObjC          |
| CommandLineArgs      |                       |
| `NO`                 |                       |
| `YES`                | -fobjc-arc            |
| DefaultValue         | NO                    |
| FileTypes            | sourcecode.c.objc     |
|                      | sourcecode.cpp.objcpp |
| Name                 | CLANG_ENABLE_OBJC_ARC |
| Type                 | Boolean               |
| References           |                       |

<div id="devd345182aa" class="Subhead">

## Weak References in Manual Retain Release (CLANG_ENABLE_OBJC_WEAK)

Compiles Objective-C code to enable weak references for code compiled with manual retain release (MRR) semantics.

</div>


|                 |                        |
|-----------------|------------------------|
| Category        | LanguageObjC           |
| CommandLineArgs |                        |
| `NO`            |                        |
| `YES`           | -fobjc-weak            |
| DefaultValue    | NO                     |
| FileTypes       | sourcecode.c.objc      |
|                 | sourcecode.cpp.objcpp  |
| Name            | CLANG_ENABLE_OBJC_WEAK |
| Type            | Boolean                |
| References      |                        |

<div id="dev154d026c7" class="Subhead">

## Implicitly Link Objective-C Runtime Support (CLANG_LINK_OBJC_RUNTIME)

When linking a target using Objective-C code, implicitly link in Foundation (and if deploying back to an older OS) a backwards compatibility library to allow newer language features to run on an operating system where the runtime support is not natively available. Most targets that use Objective-C should use this, although there are rare cases where a target should opt out of this behavior.

</div>


|                      |                         |
|----------------------|-------------------------|
| AdditionalLinkerArgs |                         |
| `NO`                 |                         |
| `YES`                | -fobjc-link-runtime     |
| Category             | LanguageObjC            |
| CommandLineArgs      |                         |
| `NO`                 |                         |
| `YES`                |                         |
| DefaultValue         | YES                     |
| FileTypes            | sourcecode.c.objc       |
|                      | sourcecode.cpp.objcpp   |
| Name                 | CLANG_LINK_OBJC_RUNTIME |
| Type                 | Boolean                 |
| References           |                         |

<div id="dev155a58486" class="Subhead">

## Add attribute annotations (CLANG_MIGRATOR_ANNOTATIONS)

Add attribute annotations to properties and methods.

</div>


|                 |                                                      |
|-----------------|------------------------------------------------------|
| Category        | Modernizer                                           |
| CommandLineArgs |                                                      |
| `NO`            |                                                      |
| `YES`           | -objcmt-migrate-annotation                           |
| DefaultValue    | YES                                                  |
| Description     | Add attribute annotations to properties and methods. |
| DisplayName     | Add attribute annotations                            |
| Name            | CLANG_MIGRATOR_ANNOTATIONS                           |
| Type            | Boolean                                              |
| References      |                                                      |

<div id="dev96a0344f5" class="Subhead">

## Infer instancetype for method result type (CLANG_MIGRATOR_INSTANCE_TYPE)

Infer `instancetype` for method result type instead of `id`.

</div>


|                 |                                                              |
|-----------------|--------------------------------------------------------------|
| Category        | Modernizer                                                   |
| CommandLineArgs |                                                              |
| `NO`            |                                                              |
| `YES`           | -objcmt-migrate-instancetype                                 |
| DefaultValue    | YES                                                          |
| Description     | Infer `instancetype` for method result type instead of `id`. |
| DisplayName     | Infer instancetype for method result type                    |
| Name            | CLANG_MIGRATOR_INSTANCE_TYPE                                 |
| Type            | Boolean                                                      |
| References      |                                                              |

<div id="dev8ae0ba011" class="Subhead">

## Use NS_ENUM/NS_OPTIONS macros (CLANG_MIGRATOR_NSENUM_MACROS)

Use `NS_ENUM`/`NS_OPTIONS` macros for enumerators.

</div>


|                 |                                                    |
|-----------------|----------------------------------------------------|
| Category        | Modernizer                                         |
| CommandLineArgs |                                                    |
| `NO`            |                                                    |
| `YES`           | -objcmt-migrate-ns-macros                          |
| DefaultValue    | YES                                                |
| Description     | Use `NS_ENUM`/`NS_OPTIONS` macros for enumerators. |
| DisplayName     | Use NS_ENUM/NS_OPTIONS macros                      |
| Name            | CLANG_MIGRATOR_NSENUM_MACROS                       |
| Type            | Boolean                                            |
| References      |                                                    |

<div id="dev77888612f" class="Subhead">

## Infer designated initializer methods (CLANG_MIGRATOR_OBJC_DESIGNATED_INIT)

Infer `NS_DESIGNATED_INITIALIZER` for designated initializer methods.

</div>


|                 |                                                                       |
|-----------------|-----------------------------------------------------------------------|
| Category        | Modernizer                                                            |
| CommandLineArgs |                                                                       |
| `NO`            |                                                                       |
| `YES`           | -objcmt-migrate-designated-init                                       |
|                 | -Qunused-arguments                                                    |
| DefaultValue    | YES                                                                   |
| Description     | Infer `NS_DESIGNATED_INITIALIZER` for designated initializer methods. |
| DisplayName     | Infer designated initializer methods                                  |
| Name            | CLANG_MIGRATOR_OBJC_DESIGNATED_INIT                                   |
| Type            | Boolean                                                               |
| References      |                                                                       |

<div id="dev260be96f6" class="Subhead">

## ObjC literals (CLANG_MIGRATOR_OBJC_LITERALS)

Enable migration to modern ObjC literals syntax.

</div>


|                 |                                                  |
|-----------------|--------------------------------------------------|
| Category        | Modernizer                                       |
| CommandLineArgs |                                                  |
| `NO`            |                                                  |
| `YES`           | -objcmt-migrate-literals                         |
|                 | -Qunused-arguments                               |
| DefaultValue    | YES                                              |
| Description     | Enable migration to modern ObjC literals syntax. |
| DisplayName     | ObjC literals                                    |
| Name            | CLANG_MIGRATOR_OBJC_LITERALS                     |
| Type            | Boolean                                          |
| References      |                                                  |

<div id="dev3f174b39f" class="Subhead">

## ObjC subscripting (CLANG_MIGRATOR_OBJC_SUBSCRIPTING)

Enable migration to modern ObjC subscripting syntax.

</div>


|                 |                                                      |
|-----------------|------------------------------------------------------|
| Category        | Modernizer                                           |
| CommandLineArgs |                                                      |
| `NO`            |                                                      |
| `YES`           | -objcmt-migrate-subscripting                         |
|                 | -Qunused-arguments                                   |
| DefaultValue    | YES                                                  |
| Description     | Enable migration to modern ObjC subscripting syntax. |
| DisplayName     | ObjC subscripting                                    |
| Name            | CLANG_MIGRATOR_OBJC_SUBSCRIPTING                     |
| Type            | Boolean                                              |
| References      |                                                      |

<div id="dev59e943d6a" class="Subhead">

## Atomicity of inferred properties (CLANG_MIGRATOR_PROPERTY_ATOMICITY)

Choose the atomicity of the inferred properties.

</div>


|                        |                                                  |
|------------------------|--------------------------------------------------|
| Category               | Modernizer                                       |
| CommandLineArgs        |                                                  |
| `NS_NONATOMIC_IOSONLY` | -objcmt-ns-nonatomic-iosonly                     |
| `atomic`               | -objcmt-atomic-property                          |
| `nonatomic`            |                                                  |
| DefaultValue           | NS_NONATOMIC_IOSONLY                             |
| Description            | Choose the atomicity of the inferred properties. |
| DisplayName            | Atomicity of inferred properties                 |
| Name                   | CLANG_MIGRATOR_PROPERTY_ATOMICITY                |
| Type                   | Enumeration                                      |
| Values                 | nonatomic                                        |
|                        | atomic                                           |
|                        | NS_NONATOMIC_IOSONLY                             |
| References             |                                                  |

<div id="dev62d5e0c42" class="Subhead">

## ObjC property-dot syntax (CLANG_MIGRATOR_PROPERTY_DOT_SYNTAX)

Enable migration of setter/getter messages to property-dot syntax.

</div>


|                 |                                                                    |
|-----------------|--------------------------------------------------------------------|
| Category        | Modernizer                                                         |
| CommandLineArgs |                                                                    |
| `NO`            |                                                                    |
| `YES`           | -objcmt-migrate-property-dot-syntax                                |
| DefaultValue    | YES                                                                |
| Description     | Enable migration of setter/getter messages to property-dot syntax. |
| DisplayName     | ObjC property-dot syntax                                           |
| Name            | CLANG_MIGRATOR_PROPERTY_DOT_SYNTAX                                 |
| Type            | Boolean                                                            |
| References      |                                                                    |

<div id="dev3046d0054" class="Subhead">

## Infer protocol conformance (CLANG_MIGRATOR_PROTOCOL_CONFORMANCE)

Infer protocol conformance from the interface methods.

</div>


|                 |                                                        |
|-----------------|--------------------------------------------------------|
| Category        | Modernizer                                             |
| CommandLineArgs |                                                        |
| `NO`            |                                                        |
| `YES`           | -objcmt-migrate-protocol-conformance                   |
| DefaultValue    | NO                                                     |
| Description     | Infer protocol conformance from the interface methods. |
| DisplayName     | Infer protocol conformance                             |
| Name            | CLANG_MIGRATOR_PROTOCOL_CONFORMANCE                    |
| Type            | Boolean                                                |
| References      |                                                        |

<div id="deva7fd4dc2a" class="Subhead">

## Only modify public headers (CLANG_MIGRATOR_PUBLIC_HEADERS_ONLY)

Only modify public headers of a target.

</div>


|                 |                                                                                                                   |
|-----------------|-------------------------------------------------------------------------------------------------------------------|
| Category        | Modernizer                                                                                                        |
| CommandLineArgs |                                                                                                                   |
| `NO`            |                                                                                                                   |
| `YES`           | -objcmt-white-list-dir-path=\$([TARGET_BUILD_DIR](#dev256404b3f))/\$([PUBLIC_HEADERS_FOLDER_PATH](#devdbb795497)) |
| DefaultValue    | YES                                                                                                               |
| Description     | Only modify public headers of a target.                                                                           |
| DisplayName     | Only modify public headers                                                                                        |
| Name            | CLANG_MIGRATOR_PUBLIC_HEADERS_ONLY                                                                                |
| Type            | Boolean                                                                                                           |
| References      |                                                                                                                   |

<div id="deva3e4d0d7e" class="Subhead">

## Infer readonly properties (CLANG_MIGRATOR_READONLY_PROPERTY)

Infer readonly properties from getter methods.

</div>


|                 |                                                |
|-----------------|------------------------------------------------|
| Category        | Modernizer                                     |
| CommandLineArgs |                                                |
| `NO`            |                                                |
| `YES`           | -objcmt-migrate-readonly-property              |
| DefaultValue    | YES                                            |
| Description     | Infer readonly properties from getter methods. |
| DisplayName     | Infer readonly properties                      |
| Name            | CLANG_MIGRATOR_READONLY_PROPERTY               |
| Type            | Boolean                                        |
| References      |                                                |

<div id="dev4a396cca1" class="Subhead">

## Infer readwrite properties (CLANG_MIGRATOR_READWRITE_PROPERTY)

Infer readwrite properties from a getter and setter method.

</div>


|                 |                                                             |
|-----------------|-------------------------------------------------------------|
| Category        | Modernizer                                                  |
| CommandLineArgs |                                                             |
| `NO`            |                                                             |
| `YES`           | -objcmt-migrate-readwrite-property                          |
| DefaultValue    | YES                                                         |
| Description     | Infer readwrite properties from a getter and setter method. |
| DisplayName     | Infer readwrite properties                                  |
| Name            | CLANG_MIGRATOR_READWRITE_PROPERTY                           |
| Type            | Boolean                                                     |
| References      |                                                             |

<div id="dev8af2e0c85" class="Subhead">

## Link Frameworks Automatically (CLANG_MODULES_AUTOLINK)

Automatically link SDK frameworks that are referenced using `#import` or `#include`. This feature requires also enabling support for modules. This build setting only applies to C-family languages.

</div>


|                 |                                                  |
|-----------------|--------------------------------------------------|
| Category        | LanguageModules                                  |
| CommandLineArgs |                                                  |
| `NO`            | -fno-autolink                                    |
| `YES`           |                                                  |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES |
| DefaultValue    | YES                                              |
| Name            | CLANG_MODULES_AUTOLINK                           |
| Type            | Boolean                                          |
| References      |                                                  |

<div id="deve1588074c" class="Subhead">

## Disable Private Modules Warnings (CLANG_MODULES_DISABLE_PRIVATE_WARNING)

Disable warnings related to the recommended use of private module naming. This only makes sense when support for modules is enabled.

</div>


|                 |                                                  |
|-----------------|--------------------------------------------------|
| Category        | LanguageModules                                  |
| CommandLineArgs |                                                  |
| `NO`            |                                                  |
| `YES`           | -Wno-private-module                              |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES |
| DefaultValue    | NO                                               |
| Name            | CLANG_MODULES_DISABLE_PRIVATE_WARNING            |
| Type            | Boolean                                          |
| References      |                                                  |

<div id="dev7f935916c" class="Subhead">

## Optimization Profile File (CLANG_OPTIMIZATION_PROFILE_FILE)

The path to the file of the profile data to use when [Use Optimization Profile (CLANG_USE_OPTIMIZATION_PROFILE)](#devb3d935f24) is enabled.

</div>


|              |                                                                                              |
|--------------|----------------------------------------------------------------------------------------------|
| Category     | CodeGeneration                                                                               |
| DefaultValue | \$([SRCROOT](#dev7fd11f2da))/OptimizationProfiles/\$([PROJECT_NAME](#dev1d2022a00)).profdata |
| Name         | CLANG_OPTIMIZATION_PROFILE_FILE                                                              |
| Type         | Path                                                                                         |
| References   | [CLANG_USE_OPTIMIZATION_PROFILE](#devb3d935f24)                                              |

<div id="dev6e81753b1" class="Subhead">

## Mode of Analysis for 'Build' (CLANG_STATIC_ANALYZER_MODE)

The depth the static analyzer uses during the Build action. Use `Deep` to exercise the full power of the analyzer. Use `Shallow` for faster analysis.

</div>


|                 |                                                                                         |
|-----------------|-----------------------------------------------------------------------------------------|
| AppearsAfter    | RUN_CLANG_STATIC_ANALYZER                                                               |
| Category        | SAPolicy                                                                                |
| CommandLineArgs |                                                                                         |
| `deep`          |                                                                                         |
| `shallow`       | -Xclang                                                                                 |
|                 | -analyzer-config                                                                        |
|                 | -Xclang                                                                                 |
|                 | mode=shallow                                                                            |
| DefaultValue    | shallow                                                                                 |
| Name            | CLANG_STATIC_ANALYZER_MODE                                                              |
| Type            | Enumeration                                                                             |
| Values          | shallow                                                                                 |
|                 | deep                                                                                    |
| References      | [CLANG_STATIC_ANALYZER_MODE_ACTION_deep](#CLANG_STATIC_ANALYZER_MODE_ACTION_deep)       |
|                 | [CLANG_STATIC_ANALYZER_MODE_ACTION_shallow](#CLANG_STATIC_ANALYZER_MODE_ACTION_shallow) |
|                 | [CLANG_STATIC_ANALYZER_MODE_ON_ANALYZE_ACTION](#dev965b782f3)                           |

<div id="dev965b782f3" class="Subhead">

## Mode of Analysis for 'Analyze' (CLANG_STATIC_ANALYZER_MODE_ON_ANALYZE_ACTION)

The depth the static analyzer uses during the Analyze action. Use `Deep` to exercise the full power of the analyzer. Use `Shallow` for faster analysis.

</div>


|              |                                              |
|--------------|----------------------------------------------|
| AppearsAfter | CLANG_STATIC_ANALYZER_MODE                   |
| Category     | SAPolicy                                     |
| DefaultValue | deep                                         |
| Name         | CLANG_STATIC_ANALYZER_MODE_ON_ANALYZE_ACTION |
| Type         | Enumeration                                  |
| Values       | shallow                                      |
|              | deep                                         |
| References   |                                              |

<div id="dev11cdd52f0" class="Subhead">

## Enable Extra Integer Checks (CLANG_UNDEFINED_BEHAVIOR_SANITIZER_INTEGER)

Check for unsigned integer overflow, in addition to checks for signed integer overflow.

</div>


|                 |                                                                                      |
|-----------------|--------------------------------------------------------------------------------------|
| Category        | UBSANPolicy                                                                          |
| CommandLineArgs |                                                                                      |
| `NO`            |                                                                                      |
| `YES`           | -fsanitize=integer                                                                   |
| Condition       | \$([CLANG_UNDEFINED_BEHAVIOR_SANITIZER](#CLANG_UNDEFINED_BEHAVIOR_SANITIZER)) == YES |
| DefaultValue    | NO                                                                                   |
| Name            | CLANG_UNDEFINED_BEHAVIOR_SANITIZER_INTEGER                                           |
| Type            | Boolean                                                                              |
| References      |                                                                                      |

<div id="dev91bb4ec91" class="Subhead">

## Enable Nullability Annotation Checks (CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY)

Check for violations of nullability annotations in function calls, return statements, and assignments.

</div>


|                 |                                                                                      |
|-----------------|--------------------------------------------------------------------------------------|
| Category        | UBSANPolicy                                                                          |
| CommandLineArgs |                                                                                      |
| `NO`            |                                                                                      |
| `YES`           | -fsanitize=nullability                                                               |
| Condition       | \$([CLANG_UNDEFINED_BEHAVIOR_SANITIZER](#CLANG_UNDEFINED_BEHAVIOR_SANITIZER)) == YES |
| DefaultValue    | NO                                                                                   |
| Name            | CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY                                       |
| Type            | Boolean                                                                              |
| References      |                                                                                      |

<div id="devb3d935f24" class="Subhead">

## Use Optimization Profile (CLANG_USE_OPTIMIZATION_PROFILE)

When this setting is enabled, `clang` will use the optimization profile collected for a target when building it.

</div>


|                 |                                                                                                                                                              |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category        | CodeGeneration                                                                                                                                               |
| CommandLineArgs |                                                                                                                                                              |
| `NO`            |                                                                                                                                                              |
| `YES`           | -fprofile-instr-use=\$([CLANG_OPTIMIZATION_PROFILE_FILE](#dev7f935916c))                                                                                     |
| Condition       | ! \$([CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING](#CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING)) && ! \$([CLANG_COVERAGE_MAPPING](#CLANG_COVERAGE_MAPPING)) |
| DefaultValue    | NO                                                                                                                                                           |
| Name            | CLANG_USE_OPTIMIZATION_PROFILE                                                                                                                               |
| Type            | Boolean                                                                                                                                                      |
| References      |                                                                                                                                                              |

<div id="dev156fad762" class="Subhead">

## Out-of-Range Enum Assignments (CLANG_WARN_ASSIGN_ENUM)

Warn about assigning integer constants to enum values that are out of the range of the enumerated type.

</div>


|                 |                        |
|-----------------|------------------------|
| Category        | Warnings               |
| CommandLineArgs |                        |
| `NO`            |                        |
| `YES`           | -Wassign-enum          |
| DefaultValue    | NO                     |
| Name            | CLANG_WARN_ASSIGN_ENUM |
| Type            | Boolean                |
| References      |                        |

<div id="devbd065fb46" class="Subhead">

## Block Capture of Autoreleasing (CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING)

Warn about block captures of implicitly autoreleasing parameters.

</div>


|                        |                                        |
|------------------------|----------------------------------------|
| Category               | Warnings                               |
| CommandLineArgs        |                                        |
| `NO`                   | -Wno-block-capture-autoreleasing       |
| `YES`                  | -Wblock-capture-autoreleasing          |
| `YES_ERROR`            | -Werror=block-capture-autoreleasing    |
| CommonOption           | NO                                     |
| DefaultValue           | NO                                     |
| Name                   | CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING |
| SupportedVersionRanges | 900.0.0                                |
| Type                   | Enumeration                            |
| Values                 | YES                                    |
|                        | NO                                     |
|                        | YES_ERROR                              |
| References             |                                        |

<div id="dev7fdc71364" class="Subhead">

## Implicit Boolean Conversions (CLANG_WARN_BOOL_CONVERSION)

Warn about implicit conversions to boolean values that are suspicious. For example, writing `if (foo)` where `foo` is the name a function will trigger a warning.

</div>


|                 |                                                                |
|-----------------|----------------------------------------------------------------|
| Category        | Warnings                                                       |
| CommandLineArgs |                                                                |
| `NO`            | -Wno-bool-conversion                                           |
| `YES`           | -Wbool-conversion                                              |
| `YES_ERROR`     | -Werror=bool-conversion                                        |
| DefaultValue    | \$([CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION](#deved57c5818)) |
| Name            | CLANG_WARN_BOOL_CONVERSION                                     |
| Type            | Enumeration                                                    |
| Values          | YES                                                            |
|                 | YES_ERROR                                                      |
|                 | NO                                                             |
| References      |                                                                |

<div id="dev4adf9047e" class="Subhead">

## Suspicious Commas (CLANG_WARN_COMMA)

Warn about suspicious uses of the comma operator.

</div>


|                        |                  |
|------------------------|------------------|
| Category               | Warnings         |
| CommandLineArgs        |                  |
| `NO`                   | -Wno-comma       |
| `YES`                  | -Wcomma          |
| `YES_ERROR`            | -Werror=comma    |
| CommonOption           | NO               |
| DefaultValue           | NO               |
| Name                   | CLANG_WARN_COMMA |
| SupportedVersionRanges | 900.0.0          |
| Type                   | Enumeration      |
| Values                 | YES              |
|                        | NO               |
|                        | YES_ERROR        |
| References             |                  |

<div id="dev813da6ed5" class="Subhead">

## Implicit Constant Conversions (CLANG_WARN_CONSTANT_CONVERSION)

Warn about implicit conversions of constant values that cause the constant value to change, either through a loss of precision, or entirely in its meaning.

</div>


|                 |                                                                |
|-----------------|----------------------------------------------------------------|
| Category        | Warnings                                                       |
| CommandLineArgs |                                                                |
| `NO`            | -Wno-constant-conversion                                       |
| `YES`           | -Wconstant-conversion                                          |
| `YES_ERROR`     | -Werror=constant-conversion                                    |
| DefaultValue    | \$([CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION](#deved57c5818)) |
| Name            | CLANG_WARN_CONSTANT_CONVERSION                                 |
| Type            | Enumeration                                                    |
| Values          | YES                                                            |
|                 | YES_ERROR                                                      |
|                 | NO                                                             |
| References      |                                                                |

<div id="deve87099c47" class="Subhead">

## Using C++11 extensions in earlier versions of C++ (CLANG_WARN_CXX0X_EXTENSIONS)

When compiling C++ code using a language standard older than C++11, warn about the use of C++11 extensions.

</div>


|                 |                             |
|-----------------|-----------------------------|
| Category        | WarningsCXX                 |
| CommandLineArgs |                             |
| `NO`            | -Wno-c++11-extensions       |
| `YES`           | -Wc++11-extensions          |
| DefaultValue    | NO                          |
| FileTypes       | sourcecode.cpp.cpp          |
|                 | sourcecode.cpp.objcpp       |
| Name            | CLANG_WARN_CXX0X_EXTENSIONS |
| Type            | Boolean                     |
| References      |                             |

<div id="dev2e5bb0240" class="Subhead">

## Deleting Instance of Polymorphic Class with No Virtual Destructor (CLANG_WARN_DELETE_NON_VIRTUAL_DTOR)

Warn when deleting an instance of a polymorphic class with virtual functions but without a virtual destructor.

</div>


|                 |                                    |
|-----------------|------------------------------------|
| Category        | WarningsCXX                        |
| CommandLineArgs |                                    |
| `NO`            | -Wno-delete-non-virtual-dtor       |
| `YES`           |                                    |
| `YES_ERROR`     | -Werror=delete-non-virtual-dtor    |
| DefaultValue    | YES                                |
| Name            | CLANG_WARN_DELETE_NON_VIRTUAL_DTOR |
| Type            | Enumeration                        |
| Values          | YES                                |
|                 | YES_ERROR                          |
|                 | NO                                 |
| References      |                                    |

<div id="dev7d445c758" class="Subhead">

## Overriding Deprecated Objective-C Methods (CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS)

Warn if an Objective-C class either subclasses a deprecated class or overrides a method that has been marked deprecated or unavailable.

</div>


|                 |                                            |
|-----------------|--------------------------------------------|
| Category        | WarningsObjC                               |
| CommandLineArgs |                                            |
| `NO`            | -Wno-deprecated-implementations            |
| `YES`           | -Wdeprecated-implementations               |
| DefaultValue    | NO                                         |
| FileTypes       | sourcecode.c.objc                          |
|                 | sourcecode.cpp.objcpp                      |
| Name            | CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS |
| Type            | Boolean                                    |
| References      |                                            |

<div id="dev3eeef651b" class="Subhead">

## Direct usage of 'isa' (CLANG_WARN_DIRECT_OBJC_ISA_USAGE)

Warn about direct accesses to the Objective-C `isa` pointer instead of using a runtime API.

</div>


|                 |                                   |
|-----------------|-----------------------------------|
| Category        | WarningsObjC                      |
| CommandLineArgs |                                   |
| `NO`            | -Wno-deprecated-objc-isa-usage    |
| `YES`           |                                   |
| `YES_ERROR`     | -Werror=deprecated-objc-isa-usage |
| DefaultValue    | YES                               |
| Name            | CLANG_WARN_DIRECT_OBJC_ISA_USAGE  |
| Type            | Enumeration                       |
| Values          | YES                               |
|                 | NO                                |
|                 | YES_ERROR                         |
| References      |                                   |

<div id="devcf351a146" class="Subhead">

## Documentation Comments (CLANG_WARN_DOCUMENTATION_COMMENTS)

Warns about issues in documentation comments (`doxygen`-style) such as missing or incorrect documentation tags.

</div>


|                 |                                   |
|-----------------|-----------------------------------|
| Category        | Warnings                          |
| CommandLineArgs |                                   |
| `NO`            |                                   |
| `YES`           | -Wdocumentation                   |
| DefaultValue    | NO                                |
| Name            | CLANG_WARN_DOCUMENTATION_COMMENTS |
| Type            | Boolean                           |
| References      |                                   |

<div id="dev7c324a687" class="Subhead">

## Empty Loop Bodies (CLANG_WARN_EMPTY_BODY)

Warn about loop bodies that are suspiciously empty.

</div>


|                 |                       |
|-----------------|-----------------------|
| Category        | Warnings              |
| CommandLineArgs |                       |
| `NO`            | -Wno-empty-body       |
| `YES`           | -Wempty-body          |
| DefaultValue    | NO                    |
| Name            | CLANG_WARN_EMPTY_BODY |
| Type            | Boolean               |
| References      |                       |

<div id="dev16cbe25b3" class="Subhead">

## Implicit Enum Conversions (CLANG_WARN_ENUM_CONVERSION)

Warn about implicit conversions between different kinds of enum values. For example, this can catch issues when using the wrong enum flag as an argument to a function or method.

</div>


|                 |                                                                |
|-----------------|----------------------------------------------------------------|
| Category        | Warnings                                                       |
| CommandLineArgs |                                                                |
| `NO`            | -Wno-enum-conversion                                           |
| `YES`           | -Wenum-conversion                                              |
| `YES_ERROR`     | -Werror=enum-conversion                                        |
| DefaultValue    | \$([CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION](#deved57c5818)) |
| Name            | CLANG_WARN_ENUM_CONVERSION                                     |
| Type            | Enumeration                                                    |
| Values          | YES                                                            |
|                 | YES_ERROR                                                      |
|                 | NO                                                             |
| References      |                                                                |

<div id="dev90e0ab556" class="Subhead">

## Implicit Float Conversions (CLANG_WARN_FLOAT_CONVERSION)

Warn about implicit conversions that turn floating-point numbers into integers.

</div>


|                 |                                                                |
|-----------------|----------------------------------------------------------------|
| Category        | Warnings                                                       |
| CommandLineArgs |                                                                |
| `NO`            | -Wno-float-conversion                                          |
| `YES`           | -Wfloat-conversion                                             |
| `YES_ERROR`     | -Werror=float-conversion                                       |
| DefaultValue    | \$([CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION](#deved57c5818)) |
| Name            | CLANG_WARN_FLOAT_CONVERSION                                    |
| Type            | Enumeration                                                    |
| Values          | YES                                                            |
|                 | YES_ERROR                                                      |
|                 | NO                                                             |
| References      |                                                                |

<div id="devd99476ddb" class="Subhead">

## Implicit Signedness Conversions (CLANG_WARN_IMPLICIT_SIGN_CONVERSION)

Warn about implicit integer conversions that change the signedness of an integer value.

</div>


|                 |                                     |
|-----------------|-------------------------------------|
| Category        | Warnings                            |
| CommandLineArgs |                                     |
| `NO`            | -Wno-sign-conversion                |
| `YES`           | -Wsign-conversion                   |
| `YES_ERROR`     | -Werror=sign-conversion             |
| CommonOption    | NO                                  |
| DefaultValue    | NO                                  |
| Name            | CLANG_WARN_IMPLICIT_SIGN_CONVERSION |
| Type            | Enumeration                         |
| Values          | YES                                 |
|                 | YES_ERROR                           |
|                 | NO                                  |
| References      |                                     |

<div id="dev371c2169f" class="Subhead">

## Infinite Recursion (CLANG_WARN_INFINITE_RECURSION)

Warn if all paths through a function call itself.

</div>


|                 |                               |
|-----------------|-------------------------------|
| Category        | Warnings                      |
| CommandLineArgs |                               |
| `NO`            | -Wno-infinite-recursion       |
| `YES`           | -Winfinite-recursion          |
| CommonOption    | NO                            |
| DefaultValue    | NO                            |
| Name            | CLANG_WARN_INFINITE_RECURSION |
| Type            | Boolean                       |
| References      |                               |

<div id="dev7721afbda" class="Subhead">

## Implicit Integer to Pointer Conversions (CLANG_WARN_INT_CONVERSION)

Warn about implicit conversions between pointers and integers. For example, this can catch issues when one incorrectly intermixes using `NSNumber*`'s and raw integers.

</div>


|                 |                                                                |
|-----------------|----------------------------------------------------------------|
| Category        | Warnings                                                       |
| CommandLineArgs |                                                                |
| `NO`            | -Wno-int-conversion                                            |
| `YES`           | -Wint-conversion                                               |
| `YES_ERROR`     | -Werror=int-conversion                                         |
| DefaultValue    | \$([CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION](#deved57c5818)) |
| Name            | CLANG_WARN_INT_CONVERSION                                      |
| Type            | Enumeration                                                    |
| Values          | YES                                                            |
|                 | YES_ERROR                                                      |
|                 | NO                                                             |
| References      |                                                                |

<div id="devd1fca57ed" class="Subhead">

## Missing Noescape Annotation (CLANG_WARN_MISSING_NOESCAPE)

Warn about noescape annotations that are missing in a method's signature.

</div>


|                 |                             |
|-----------------|-----------------------------|
| Category        | WarningsObjC                |
| CommandLineArgs |                             |
| `NO`            | -Wno-missing-noescape       |
| `YES`           |                             |
| `YES_ERROR`     | -Werror=missing-noescape    |
| DefaultValue    | YES                         |
| Name            | CLANG_WARN_MISSING_NOESCAPE |
| Type            | Enumeration                 |
| Values          | YES                         |
|                 | YES_ERROR                   |
|                 | NO                          |
| References      |                             |

<div id="dev0f46fbbee" class="Subhead">

## Implicit Non-Literal Null Conversions (CLANG_WARN_NON_LITERAL_NULL_CONVERSION)

Warn about non-literal expressions that evaluate to zero being treated as a null pointer.

</div>


|                 |                                                                |
|-----------------|----------------------------------------------------------------|
| Category        | Warnings                                                       |
| CommandLineArgs |                                                                |
| `NO`            | -Wno-non-literal-null-conversion                               |
| `YES`           | -Wnon-literal-null-conversion                                  |
| `YES_ERROR`     | -Werror=non-literal-null-conversion                            |
| DefaultValue    | \$([CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION](#deved57c5818)) |
| Name            | CLANG_WARN_NON_LITERAL_NULL_CONVERSION                         |
| Type            | Enumeration                                                    |
| Values          | YES                                                            |
|                 | YES_ERROR                                                      |
|                 | NO                                                             |
| References      |                                                                |

<div id="dev7d4353bd0" class="Subhead">

## Incorrect Uses of Nullable Values (CLANG_WARN_NULLABLE_TO_NONNULL_CONVERSION)

Warns when a nullable expression is used somewhere it’s not allowed, such as when passed as a `_Nonnull` parameter.

</div>


|                 |                                           |
|-----------------|-------------------------------------------|
| CommandLineArgs |                                           |
| `NO`            |                                           |
| `YES`           | -Wnullable-to-nonnull-conversion          |
| DefaultValue    | NO                                        |
| Name            | CLANG_WARN_NULLABLE_TO_NONNULL_CONVERSION |
| Type            | Boolean                                   |
| References      |                                           |

<div id="dev9c07b2231" class="Subhead">

## Implicit ownership types on out parameters (CLANG_WARN_OBJC_EXPLICIT_OWNERSHIP_TYPE)

Warn about implicit ownership types on Objective-C object references as out parameters. For example, declaring a parameter with type `NSObject**` will produce a warning because the compiler will assume that the out parameter's ownership type is `__autoreleasing`.

</div>


|                 |                                         |
|-----------------|-----------------------------------------|
| Category        | WarningsObjCARC                         |
| CommandLineArgs |                                         |
| `NO`            |                                         |
| `YES`           | -Wexplicit-ownership-type               |
| DefaultValue    | NO                                      |
| FileTypes       | sourcecode.c.objc                       |
|                 | sourcecode.cpp.objcpp                   |
| Name            | CLANG_WARN_OBJC_EXPLICIT_OWNERSHIP_TYPE |
| Type            | Boolean                                 |
| References      |                                         |

<div id="devcb601b74f" class="Subhead">

## Implicit Atomic Objective-C Properties (CLANG_WARN_OBJC_IMPLICIT_ATOMIC_PROPERTIES)

Warn about `@property` declarations that are implicitly atomic.

</div>


|                 |                                            |
|-----------------|--------------------------------------------|
| Category        | WarningsObjC                               |
| CommandLineArgs |                                            |
| `NO`            | -Wno-implicit-atomic-properties            |
| `YES`           | -Wimplicit-atomic-properties               |
| DefaultValue    | NO                                         |
| FileTypes       | sourcecode.c.objc                          |
|                 | sourcecode.cpp.objcpp                      |
| Name            | CLANG_WARN_OBJC_IMPLICIT_ATOMIC_PROPERTIES |
| Type            | Boolean                                    |
| References      |                                            |

<div id="dev24b4459e9" class="Subhead">

## Implicit retain of 'self' within blocks (CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF)

Warn about implicit retains of `self` within blocks, which can create a retain-cycle.

</div>


|                 |                                      |
|-----------------|--------------------------------------|
| Category        | WarningsObjCARC                      |
| CommandLineArgs |                                      |
| `NO`            |                                      |
| `YES`           | -Wimplicit-retain-self               |
| DefaultValue    | NO                                   |
| FileTypes       | sourcecode.c.objc                    |
|                 | sourcecode.cpp.objcpp                |
| Name            | CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF |
| Type            | Boolean                              |
| References      |                                      |

<div id="dev2734a43ca" class="Subhead">

## Interface Declarations of Instance Variables (CLANG_WARN_OBJC_INTERFACE_IVARS)

Warn about instance variable declarations in `@interface`.

</div>


|                 |                                 |
|-----------------|---------------------------------|
| Category        | WarningsObjC                    |
| CommandLineArgs |                                 |
| `NO`            | -Wno-objc-interface-ivars       |
| `YES`           | -Wobjc-interface-ivars          |
| `YES_ERROR`     | -Werror=objc-interface-ivars    |
| DefaultValue    | NO                              |
| FileTypes       | sourcecode.c.objc               |
|                 | sourcecode.cpp.objcpp           |
| Name            | CLANG_WARN_OBJC_INTERFACE_IVARS |
| Type            | Enumeration                     |
| Values          | NO                              |
|                 | YES                             |
|                 | YES_ERROR                       |
| References      |                                 |

<div id="dev40efdf012" class="Subhead">

## Implicit Objective-C Literal Conversions (CLANG_WARN_OBJC_LITERAL_CONVERSION)

Warn about implicit conversions from Objective-C literals to values of incompatible type.

</div>


|                 |                                                                |
|-----------------|----------------------------------------------------------------|
| Category        | WarningsObjC                                                   |
| CommandLineArgs |                                                                |
| `NO`            | -Wno-objc-literal-conversion                                   |
| `YES`           | -Wobjc-literal-conversion                                      |
| `YES_ERROR`     | -Werror=objc-literal-conversion                                |
| DefaultValue    | \$([CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION](#deved57c5818)) |
| Name            | CLANG_WARN_OBJC_LITERAL_CONVERSION                             |
| Type            | Enumeration                                                    |
| Values          | YES                                                            |
|                 | YES_ERROR                                                      |
|                 | NO                                                             |
| References      |                                                                |

<div id="dev7f502c3b2" class="Subhead">

## Implicit Synthesized Properties (CLANG_WARN_OBJC_MISSING_PROPERTY_SYNTHESIS)

Starting in Xcode 4.4, Apple Clang will implicitly synthesize properties that are not explicitly synthesized using `@synthesize`. This setting warns about such implicit behavior, even though the property is still synthesized. This is essentially a backwards compatibility warning, or for those who wish to continue to explicitly use `@synthesize`.

</div>


|                 |                                            |
|-----------------|--------------------------------------------|
| Category        | WarningsObjC                               |
| CommandLineArgs |                                            |
| `NO`            |                                            |
| `YES`           | -Wobjc-missing-property-synthesis          |
| DefaultValue    | NO                                         |
| FileTypes       | sourcecode.c.objc                          |
|                 | sourcecode.cpp.objcpp                      |
| Name            | CLANG_WARN_OBJC_MISSING_PROPERTY_SYNTHESIS |
| Type            | Boolean                                    |
| References      |                                            |

<div id="dev5b70653f7" class="Subhead">

## Repeatedly using a __weak reference (CLANG_WARN_OBJC_REPEATED_USE_OF_WEAK)

Warn about repeatedly using a weak reference without assigning the weak reference to a strong reference. This is often symptomatic of a race condition where the weak reference can become `nil` between accesses, resulting in unexpected behavior. Assigning to temporary strong reference ensures the object stays alive during the related accesses.

</div>


|                  |                                      |
|------------------|--------------------------------------|
| Category         | WarningsObjCARC                      |
| CommandLineArgs  |                                      |
| `NO`             | -Wno-arc-repeated-use-of-weak        |
| `YES`            | -Warc-repeated-use-of-weak           |
|                  | -Wno-arc-maybe-repeated-use-of-weak  |
| `YES_AGGRESSIVE` | -Warc-repeated-use-of-weak           |
|                  | -Warc-maybe-repeated-use-of-weak     |
| DefaultValue     | NO                                   |
| FileTypes        | sourcecode.c.objc                    |
|                  | sourcecode.cpp.objcpp                |
| Name             | CLANG_WARN_OBJC_REPEATED_USE_OF_WEAK |
| Type             | Enumeration                          |
| Values           | YES                                  |
|                  | NO                                   |
|                  | YES_AGGRESSIVE                       |
| References       |                                      |

<div id="dev04a3f8f81" class="Subhead">

## Unintentional Root Class (CLANG_WARN_OBJC_ROOT_CLASS)

Warn about classes that unintentionally do not subclass a root class, such as `NSObject`.

</div>


|                 |                            |
|-----------------|----------------------------|
| Category        | WarningsObjC               |
| CommandLineArgs |                            |
| `NO`            | -Wno-objc-root-class       |
| `YES`           |                            |
| `YES_ERROR`     | -Werror=objc-root-class    |
| DefaultValue    | YES                        |
| Name            | CLANG_WARN_OBJC_ROOT_CLASS |
| Type            | Enumeration                |
| Values          | YES                        |
|                 | NO                         |
|                 | YES_ERROR                  |
| References      |                            |

<div id="dev248b97a02" class="Subhead">

## Suspicious Pragma Pack (CLANG_WARN_PRAGMA_PACK)

Warn when a translation unit is missing terminating '#pragma pack (pop)' directives or when the '#pragma pack' state immediately after an #include is different from the state immediately before.

</div>


|                 |                        |
|-----------------|------------------------|
| Category        | Warnings               |
| CommandLineArgs |                        |
| `NO`            | -Wno-pragma-pack       |
| `YES`           |                        |
| `YES_ERROR`     | -Werror=pragma-pack    |
| DefaultValue    | YES                    |
| Name            | CLANG_WARN_PRAGMA_PACK |
| Type            | Enumeration            |
| Values          | YES                    |
|                 | YES_ERROR              |
|                 | NO                     |
| References      |                        |

<div id="dev5b9f307d1" class="Subhead">

## Outdated Private Module Map (CLANG_WARN_PRIVATE_MODULE)

Warn about private modules that do not use the recommended private module layout.

</div>


|                 |                           |
|-----------------|---------------------------|
| Category        | Warnings                  |
| CommandLineArgs |                           |
| `NO`            | -Wno-private-module       |
| `YES`           |                           |
| DefaultValue    | YES                       |
| Name            | CLANG_WARN_PRIVATE_MODULE |
| Type            | Boolean                   |
| References      |                           |

<div id="dev6396e9262" class="Subhead">

## Range-based For Loops (CLANG_WARN_RANGE_LOOP_ANALYSIS)

Warn about ranged-based for loops.

</div>


|                 |                                |
|-----------------|--------------------------------|
| Category        | WarningsCXX                    |
| CommandLineArgs |                                |
| `NO`            | -Wno-range-loop-analysis       |
| `YES`           | -Wrange-loop-analysis          |
| CommonOption    | NO                             |
| DefaultValue    | NO                             |
| FileTypes       | sourcecode.cpp.cpp             |
|                 | sourcecode.cpp.objcpp          |
| Name            | CLANG_WARN_RANGE_LOOP_ANALYSIS |
| Type            | Boolean                        |
| References      |                                |

<div id="dev20dc51521" class="Subhead">

## Semicolon Before Method Body (CLANG_WARN_SEMICOLON_BEFORE_METHOD_BODY)

Warn about ignored semicolon between a method implementation's signature and body.

</div>


|                 |                                         |
|-----------------|-----------------------------------------|
| Category        | Warnings                                |
| CommandLineArgs |                                         |
| `NO`            | -Wno-semicolon-before-method-body       |
| `YES`           | -Wsemicolon-before-method-body          |
| CommonOption    | NO                                      |
| DefaultValue    | NO                                      |
| Name            | CLANG_WARN_SEMICOLON_BEFORE_METHOD_BODY |
| Type            | Boolean                                 |
| References      |                                         |

<div id="deve2459c252" class="Subhead">

## Strict Prototypes (CLANG_WARN_STRICT_PROTOTYPES)

Warn about non-prototype declarations.

</div>


|                        |                              |
|------------------------|------------------------------|
| Category               | Warnings                     |
| CommandLineArgs        |                              |
| `NO`                   | -Wno-strict-prototypes       |
| `YES`                  | -Wstrict-prototypes          |
| `YES_ERROR`            | -Werror=strict-prototypes    |
| CommonOption           | NO                           |
| DefaultValue           | NO                           |
| Name                   | CLANG_WARN_STRICT_PROTOTYPES |
| SupportedVersionRanges | 900.0.0                      |
| Type                   | Enumeration                  |
| Values                 | YES                          |
|                        | NO                           |
|                        | YES_ERROR                    |
| References             |                              |

<div id="deved57c5818" class="Subhead">

## Suspicious Implicit Conversions (CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION)

Warn about various implicit conversions that can lose information or are otherwise suspicious.

</div>


|                 |                                                         |
|-----------------|---------------------------------------------------------|
| Category        | Warnings                                                |
| CommandLineArgs |                                                         |
| `NO`            | -Wno-conversion                                         |
| `YES`           | -Wconversion                                            |
| `YES_ERROR`     | -Werror=conversion                                      |
| CommonOption    | NO                                                      |
| DefaultValue    | NO                                                      |
| Name            | CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION               |
| Type            | Enumeration                                             |
| Values          | YES                                                     |
|                 | YES_ERROR                                               |
|                 | NO                                                      |
| References      | [CLANG_WARN_BOOL_CONVERSION](#dev7fdc71364)             |
|                 | [CLANG_WARN_CONSTANT_CONVERSION](#dev813da6ed5)         |
|                 | [CLANG_WARN_ENUM_CONVERSION](#dev16cbe25b3)             |
|                 | [CLANG_WARN_FLOAT_CONVERSION](#dev90e0ab556)            |
|                 | [CLANG_WARN_INT_CONVERSION](#dev7721afbda)              |
|                 | [CLANG_WARN_NON_LITERAL_NULL_CONVERSION](#dev0f46fbbee) |
|                 | [CLANG_WARN_OBJC_LITERAL_CONVERSION](#dev40efdf012)     |

<div id="devfbce6202a" class="Subhead">

## Suspicious Moves (CLANG_WARN_SUSPICIOUS_MOVE)

Warn about suspicious uses of `std::move`.

</div>


|                 |                            |
|-----------------|----------------------------|
| Category        | WarningsCXX                |
| CommandLineArgs |                            |
| `NO`            | -Wno-move                  |
| `YES`           | -Wmove                     |
| CommonOption    | NO                         |
| DefaultValue    | NO                         |
| FileTypes       | sourcecode.cpp.cpp         |
|                 | sourcecode.cpp.objcpp      |
| Name            | CLANG_WARN_SUSPICIOUS_MOVE |
| Type            | Boolean                    |
| References      |                            |

<div id="dev6d835779d" class="Subhead">

## Unguarded availability (CLANG_WARN_UNGUARDED_AVAILABILITY)

Warn if an API that is newer than the deployment target is used without "if (@available(...))" guards.

</div>


|                        |                                   |
|------------------------|-----------------------------------|
| Category               | Warnings                          |
| CommandLineArgs        |                                   |
| `NO`                   | -Wno-unguarded-availability       |
| `YES`                  |                                   |
| `YES_AGGRESSIVE`       | -Wunguarded-availability          |
| DefaultValue           | YES                               |
| Name                   | CLANG_WARN_UNGUARDED_AVAILABILITY |
| SupportedVersionRanges | 900.0.0                           |
| Type                   | Enumeration                       |
| Values                 | YES                               |
|                        | YES_AGGRESSIVE                    |
|                        | NO                                |
| References             |                                   |

<div id="deve11836916" class="Subhead">

## Unreachable Code (CLANG_WARN_UNREACHABLE_CODE)

Warns about potentially unreachable code.

</div>


|                  |                               |
|------------------|-------------------------------|
| Category         | Warnings                      |
| CommandLineArgs  |                               |
| `NO`             |                               |
| `YES`            | -Wunreachable-code            |
| `YES_AGGRESSIVE` | -Wunreachable-code-aggressive |
| DefaultValue     | NO                            |
| Name             | CLANG_WARN_UNREACHABLE_CODE   |
| Type             | Enumeration                   |
| Values           | YES                           |
|                  | YES_AGGRESSIVE                |
|                  | NO                            |
| References       |                               |

<div id="dev0bb4ad307" class="Subhead">

## Ambiguous C++ Parsing Situation (CLANG_WARN_VEXING_PARSE)

Warn about a parsing ambiguity between a variable declaration and a function-style cast.

</div>


|                 |                         |
|-----------------|-------------------------|
| Category        | WarningsCXX             |
| CommandLineArgs |                         |
| `NO`            | -Wno-vexing-parse       |
| `YES`           |                         |
| `YES_ERROR`     | -Werror=vexing-parse    |
| DefaultValue    | YES                     |
| Name            | CLANG_WARN_VEXING_PARSE |
| Type            | Enumeration             |
| Values          | YES                     |
|                 | YES_ERROR               |
|                 | NO                      |
| References      |                         |

<div id="dev8713c2992" class="Subhead">

## Using __bridge Casts Outside of ARC (CLANG_WARN__ARC_BRIDGE_CAST_NONARC)

Warn about using `__bridge` casts when not using ARC, where they have no effect.

</div>


|                 |                                            |
|-----------------|--------------------------------------------|
| Category        | WarningsObjCARC                            |
| CommandLineArgs |                                            |
| `NO`            | -Wno-arc-bridge-casts-disallowed-in-nonarc |
| `YES`           |                                            |
| DefaultValue    | YES                                        |
| FileTypes       | sourcecode.c.objc                          |
|                 | sourcecode.cpp.objcpp                      |
| Name            | CLANG_WARN__ARC_BRIDGE_CAST_NONARC         |
| Type            | Boolean                                    |
| References      |                                            |

<div id="devc5a443195" class="Subhead">

## Duplicate Method Definitions (CLANG_WARN__DUPLICATE_METHOD_MATCH)

Warn about declaring the same method more than once within the same `@interface`.

</div>


|                 |                                    |
|-----------------|------------------------------------|
| Category        | WarningsObjC                       |
| CommandLineArgs |                                    |
| `NO`            |                                    |
| `YES`           | -Wduplicate-method-match           |
| DefaultValue    | NO                                 |
| FileTypes       | sourcecode.c.objc                  |
|                 | sourcecode.cpp.objcpp              |
| Name            | CLANG_WARN__DUPLICATE_METHOD_MATCH |
| Type            | Boolean                            |
| References      |                                    |

<div id="dev459e1b68f" class="Subhead">

## Exit-Time C++ Destructors (CLANG_WARN__EXIT_TIME_DESTRUCTORS)

Warn about destructors for C++ objects that are called when an application is terminating.

</div>


|                 |                                   |
|-----------------|-----------------------------------|
| Category        | WarningsCXX                       |
| CommandLineArgs |                                   |
| `NO`            | -Wno-exit-time-destructors        |
| `YES`           | -Wexit-time-destructors           |
| DefaultValue    | NO                                |
| FileTypes       | sourcecode.cpp.cpp                |
|                 | sourcecode.cpp.objcpp             |
| Name            | CLANG_WARN__EXIT_TIME_DESTRUCTORS |
| Type            | Boolean                           |
| References      |                                   |

<div id="dev39e2d7a5a" class="Subhead">

## Enable Additional Vector Extensions (CLANG_X86_VECTOR_INSTRUCTIONS)

Enables the use of extended vector instructions. Only used when targeting Intel architectures.

</div>


|                      |                                                                                                |
|----------------------|------------------------------------------------------------------------------------------------|
| Architectures        | i386                                                                                           |
|                      | x86_64                                                                                         |
| AvoidMacroDefinition | YES                                                                                            |
| Category             | CodeGeneration                                                                                 |
| CommandLineArgs      |                                                                                                |
| `<<otherwise>>`      | -m\$([value](#value))                                                                          |
| `avx512`             | -march=skylake-avx512                                                                          |
| `default`            |                                                                                                |
| DefaultValue         | \$(DEFAULT_SSE_LEVEL_4_2_\$([GCC_ENABLE_SSE42_EXTENSIONS](#dev02000b5df)))                     |
| Description          | Enables the use of extended vector instructions. Only used when targeting Intel architectures. |
| DisplayName          | Enable Additional Vector Extensions                                                            |
| Name                 | CLANG_X86_VECTOR_INSTRUCTIONS                                                                  |
| Type                 | Enumeration                                                                                    |
| Values               | default                                                                                        |
|                      | sse3                                                                                           |
|                      | ssse3                                                                                          |
|                      | sse4.1                                                                                         |
|                      | sse4.2                                                                                         |
|                      | avx                                                                                            |
|                      | avx2                                                                                           |
|                      | avx512                                                                                         |
| References           |                                                                                                |

<div id="dev3aac190d4" class="Subhead">

## Code Signing Entitlements (CODE_SIGN_ENTITLEMENTS)

The path to a file specifying code-signing entitlements.

</div>


|                  |                        |
|------------------|------------------------|
| Category         | Code Signing           |
| ConditionFlavors | sdk                    |
| DefaultValue     |                        |
| Name             | CODE_SIGN_ENTITLEMENTS |
| Type             | String                 |
| References       |                        |

<div id="dev75a60e4e6" class="Subhead">

## Code Signing Identity (CODE_SIGN_IDENTITY)

The name, also known as the *common name*, of a valid code-signing certificate in a keychain within your keychain path. A missing or invalid certificate will cause a build error.

</div>


|                  |                    |
|------------------|--------------------|
| Category         | Code Signing       |
| ConditionFlavors | sdk                |
| DefaultValue     |                    |
| Name             | CODE_SIGN_IDENTITY |
| Type             | CodeSignIdentity   |
| References       |                    |

<div id="deve8f07e8c2" class="Subhead">

## Code Signing Inject Base Entitlements (CODE_SIGN_INJECT_BASE_ENTITLEMENTS)

Automatically inject entitlements from the platform's BaseEntitlements.plist into the code signatures of executables.

</div>


|              |                                    |
|--------------|------------------------------------|
| Category     | Code Signing                       |
| DefaultValue | YES                                |
| Name         | CODE_SIGN_INJECT_BASE_ENTITLEMENTS |
| Type         | Boolean                            |
| References   |                                    |

<div id="dev1d45c26b6" class="Subhead">

## Code Sign Style (CODE_SIGN_STYLE)

This setting specifies the method used to acquire and locate signing assets. Choose `Automatic` to let Xcode automatically create and update profiles, app IDs, and certificates. Choose `Manual` to create and update these yourself on the developer website.

</div>


|                  |                 |
|------------------|-----------------|
| Category         | Code Signing    |
| ConditionFlavors | sdk             |
| DefaultValue     |                 |
| DisplayName      | Code Sign Style |
| Name             | CODE_SIGN_STYLE |
| Type             | CodeSignStyle   |
| Values           |                 |
|                  | Automatic       |
|                  | Manual          |
| References       |                 |

<div id="dev81a8eb66e" class="Subhead">

## COMBINE_HIDPI_IMAGES

Combines image files at different resolutions into one multi-page TIFF file that is HiDPI compliant for macOS 10.7 and later. Only image files in the same directory and with the same base name and extension are combined. The file names must conform to the naming convention used in HiDPI.

</div>


|              |                                                                                                                                                                                                                                                                                                  |
|--------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | Deployment                                                                                                                                                                                                                                                                                       |
| DefaultValue | NO                                                                                                                                                                                                                                                                                               |
| Description  | Combines image files at different resolutions into one multi-page TIFF file that is HiDPI compliant for macOS 10.7 and later. Only image files in the same directory and with the same base name and extension are combined. The file names must conform to the naming convention used in HiDPI. |
| Name         | COMBINE_HIDPI_IMAGES                                                                                                                                                                                                                                                                             |
| Type         | Boolean                                                                                                                                                                                                                                                                                          |
| References   |                                                                                                                                                                                                                                                                                                  |

<div id="devbf33b2f96" class="Subhead">

## Enable Index-While-Building Functionality (COMPILER_INDEX_STORE_ENABLE)

Control whether the compiler should emit index data while building.

</div>


|              |                                                                     |
|--------------|---------------------------------------------------------------------|
| Category     | BuildOptions                                                        |
| DefaultValue | Default                                                             |
| Description  | Control whether the compiler should emit index data while building. |
| DisplayName  | Enable Index-While-Building Functionality                           |
| Name         | COMPILER_INDEX_STORE_ENABLE                                         |
| Type         | Enumeration                                                         |
| Values       | Default                                                             |
|              | YES                                                                 |
|              | NO                                                                  |
| References   | [CLANG_INDEX_STORE_ENABLE](#CLANG_INDEX_STORE_ENABLE)               |
|              | [MTL_ENABLE_INDEX_STORE](#MTL_ENABLE_INDEX_STORE)                   |
|              | [SWIFT_INDEX_STORE_ENABLE](#SWIFT_INDEX_STORE_ENABLE)               |

<div id="dev5e9873c30" class="Subhead">

## Compress PNG Files (COMPRESS_PNG_FILES)

If enabled, PNG resource files are compressed as they are copied.

</div>


|                 |                                                                   |
|-----------------|-------------------------------------------------------------------|
| Category        | Packaging                                                         |
| CommandLineArgs |                                                                   |
| `NO`            |                                                                   |
| `YES`           | -compress                                                         |
| DefaultValue    | YES                                                               |
| Description     | If enabled, PNG resource files are compressed as they are copied. |
| DisplayName     | Compress PNG Files                                                |
| Name            | COMPRESS_PNG_FILES                                                |
| Type            | Boolean                                                           |
| References      |                                                                   |

<div id="devff51fed89" class="Subhead">

## CONFIGURATION

Identifies the build configuration, such as `Debug` or `Release`, that the target uses to generate the product.

</div>


|              |                                                                                                                 |
|--------------|-----------------------------------------------------------------------------------------------------------------|
| DefaultValue |                                                                                                                 |
| Description  | Identifies the build configuration, such as `Debug` or `Release`, that the target uses to generate the product. |
| Name         | CONFIGURATION                                                                                                   |
| Type         | String                                                                                                          |
| References   | [BUILT_PRODUCTS_DIR](#devffde5700e)                                                                             |
|              | [CONFIGURATION_BUILD_DIR](#dev1eb1f6acb)                                                                        |
|              | [CONFIGURATION_TEMP_DIR](#devdb4863c50)                                                                         |
|              | [DWARF_DSYM_FOLDER_PATH](#DWARF_DSYM_FOLDER_PATH)                                                               |
|              | [TARGET_BUILD_DIR](#dev256404b3f)                                                                               |
|              | [TARGET_TEMP_DIR](#dev4ad1824fb)                                                                                |

<div id="dev1eb1f6acb" class="Subhead">

## Per-configuration Build Products Path (CONFIGURATION_BUILD_DIR)

The base path where build products will be placed during a build for a given configuration. By default, this is set to `$(BUILD_DIR)/$(CONFIGURATION)`.

</div>


|              |                                                   |
|--------------|---------------------------------------------------|
| Category     | Build Locations                                   |
| DefaultValue | \$([BUILD_DIR](#BUILD_DIR))                       |
| Name         | CONFIGURATION_BUILD_DIR                           |
| Type         | Path                                              |
| References   | [BUILT_PRODUCTS_DIR](#devffde5700e)               |
|              | [DWARF_DSYM_FOLDER_PATH](#DWARF_DSYM_FOLDER_PATH) |
|              | [TARGET_BUILD_DIR](#dev256404b3f)                 |

<div id="devdb4863c50" class="Subhead">

## Per-configuration Intermediate Build Files Path (CONFIGURATION_TEMP_DIR)

The base path where intermediates will be placed during a build for a given configuration. By default, this is set to `$(PROJECT_TEMP_DIR)/$(CONFIGURATION)`.

</div>


|              |                                       |
|--------------|---------------------------------------|
| Category     | Build Locations                       |
| DefaultValue | \$([PROJECT_TEMP_DIR](#dev583a73f21)) |
| Name         | CONFIGURATION_TEMP_DIR                |
| Type         | Path                                  |
| References   | [TARGET_TEMP_DIR](#dev4ad1824fb)      |

<div id="dev7c77fdc88" class="Subhead">

## CONTENTS_FOLDER_PATH

Specifies the directory inside the generated bundle that contains the product’s files.

</div>


|              |                                                                                        |
|--------------|----------------------------------------------------------------------------------------|
| DefaultValue |                                                                                        |
| Description  | Specifies the directory inside the generated bundle that contains the product’s files. |
| Name         | CONTENTS_FOLDER_PATH                                                                   |
| Type         | Path                                                                                   |
| References   | [XPCSERVICES_FOLDER_PATH](#XPCSERVICES_FOLDER_PATH)                                    |

<div id="dev9039029ca" class="Subhead">

## Preserve HFS Data (COPYING_PRESERVES_HFS_DATA)

Causes the copying of resources to preserve resource forks and Finder info.

</div>


|              |                            |
|--------------|----------------------------|
| DefaultValue | NO                         |
| Name         | COPYING_PRESERVES_HFS_DATA |
| Type         | Boolean                    |
| References   |                            |

<div id="devc2606cc19" class="Subhead">

## Run unifdef on Product Headers (COPY_HEADERS_RUN_UNIFDEF)

If enabled, headers are run through the `unifdef(1)` tool when copied to the product.

</div>


|              |                                                                                       |
|--------------|---------------------------------------------------------------------------------------|
| Category     | Headers                                                                               |
| DefaultValue | NO                                                                                    |
| Description  | If enabled, headers are run through the `unifdef(1)` tool when copied to the product. |
| DisplayName  | Run unifdef on Product Headers                                                        |
| Name         | COPY_HEADERS_RUN_UNIFDEF                                                              |
| Type         | Boolean                                                                               |
| References   | [COPY_HEADERS_UNIFDEF_FLAGS](#dev69271c52a)                                           |

<div id="dev69271c52a" class="Subhead">

## Unifdef Flags for Product Headers (COPY_HEADERS_UNIFDEF_FLAGS)

Specifies the flags to pass to `unifdef(1)` when invoking that tool to copy headers. This setting has no effect unless [Run unifdef on Product Headers (COPY_HEADERS_RUN_UNIFDEF)](#devc2606cc19) is enabled.

</div>


|                  |                                                                                                                                                               |
|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category         | Headers                                                                                                                                                       |
| ConditionFlavors | sdk                                                                                                                                                           |
| DefaultValue     |                                                                                                                                                               |
| Description      | Specifies the flags to pass to `unifdef(1)` when invoking that tool to copy headers. This setting has no effect unless `COPY_HEADERS_RUN_UNIFDEF` is enabled. |
| DisplayName      | Unifdef Flags for Product Headers                                                                                                                             |
| Name             | COPY_HEADERS_UNIFDEF_FLAGS                                                                                                                                    |
| Type             | StringList                                                                                                                                                    |
| References       |                                                                                                                                                               |

<div id="dev790305e12" class="Subhead">

## Strip Debug Symbols During Copy (COPY_PHASE_STRIP)

Specifies whether binary files that are copied during the build, such as in a Copy Bundle Resources or Copy Files build phase, should be stripped of debugging symbols. It does not cause the linked product of a target to be stripped—use [Strip Linked Product (STRIP_INSTALLED_PRODUCT)](#dev5c0105d2a) for that.

</div>


|                  |                  |
|------------------|------------------|
| Category         | Deployment       |
| ConditionFlavors | sdk              |
| DefaultValue     | YES              |
| Name             | COPY_PHASE_STRIP |
| Type             | Boolean          |
| References       |                  |

<div id="dev739f630d3" class="Subhead">

## CoreML Model Class Generation Language (COREML_CODEGEN_LANGUAGE)

The Source-code language to use for generated CoreML model class. By default "Automatic" will analyze your project to determine the correct language. Adjust this setting to explicitly select "Swift" or "Objective-C", or select "None" to disable model class generation.

</div>


|              |                                                                                                                                                                                                                                                                                |
|--------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | Code Generation                                                                                                                                                                                                                                                                |
| DefaultValue | Automatic                                                                                                                                                                                                                                                                      |
| Description  | The Source-code language to use for generated CoreML model class.  By default "Automatic" will analyze your project to determine the correct language.  Adjust this setting to explicitly select "Swift" or "Objective-C", or select "None" to disable model class generation. |
| DisplayName  | CoreML Model Class Generation Language                                                                                                                                                                                                                                         |
| Name         | COREML_CODEGEN_LANGUAGE                                                                                                                                                                                                                                                        |
| Type         | enum                                                                                                                                                                                                                                                                           |
| Values       | Swift                                                                                                                                                                                                                                                                          |
|              | Objective-C                                                                                                                                                                                                                                                                    |
|              | Automatic                                                                                                                                                                                                                                                                      |
|              | None                                                                                                                                                                                                                                                                           |
| References   |                                                                                                                                                                                                                                                                                |

<div id="devedf024afa" class="Subhead">

## CoreML Generated Model Inherits NSObject (COREML_CODEGEN_SWIFT_GLOBAL_MODULE)

Generate Swift model classes that are marked with @objc and are descendants of NSObject, in order to be accessible and usable in Objective-C. This setting has no effect if "CoreML Model Class Generation Language" is set to "Objective-C".

</div>


|              |                                                                                                                                                                                                                                                |
|--------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | Code Generation                                                                                                                                                                                                                                |
| DefaultValue | NO                                                                                                                                                                                                                                             |
| Description  | Generate Swift model classes that are marked with @objc and are descendants of NSObject, in order to be accessible and usable in Objective-C.  This setting has no effect if "CoreML Model Class Generation Language" is set to "Objective-C". |
| DisplayName  | CoreML Generated Model Inherits NSObject                                                                                                                                                                                                       |
| Name         | COREML_CODEGEN_SWIFT_GLOBAL_MODULE                                                                                                                                                                                                             |
| Type         | Boolean                                                                                                                                                                                                                                        |
| References   |                                                                                                                                                                                                                                                |

<div id="devf2480d8c6" class="Subhead">

## Cpp Other Preprocessor Flags (CPP_OTHER_PREPROCESSOR_FLAGS)

Other flags to pass to the C preprocessor when using the standalone C Preprocessor rule.

</div>


|                       |                              |
|-----------------------|------------------------------|
| CommandLinePrefixFlag |                              |
| Name                  | CPP_OTHER_PREPROCESSOR_FLAGS |
| Type                  | StringList                   |
| References            |                              |

<div id="dev5d418c53e" class="Subhead">

## Cpp Prefix File (CPP_PREFIX_HEADER)

Implicitly include the given file when preprocessing using the standalone C Preprocessor rule. The path given should either be a project relative path or an absolute path.

</div>


|                 |                                        |
|-----------------|----------------------------------------|
| CommandLineFlag | -include                               |
| InputInclusions | \$([CPP_PREFIX_HEADER](#dev5d418c53e)) |
| Name            | CPP_PREFIX_HEADER                      |
| Type            | String                                 |
| References      |                                        |

<div id="devf75c285e8" class="Subhead">

## Cpp Preprocessor Definitions (CPP_PREPROCESSOR_DEFINITIONS)

Space-separated list of preprocessor macros of the form `foo` or `foo=bar`. These macros are used when preprocessing using the standalone C Preprocessor rule.

</div>


|                       |                              |
|-----------------------|------------------------------|
| CommandLinePrefixFlag | -D                           |
| Name                  | CPP_PREPROCESSOR_DEFINITIONS |
| Type                  | StringList                   |
| References            |                              |

<div id="devbfd50bbf9" class="Subhead">

## Create Info.plist Section in Binary (CREATE_INFOPLIST_SECTION_IN_BINARY)

Enabling this setting will create a section in the product's linked binary containing the processed `Info.plist` file for the target. This setting only applies to command-line tool targets.

</div>


|              |                                    |
|--------------|------------------------------------|
| DefaultValue | NO                                 |
| Name         | CREATE_INFOPLIST_SECTION_IN_BINARY |
| Type         | Boolean                            |
| References   |                                    |

<div id="dev23cfef338" class="Subhead">

## CURRENT_ARCH

The name of the active architecture being processed.

</div>


|              |                                                         |
|--------------|---------------------------------------------------------|
| DefaultValue | \$([arch](#arch))                                       |
| Description  | The name of the active architecture being processed.    |
| Name         | CURRENT_ARCH                                            |
| Type         | String                                                  |
| References   | [CLANG_TARGET_TRIPLE_ARCHS](#CLANG_TARGET_TRIPLE_ARCHS) |
|              | [EXCLUDED_SOURCE_FILE_NAMES](#devd20926192)             |
|              | [LD_DEPENDENCY_INFO_FILE](#dev5b7e93389)                |
|              | [LD_LTO_OBJECT_FILE](#LD_LTO_OBJECT_FILE)               |
|              | [LD_MAP_FILE_PATH](#dev0f5aa9fe1)                       |
|              | [LD_TARGET_TRIPLE_ARCHS](#LD_TARGET_TRIPLE_ARCHS)       |
|              | [SWIFT_TARGET_TRIPLE](#SWIFT_TARGET_TRIPLE)             |

<div id="devd516a860b" class="Subhead">

## Current Project Version (CURRENT_PROJECT_VERSION)

This setting defines the current version of the project. The value must be a integer or floating point number, such as `57` or `365.8`.

</div>


|              |                                             |
|--------------|---------------------------------------------|
| DefaultValue |                                             |
| Name         | CURRENT_PROJECT_VERSION                     |
| Type         | String                                      |
| References   | [VERSION_INFO_STRING](#VERSION_INFO_STRING) |

<div id="dev659e12181" class="Subhead">

## CURRENT_VARIANT

The name of the active variant being processed.

</div>


|              |                                                 |
|--------------|-------------------------------------------------|
| DefaultValue | \$([variant](#variant))                         |
| Description  | The name of the active variant being processed. |
| Name         | CURRENT_VARIANT                                 |
| Type         | String                                          |
| References   | [LD_DEPENDENCY_INFO_FILE](#dev5b7e93389)        |
|              | [LD_LTO_OBJECT_FILE](#LD_LTO_OBJECT_FILE)       |
|              | [LD_MAP_FILE_PATH](#dev0f5aa9fe1)               |

<div id="dev9ed8cb7ad" class="Subhead">

## Dead Code Stripping (DEAD_CODE_STRIPPING)

Activating this setting causes the `-dead_strip` flag to be passed to `ld(1)` via `cc(1)` to turn on dead code stripping.

</div>


|              |                     |
|--------------|---------------------|
| DefaultValue | NO                  |
| Name         | DEAD_CODE_STRIPPING |
| Type         | Boolean             |
| References   |                     |

<div id="dev881878d77" class="Subhead">

## Debug Information Format (DEBUG_INFORMATION_FORMAT)

The type of debug information to produce.

  - *DWARF:* Object files and linked products will use DWARF as the debug information format. `dwarf`

  - *DWARF with dSYM File:* Object files and linked products will use DWARF as the debug information format, and Xcode will also produce a dSYM file containing the debug information from the individual object files (except that a dSYM file is not needed and will not be created for static library or object file products). `dwarf-with-dsym`

</div>


|              |                                                               |
|--------------|---------------------------------------------------------------|
| DefaultValue | dwarf                                                         |
| Name         | DEBUG_INFORMATION_FORMAT                                      |
| Type         | enum                                                          |
| Values       | dwarf                                                         |
|              | dwarf-with-dsym                                               |
| References   | [GCC_DEBUG_INFORMATION_FORMAT](#GCC_DEBUG_INFORMATION_FORMAT) |

<div id="dev82471c743" class="Subhead">

## Defines Module (DEFINES_MODULE)

If enabled, the product will be treated as defining its own module. This enables automatic production of LLVM module map files when appropriate, and allows the product to be imported as a module.

</div>


|              |                                                                                 |
|--------------|---------------------------------------------------------------------------------|
| Category     | Packaging                                                                       |
| DefaultValue | NO                                                                              |
| Name         | DEFINES_MODULE                                                                  |
| Type         | Boolean                                                                         |
| References   | [CLANG_ENABLE_MODULE_IMPLEMENTATION_OF](#CLANG_ENABLE_MODULE_IMPLEMENTATION_OF) |
|              | [HEADERMAP_USES_VFS](#HEADERMAP_USES_VFS)                                       |

<div id="deve688be98f" class="Subhead">

## Deployment Location (DEPLOYMENT_LOCATION)

If enabled, built products are placed in their installed locations in addition to the built products folder.

</div>


|              |                                     |
|--------------|-------------------------------------|
| DefaultValue | NO                                  |
| Name         | DEPLOYMENT_LOCATION                 |
| Type         | Boolean                             |
| References   | [BUILT_PRODUCTS_DIR](#devffde5700e) |

<div id="dev3d6a55e30" class="Subhead">

## Deployment Postprocessing (DEPLOYMENT_POSTPROCESSING)

If enabled, indicates that binaries should be stripped and file mode, owner, and group information should be set to standard values.

</div>


|              |                                               |
|--------------|-----------------------------------------------|
| DefaultValue | NO                                            |
| Name         | DEPLOYMENT_POSTPROCESSING                     |
| Type         | Boolean                                       |
| References   | [LD_FINAL_OUTPUT_FILE](#LD_FINAL_OUTPUT_FILE) |

<div id="devcdbd943f2" class="Subhead">

## DERIVED_FILE_DIR

Identifies the directory into which derived source files, such as those generated by `lex` and `yacc`, are placed.

</div>


|              |                                                                                                                    |
|--------------|--------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/DerivedSources                                                                           |
| Description  | Identifies the directory into which derived source files, such as those generated by `lex` and `yacc`, are placed. |
| Name         | DERIVED_FILE_DIR                                                                                                   |
| Type         | Path                                                                                                               |
| References   | [DERIVED_FILES_DIR](#DERIVED_FILES_DIR)                                                                            |
|              | [DERIVED_SOURCES_DIR](#DERIVED_SOURCES_DIR)                                                                        |
|              | [PROJECT_DERIVED_FILE_DIR](#PROJECT_DERIVED_FILE_DIR)                                                              |
|              | [PROJECT_TEMP_DIR](#dev583a73f21)                                                                                  |
|              | [SHARED_DERIVED_FILE_DIR](#SHARED_DERIVED_FILE_DIR)                                                                |
|              | [TARGET_TEMP_DIR](#dev4ad1824fb)                                                                                   |

<div id="dev186481df2" class="Subhead">

## Development Team (DEVELOPMENT_TEAM)

The team ID of a development team to use for signing certificates and provisioning profiles.

</div>


|                  |                  |
|------------------|------------------|
| Category         | Code Signing     |
| ConditionFlavors | sdk              |
| DefaultValue     |                  |
| DisplayName      | Development Team |
| Name             | DEVELOPMENT_TEAM |
| Type             | DevelopmentTeam  |
| References       |                  |

<div id="devb6f7b1673" class="Subhead">

## Output Log Level (DISTILL_LOGLEVEL)

This option controls the output of the `distill` tool.

</div>




<div id="dev70de6c8f3" class="Subhead">

## Distillation Mode (DISTILL_MODE)

This option controls the mode under which the `distill` tool is run—either it can regenerate its output entirely or it can incrementally edit the existing output.

</div>




<div id="deve3eff3a0d" class="Subhead">

## DOCUMENTATION_FOLDER_PATH

Identifies the directory that contains the bundle’s documentation files.

</div>


|              |                                                                          |
|--------------|--------------------------------------------------------------------------|
| DefaultValue |                                                                          |
| Description  | Identifies the directory that contains the bundle’s documentation files. |
| Name         | DOCUMENTATION_FOLDER_PATH                                                |
| Type         | Path                                                                     |
| References   |                                                                          |

<div id="dev438d356c2" class="Subhead">

## Installation Build Products Location (DSTROOT)

The path at which all products will be rooted when performing an install build. For instance, to install your products on the system proper, set this path to `/`. Defaults to `/tmp/$(PROJECT_NAME).dst` to prevent a *test* install build from accidentally overwriting valid and needed data in the ultimate install path.

Typically this path is not set per target, but is provided as an option on the command line when performing an `xcodebuild install`. It may also be set in a build configuration in special circumstances.

</div>


|                  |                                            |
|------------------|--------------------------------------------|
| Category         | Deployment                                 |
| ConditionFlavors | sdk                                        |
| DefaultValue     | /tmp/\$([PROJECT_NAME](#dev1d2022a00)).dst |
| Name             | DSTROOT                                    |
| Type             | Path                                       |
| References       | [INSTALL_DIR](#dev2bbf4b51d)               |
|                  | [INSTALL_ROOT](#INSTALL_ROOT)              |

<div id="dev15cc78854" class="Subhead">

## Other DTrace Flags (DTRACE_OTHER_FLAGS)

Space-separated list of additional flags to pass to the `dtrace` compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `dtrace` flag.

</div>


|                       |                    |
|-----------------------|--------------------|
| Category              | BuildOptions       |
| CommandLinePrefixFlag |                    |
| DefaultValue          |                    |
| Name                  | DTRACE_OTHER_FLAGS |
| Type                  | StringList         |
| References            |                    |

<div id="dev318c57173" class="Subhead">

## Compatibility Version (DYLIB_COMPATIBILITY_VERSION)

Determines the compatibility version of the resulting library, bundle, or framework binary. See [Dynamic Library Design Guidelines](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/100-Articles/DynamicLibraryDesignGuidelines.html#//apple_ref/doc/uid/TP40002013-SW19) in [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html) for details on assigning version numbers of dynamic libraries.

</div>


|              |                             |
|--------------|-----------------------------|
| DefaultValue |                             |
| Name         | DYLIB_COMPATIBILITY_VERSION |
| Type         | String                      |
| References   |                             |

<div id="dev914a80989" class="Subhead">

## Current Library Version (DYLIB_CURRENT_VERSION)

This setting defines the current version of any framework built by the project. As with [Current Project Version (CURRENT_PROJECT_VERSION)](#devd516a860b), the value must be an integer or floating point number, such as `57` or `365.8`. By default, it is set to `$(CURRENT_PROJECT_VERSION)`. See [Dynamic Library Design Guidelines](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/100-Articles/DynamicLibraryDesignGuidelines.html#//apple_ref/doc/uid/TP40002013-SW19) in [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html) for details on assigning version numbers of dynamic libraries.

</div>


|              |                       |
|--------------|-----------------------|
| DefaultValue |                       |
| Name         | DYLIB_CURRENT_VERSION |
| Type         | String                |
| References   |                       |

<div id="devf51fa1133" class="Subhead">

## Dynamic Library Install Name Base (DYLIB_INSTALL_NAME_BASE)

Sets the base value for the internal `install path` (`LC_ID_DYLIB`) in a dynamic library. This will be combined with the [EXECUTABLE_PATH](#dev5a0a1bb80) to form the full install path. Setting [Dynamic Library Install Name (LD_DYLIB_INSTALL_NAME)](#devbb966571b) directly will override this setting. This setting defaults to the target's [Installation Directory (INSTALL_PATH)](#devabd541cd5). It is ignored when building any product other than a dynamic library.

</div>


|              |                         |
|--------------|-------------------------|
| DefaultValue |                         |
| Name         | DYLIB_INSTALL_NAME_BASE |
| Type         | String                  |
| References   |                         |

<div id="devf7562f56a" class="Subhead">

## Embed Asset Packs In Product Bundle (EMBED_ASSET_PACKS_IN_PRODUCT_BUNDLE)

Embed all the built asset packs inside the product bundle. Since this negates the performance benefits of the On Demand Resources feature, it is only useful for testing purposes when it isn't practical to use an asset pack server.

</div>


|              |                                                                                                                                                                                                                                        |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | Assets                                                                                                                                                                                                                                 |
| DefaultValue | NO                                                                                                                                                                                                                                     |
| Description  | Embed all the built asset packs inside the product bundle. Since this negates the performance benefits of the On Demand Resources feature, it is only useful for testing purposes when it isn't practical to use an asset pack server. |
| DisplayName  | Embed Asset Packs In Product Bundle                                                                                                                                                                                                    |
| Name         | EMBED_ASSET_PACKS_IN_PRODUCT_BUNDLE                                                                                                                                                                                                    |
| Type         | Boolean                                                                                                                                                                                                                                |
| References   |                                                                                                                                                                                                                                        |

<div id="dev6ee230c11" class="Subhead">

## Enable Bitcode (ENABLE_BITCODE)

Activating this setting indicates that the target or project should generate bitcode during compilation for platforms and architectures that support it. For Archive builds, bitcode will be generated in the linked binary for submission to the App Store. For other builds, the compiler and linker will check whether the code complies with the requirements for bitcode generation, but will not generate actual bitcode.

</div>


|              |                                                                   |
|--------------|-------------------------------------------------------------------|
| DefaultValue | NO                                                                |
| Name         | ENABLE_BITCODE                                                    |
| Type         | Boolean                                                           |
| References   | [CLANG_BITCODE_GENERATION_MODE](#CLANG_BITCODE_GENERATION_MODE)   |
|              | [LD_BITCODE_GENERATION_MODE](#LD_BITCODE_GENERATION_MODE)         |
|              | [LD_GENERATE_BITCODE_SYMBOL_MAP](#LD_GENERATE_BITCODE_SYMBOL_MAP) |
|              | [LD_HIDE_BITCODE_SYMBOLS](#LD_HIDE_BITCODE_SYMBOLS)               |
|              | [LD_VERIFY_BITCODE](#LD_VERIFY_BITCODE)                           |
|              | [SWIFT_BITCODE_GENERATION_MODE](#SWIFT_BITCODE_GENERATION_MODE)   |

<div id="devc9bc03cd2" class="Subhead">

## Enable Hardened Runtime (ENABLE_HARDENED_RUNTIME)

Enable hardened runtime restrictions.

</div>


|                  |                                       |
|------------------|---------------------------------------|
| Category         | Code Signing                          |
| ConditionFlavors | sdk                                   |
| DefaultValue     | NO                                    |
| Description      | Enable hardened runtime restrictions. |
| Name             | ENABLE_HARDENED_RUNTIME               |
| Type             | Boolean                               |
| References       |                                       |

<div id="dev7f4be785d" class="Subhead">

## ENABLE_HEADER_DEPENDENCIES

Specifies whether to automatically track dependencies on included header files.

</div>


|              |                                                                                 |
|--------------|---------------------------------------------------------------------------------|
| DefaultValue | YES                                                                             |
| Description  | Specifies whether to automatically track dependencies on included header files. |
| Name         | ENABLE_HEADER_DEPENDENCIES                                                      |
| Type         | Boolean                                                                         |
| References   |                                                                                 |

<div id="devcc157347b" class="Subhead">

## Enable Incremental Distill (ENABLE_INCREMENTAL_DISTILL)

Enabled the incremental `distill` option in the asset catalog compiler. This feature is experimental and should only be enabled with caution.

</div>




<div id="dev43a3744fc" class="Subhead">

## Enable Foundation Assertions (ENABLE_NS_ASSERTIONS)

Controls whether assertion logic provided by `NSAssert` is included in the preprocessed source code or is elided during preprocessing. Disabling assertions can improve code performance.

</div>


|                 |                         |
|-----------------|-------------------------|
| Category        | Preprocessing           |
| CommandLineArgs |                         |
| `NO`            | -DNS_BLOCK_ASSERTIONS=1 |
| `YES`           |                         |
| DefaultValue    | YES                     |
| FileTypes       | sourcecode.c.objc       |
|                 | sourcecode.cpp.objcpp   |
| Name            | ENABLE_NS_ASSERTIONS    |
| Type            | Boolean                 |
| References      |                         |

<div id="dev2de27f7d7" class="Subhead">

## Build Active Resources Only (ENABLE_ONLY_ACTIVE_RESOURCES)

Omit inapplicable resources when building for a single device. For example, when building for a device with a Retina display, exclude 1x resources.

</div>




<div id="dev1005d804c" class="Subhead">

## Enable On Demand Resources (ENABLE_ON_DEMAND_RESOURCES)

If enabled, tagged assets—files and asset catalog entries—are built into asset packs based on their combination of tags. Untagged resources are treated normally.

</div>


|              |                                                                                                                                                                   |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | Assets                                                                                                                                                            |
| DefaultValue | NO                                                                                                                                                                |
| Description  | If enabled, tagged assets—files and asset catalog entries—are built into asset packs based on their combination of tags. Untagged resources are treated normally. |
| DisplayName  | Enable On Demand Resources                                                                                                                                        |
| Name         | ENABLE_ON_DEMAND_RESOURCES                                                                                                                                        |
| Type         | Boolean                                                                                                                                                           |
| References   |                                                                                                                                                                   |

<div id="dev99ec4003c" class="Subhead">

## Enable Strict Checking of objc_msgSend Calls (ENABLE_STRICT_OBJC_MSGSEND)

Controls whether `objc_msgSend` calls must be cast to the appropriate function pointer type before being called.

</div>


|                 |                                  |
|-----------------|----------------------------------|
| Category        | Preprocessing                    |
| CommandLineArgs |                                  |
| `NO`            | -DOBJC_OLD_DISPATCH_PROTOTYPES=1 |
| `YES`           | -DOBJC_OLD_DISPATCH_PROTOTYPES=0 |
| DefaultValue    | NO                               |
| FileTypes       | sourcecode.c.objc                |
|                 | sourcecode.cpp.objcpp            |
| Name            | ENABLE_STRICT_OBJC_MSGSEND       |
| Type            | Boolean                          |
| References      |                                  |

<div id="dev1835b9550" class="Subhead">

## Enable Testability (ENABLE_TESTABILITY)

When this setting is activated, the product will be built with options appropriate for running automated tests, such as making private interfaces accessible to the tests. This may result in tests running slower than they would without testability enabled.

</div>


|              |                                                                                                                                                                                                                                                                 |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | BuildOptions                                                                                                                                                                                                                                                    |
| DefaultValue | NO                                                                                                                                                                                                                                                              |
| Description  | When this setting is activated, the product will be built with options appropriate for running automated tests, such as making private interfaces accessible to the tests. This may result in tests running slower than they would without testability enabled. |
| DisplayName  | Enable Testability                                                                                                                                                                                                                                              |
| Name         | ENABLE_TESTABILITY                                                                                                                                                                                                                                              |
| Type         | Boolean                                                                                                                                                                                                                                                         |
| References   | [SWIFT_ENABLE_TESTABILITY](#SWIFT_ENABLE_TESTABILITY)                                                                                                                                                                                                           |

<div id="dev454fb3164" class="Subhead">

## Sub-Directories to Exclude in Recursive Searches (EXCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES)

This is a list of `fnmatch()`-style patterns of file or directory names to exclude when performing a recursive search. By default, this is set to `*.nib *.lproj *.framework *.gch *.xcode (*) .DS_Store CVS .svn .git .hg`. Normally, if you override this value you should include the default values via the `$(inherited)` macro.

</div>


|              |                                                                                                        |
|--------------|--------------------------------------------------------------------------------------------------------|
| DefaultValue | *.nib *.lproj *.framework *.gch *.xcode* *.xcassets (*) .DS_Store CVS .svn .git .hg *.pbproj *.pbxproj |
| Name         | EXCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES                                                          |
| Type         | StringList                                                                                             |
| References   |                                                                                                        |

<div id="devd20926192" class="Subhead">

## Excluded Source File Names (EXCLUDED_SOURCE_FILE_NAMES)

A list of patterns (as defined by `fnmatch(3)`) specifying the names of source files to explicitly *exclude* when processing the sources build phase (see also [Included Source File Names (INCLUDED_SOURCE_FILE_NAMES)](#dev278eb3050)). This setting can be used to define complex filters for which files from the phase should be built in response to other build settings; for example, a value of `*.$(CURRENT_ARCH).c` could serve to exclude particular files based on the architecture being built.

</div>


|              |                                             |
|--------------|---------------------------------------------|
| DefaultValue |                                             |
| Name         | EXCLUDED_SOURCE_FILE_NAMES                  |
| Type         | StringList                                  |
| References   | [INCLUDED_SOURCE_FILE_NAMES](#dev278eb3050) |

<div id="dev4562c98c6" class="Subhead">

## EXECUTABLES_FOLDER_PATH

Identifies the directory that contains additional binary files.

</div>


|              |                                                                 |
|--------------|-----------------------------------------------------------------|
| DefaultValue |                                                                 |
| Description  | Identifies the directory that contains additional binary files. |
| Name         | EXECUTABLES_FOLDER_PATH                                         |
| Type         | Path                                                            |
| References   |                                                                 |

<div id="dev751e856d2" class="Subhead">

## Executable Extension (EXECUTABLE_EXTENSION)

This is the extension used for the executable product generated by the target, which has a default value based on the product type.

</div>


|              |                      |
|--------------|----------------------|
| DefaultValue |                      |
| Name         | EXECUTABLE_EXTENSION |
| Type         | String               |
| References   |                      |

<div id="dev812d6b471" class="Subhead">

## EXECUTABLE_FOLDER_PATH

Identifies the directory that contains the binary the target builds.

</div>


|              |                                                                      |
|--------------|----------------------------------------------------------------------|
| DefaultValue |                                                                      |
| Description  | Identifies the directory that contains the binary the target builds. |
| Name         | EXECUTABLE_FOLDER_PATH                                               |
| Type         | Path                                                                 |
| References   |                                                                      |

<div id="deva3083ca2f" class="Subhead">

## EXECUTABLE_NAME

Specifies the name of the binary the target produces.

</div>


|              |                                                       |
|--------------|-------------------------------------------------------|
| DefaultValue |                                                       |
| Description  | Specifies the name of the binary the target produces. |
| Name         | EXECUTABLE_NAME                                       |
| Type         | String                                                |
| References   |                                                       |

<div id="dev5a0a1bb80" class="Subhead">

## EXECUTABLE_PATH

Specifies the path to the binary the target produces within its bundle.

</div>


|              |                                                                         |
|--------------|-------------------------------------------------------------------------|
| DefaultValue |                                                                         |
| Description  | Specifies the path to the binary the target produces within its bundle. |
| Name         | EXECUTABLE_PATH                                                         |
| Type         | Path                                                                    |
| References   | [LD_FINAL_OUTPUT_FILE](#LD_FINAL_OUTPUT_FILE)                           |

<div id="dev77ab5c36a" class="Subhead">

## Executable Prefix (EXECUTABLE_PREFIX)

The prefix used for the executable product generated by the target, which has a default value based on the product type.

</div>


|              |                   |
|--------------|-------------------|
| DefaultValue |                   |
| Name         | EXECUTABLE_PREFIX |
| Type         | String            |
| References   |                   |

<div id="devab4997b86" class="Subhead">

## EXECUTABLE_SUFFIX

Specifies the suffix of the binary filename, including the character that separates the extension from the rest of the bundle name.

</div>


|              |                                                                                                                                     |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue |                                                                                                                                     |
| Description  | Specifies the suffix of the binary filename, including the character that separates the extension from the rest of the bundle name. |
| Name         | EXECUTABLE_SUFFIX                                                                                                                   |
| Type         | String                                                                                                                              |
| References   |                                                                                                                                     |

<div id="dev8fda87f60" class="Subhead">

## Exported Symbols File (EXPORTED_SYMBOLS_FILE)

This is a project-relative path to a file that lists the symbols to export. See `ld -exported_symbols_list` for details on exporting symbols.

</div>


|                  |                                          |
|------------------|------------------------------------------|
| ConditionFlavors | arch                                     |
|                  | sdk                                      |
| DefaultValue     |                                          |
| Name             | EXPORTED_SYMBOLS_FILE                    |
| Type             | String                                   |
| References       | [UNEXPORTED_SYMBOLS_FILE](#devecf2a9cfe) |

<div id="devc42940bd1" class="Subhead">

## FRAMEWORKS_FOLDER_PATH

Specifies the directory that contains the product’s embedded frameworks.

</div>


|              |                                                                          |
|--------------|--------------------------------------------------------------------------|
| DefaultValue |                                                                          |
| Description  | Specifies the directory that contains the product’s embedded frameworks. |
| Name         | FRAMEWORKS_FOLDER_PATH                                                   |
| Type         | Path                                                                     |
| References   | [SHARED_FRAMEWORKS_FOLDER_PATH](#devd7a9c1f37)                           |

<div id="dev1b27fb3da" class="Subhead">

## Framework Search Paths (FRAMEWORK_SEARCH_PATHS)

This is a list of paths to folders containing frameworks to be searched by the compiler for both included or imported header files when compiling C, Objective-C, C++, or Objective-C++, and by the linker for frameworks used by the product. Paths are delimited by whitespace, so any paths with spaces in them must be properly quoted.

</div>


|                  |                                                                             |
|------------------|-----------------------------------------------------------------------------|
| ConditionFlavors | arch                                                                        |
|                  | sdk                                                                         |
| DefaultValue     |                                                                             |
| Name             | FRAMEWORK_SEARCH_PATHS                                                      |
| Type             | PathList                                                                    |
| References       | [PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS](#PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS) |
|                  | [SYSTEM_FRAMEWORK_SEARCH_PATHS](#dev9fa1aee62)                              |

<div id="dev9f20a87ee" class="Subhead">

## Framework Version (FRAMEWORK_VERSION)

Framework bundles are versioned by having contents in subfolders of a version folder that has links to the current version and its contents.

</div>


|                  |                   |
|------------------|-------------------|
| Category         | Packaging         |
| ConditionFlavors | sdk               |
| DefaultValue     | A                 |
| Name             | FRAMEWORK_VERSION |
| Type             | String            |
| References       |                   |

<div id="dev8040f1852" class="Subhead">

## 'char' Type Is Unsigned (GCC_CHAR_IS_UNSIGNED_CHAR)

Enabling this setting causes `char` to be unsigned by default, disabling it causes `char` to be signed by default.

</div>


|                 |                           |
|-----------------|---------------------------|
| Category        | Language                  |
| CommandLineArgs |                           |
| `NO`            |                           |
| `YES`           | -funsigned-char           |
| DefaultValue    | NO                        |
| Name            | GCC_CHAR_IS_UNSIGNED_CHAR |
| Type            | Boolean                   |
| References      |                           |

<div id="dev2c30143c0" class="Subhead">

## CodeWarrior/MS-Style Inline Assembly (GCC_CW_ASM_SYNTAX)

Enable the CodeWarrior/Microsoft syntax for inline assembly code in addition to the standard GCC syntax.

</div>


|                 |                   |
|-----------------|-------------------|
| Architectures   | i386              |
|                 | x86_64            |
| Category        | Language          |
| CommandLineArgs |                   |
| `NO`            |                   |
| `YES`           | -fasm-blocks      |
| DefaultValue    | YES               |
| Name            | GCC_CW_ASM_SYNTAX |
| Type            | Boolean           |
| References      |                   |

<div id="devec7a0f555" class="Subhead">

## C Language Dialect (GCC_C_LANGUAGE_STANDARD)

Choose a standard or non-standard C language dialect.

  - *ANSI C:* Accept ISO C90 and ISO C++, turning off GNU extensions that are incompatible. `-ansi` Incompatible GNU extensions include the `asm`, `inline`, and `typeof` keywords (but not the equivalent `__asm__`, `__inline__`, and `__typeof__` forms), and the `//` syntax for comments. This setting also enables trigraphs.

  - *C89:* Accept ISO C90 (1990), but not GNU extensions. `-std=c89`

  - *GNU89:* Accept ISO C90 and GNU extensions. `-std=gnu89`

  - *C99:* Accept ISO C99 (1999), but not GNU extensions. `-std=c99`

  - *GNU99:* Accept ISO C99 and GNU extensions. `-std=gnu99`

  - *C11:* Accept ISO C11 (2011), but not GNU extensions. `-std=c11`

  - *GNU11:* Accept ISO C11 and GNU extensions. `-std=gnu11`

  - *Compiler Default:* Tells the compiler to use its default C language dialect. This is normally the best choice unless you have specific needs. (Currently equivalent to GNU99.)

</div>


|                    |                          |
|--------------------|--------------------------|
| Category           | Language                 |
| CommandLineArgs    |                          |
| `<<otherwise>>`    | -std=\$([value](#value)) |
| `ansi`             | -ansi                    |
| `compiler-default` |                          |
| DefaultValue       | compiler-default         |
| FileTypes          | sourcecode.c.c           |
|                    | sourcecode.c.objc        |
| Name               | GCC_C_LANGUAGE_STANDARD  |
| Type               | Enumeration              |
| Values             | ansi                     |
|                    | c89                      |
|                    | gnu89                    |
|                    | c99                      |
|                    | gnu99                    |
|                    | c11                      |
|                    | gnu11                    |
|                    | compiler-default         |
| References         |                          |

<div id="dev97e9d806e" class="Subhead">

## Generate Position-Dependent Code (GCC_DYNAMIC_NO_PIC)

Faster function calls for applications. Not appropriate for shared libraries, which need to be position-independent.

</div>


|                 |                    |
|-----------------|--------------------|
| Category        | CodeGeneration     |
| CommandLineArgs |                    |
| `NO`            |                    |
| `YES`           | -mdynamic-no-pic   |
| DefaultValue    | NO                 |
| Name            | GCC_DYNAMIC_NO_PIC |
| Type            | Boolean            |
| References      |                    |

<div id="devacb931162" class="Subhead">

## Allow 'asm', 'inline', 'typeof' (GCC_ENABLE_ASM_KEYWORD)

Controls whether `asm`, `inline`, and `typeof` are treated as keywords or whether they can be used as identifiers.

</div>


|                 |                        |
|-----------------|------------------------|
| Category        | Language               |
| CommandLineArgs |                        |
| `NO`            | -fno-asm               |
| `YES`           |                        |
| DefaultValue    | YES                    |
| Name            | GCC_ENABLE_ASM_KEYWORD |
| Type            | Boolean                |
| References      |                        |

<div id="deva6b49de2f" class="Subhead">

## Recognize Builtin Functions (GCC_ENABLE_BUILTIN_FUNCTIONS)

Controls whether builtin functions that do not begin with `__builtin_` as prefix are recognized.

GCC normally generates special code to handle certain builtin functions more efficiently; for instance, calls to `alloca` may become single instructions that adjust the stack directly, and calls to `memcpy` may become inline copy loops. The resulting code is often both smaller and faster, but since the function calls no longer appear as such, you cannot set a breakpoint on those calls, nor can you change the behavior of the functions by linking with a different library. In addition, when a function is recognized as a builtin function, GCC may use information about that function to warn about problems with calls to that function, or to generate more efficient code, even if the resulting code still contains calls to that function. For example, warnings are given with `-Wformat` for bad calls to `printf`, when `printf` is built in, and `strlen` is known not to modify global memory.

</div>


|                 |                              |
|-----------------|------------------------------|
| Category        | Language                     |
| CommandLineArgs |                              |
| `NO`            | -fno-builtin                 |
| `YES`           |                              |
| DefaultValue    | YES                          |
| Name            | GCC_ENABLE_BUILTIN_FUNCTIONS |
| Type            | Boolean                      |
| References      |                              |

<div id="dev02f832e65" class="Subhead">

## Enable C++ Exceptions (GCC_ENABLE_CPP_EXCEPTIONS)

Enable C++ exception handling. Generates extra code needed to propagate exceptions. For some targets, this implies GCC will generate frame unwind information for all functions, which can produce significant data size overhead, although it does not affect execution. If you do not specify this option, GCC will enable it by default for languages like C++ that normally require exception handling, and disable it for languages like C that do not normally require it. However, you may need to enable this option when compiling C code that needs to interoperate properly with exception handlers written in C++.

</div>


|                 |                           |
|-----------------|---------------------------|
| Category        | LanguageCXX               |
| CommandLineArgs |                           |
| `NO`            | -fno-exceptions           |
| `YES`           |                           |
| DefaultValue    | YES                       |
| FileTypes       | sourcecode.cpp.cpp        |
|                 | sourcecode.cpp.objcpp     |
| Name            | GCC_ENABLE_CPP_EXCEPTIONS |
| Type            | Boolean                   |
| References      |                           |

<div id="dev049efca71" class="Subhead">

## Enable C++ Runtime Types (GCC_ENABLE_CPP_RTTI)

Enable generation of information about every class with virtual functions for use by the C++ runtime type identification features (`dynamic_cast` and `typeid`). If you don't use those parts of the language, you can save some space by using this flag. Note that exception handling uses the same information, but it will generate it as needed.

</div>


|                 |                       |
|-----------------|-----------------------|
| Category        | LanguageCXX           |
| CommandLineArgs |                       |
| `NO`            | -fno-rtti             |
|                 | -fno-sanitize=vptr    |
| `YES`           |                       |
| DefaultValue    | YES                   |
| FileTypes       | sourcecode.cpp.cpp    |
|                 | sourcecode.cpp.objcpp |
| Name            | GCC_ENABLE_CPP_RTTI   |
| Type            | Boolean               |
| References      |                       |

<div id="dev8253fe395" class="Subhead">

## Enable Exceptions (GCC_ENABLE_EXCEPTIONS)

Enable exception handling. Generates extra code needed to propagate exceptions. For some targets, this implies GCC will generate frame unwind information for all functions, which can produce significant data size overhead, although it does not affect execution. If you do not specify this option, GCC will enable it by default for languages like C++ and Objective-C that normally require exception handling, and disable it for languages like C that do not normally require it. However, you may need to enable this option when compiling C code that needs to interoperate properly with exception handlers written in other languages. You may also wish to disable this option if you are compiling older programs that don't use exception handling.

</div>


|                 |                       |
|-----------------|-----------------------|
| CommandLineFlag | -fexceptions          |
| DefaultValue    | NO                    |
| Name            | GCC_ENABLE_EXCEPTIONS |
| Type            | Boolean               |
| References      |                       |

<div id="deve550de002" class="Subhead">

## Generate Floating Point Library Calls (GCC_ENABLE_FLOATING_POINT_LIBRARY_CALLS)

Generate output containing library calls for floating point.

</div>


|                 |                                         |
|-----------------|-----------------------------------------|
| Category        | Language                                |
| CommandLineArgs |                                         |
| `NO`            |                                         |
| `YES`           | -msoft-float                            |
| DefaultValue    | NO                                      |
| Name            | GCC_ENABLE_FLOATING_POINT_LIBRARY_CALLS |
| Type            | Boolean                                 |
| References      |                                         |

<div id="devf28aeb2f5" class="Subhead">

## Kernel Development Mode (GCC_ENABLE_KERNEL_DEVELOPMENT)

Activating this setting enables kernel development mode.

</div>


|                 |                               |
|-----------------|-------------------------------|
| Category        | CodeGeneration                |
| CommandLineArgs |                               |
| `NO`            |                               |
| `YES`           | -mkernel                      |
| DefaultValue    | NO                            |
| Name            | GCC_ENABLE_KERNEL_DEVELOPMENT |
| Type            | Boolean                       |
| References      |                               |

<div id="deve6adf64bf" class="Subhead">

## Enable Objective-C Exceptions (GCC_ENABLE_OBJC_EXCEPTIONS)

This setting enables `@try`/`@catch`/`@throw` syntax for handling exceptions in Objective-C code. Only applies to Objective-C.

</div>


|                 |                            |
|-----------------|----------------------------|
| Category        | LanguageObjC               |
| CommandLineArgs |                            |
| `NO`            | -fno-objc-exceptions       |
| `YES`           |                            |
| DefaultValue    | YES                        |
| FileTypes       | sourcecode.c.objc          |
|                 | sourcecode.cpp.objcpp      |
| Name            | GCC_ENABLE_OBJC_EXCEPTIONS |
| Type            | Boolean                    |
| References      |                            |

<div id="devd446ab334" class="Subhead">

## Recognize Pascal Strings (GCC_ENABLE_PASCAL_STRINGS)

Recognize and construct Pascal-style string literals. Its use in new code is discouraged.

Pascal string literals take the form `"pstring"` . The special escape sequence `p` denotes the Pascal length byte for the string, and will be replaced at compile time with the number of characters that follow. The `p` may only appear at the beginning of a string literal, and may not appear in wide string literals or as an integral constant.

</div>


|                 |                           |
|-----------------|---------------------------|
| Category        | Language                  |
| CommandLineArgs |                           |
| `NO`            |                           |
| `YES`           | -fpascal-strings          |
| DefaultValue    | YES                       |
| Name            | GCC_ENABLE_PASCAL_STRINGS |
| Type            | Boolean                   |
| References      |                           |

<div id="dev525519085" class="Subhead">

## Enable SSE3 Extensions (GCC_ENABLE_SSE3_EXTENSIONS)

Specifies whether the binary uses the builtin functions that provide access to the SSE3 extensions to the IA-32 architecture.

</div>


|                 |                                                                                                                               |
|-----------------|-------------------------------------------------------------------------------------------------------------------------------|
| Architectures   | i386                                                                                                                          |
|                 | x86_64                                                                                                                        |
| CommandLineArgs |                                                                                                                               |
| `NO`            |                                                                                                                               |
| `YES`           |                                                                                                                               |
| DefaultValue    | NO                                                                                                                            |
| Description     | Specifies whether the binary uses the builtin functions that provide access to the SSE3 extensions to the IA-32 architecture. |
| DisplayName     | Enable SSE3 Extensions                                                                                                        |
| Name            | GCC_ENABLE_SSE3_EXTENSIONS                                                                                                    |
| Type            | Boolean                                                                                                                       |
| References      | [DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_NO](#DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_NO)                                                   |

<div id="dev770cb2698" class="Subhead">

## Enable SSE4.1 Extensions (GCC_ENABLE_SSE41_EXTENSIONS)

Specifies whether the binary uses the builtin functions that provide access to the SSE4.1 extensions to the IA-32 architecture.

</div>


|                 |                                                                                                                                 |
|-----------------|---------------------------------------------------------------------------------------------------------------------------------|
| Architectures   | i386                                                                                                                            |
|                 | x86_64                                                                                                                          |
| CommandLineArgs |                                                                                                                                 |
| `NO`            |                                                                                                                                 |
| `YES`           |                                                                                                                                 |
| DefaultValue    | NO                                                                                                                              |
| Description     | Specifies whether the binary uses the builtin functions that provide access to the SSE4.1 extensions to the IA-32 architecture. |
| DisplayName     | Enable SSE4.1 Extensions                                                                                                        |
| Name            | GCC_ENABLE_SSE41_EXTENSIONS                                                                                                     |
| Type            | Boolean                                                                                                                         |
| References      | [DEFAULT_SSE_LEVEL_4_2_NO](#DEFAULT_SSE_LEVEL_4_2_NO)                                                                           |

<div id="dev02000b5df" class="Subhead">

## Enable SSE4.2 Extensions (GCC_ENABLE_SSE42_EXTENSIONS)

Specifies whether the binary uses the builtin functions that provide access to the SSE4.2 extensions to the IA-32 architecture.

</div>


|                 |                                                                                                                                 |
|-----------------|---------------------------------------------------------------------------------------------------------------------------------|
| Architectures   | i386                                                                                                                            |
|                 | x86_64                                                                                                                          |
| CommandLineArgs |                                                                                                                                 |
| `NO`            |                                                                                                                                 |
| `YES`           |                                                                                                                                 |
| DefaultValue    | NO                                                                                                                              |
| Description     | Specifies whether the binary uses the builtin functions that provide access to the SSE4.2 extensions to the IA-32 architecture. |
| DisplayName     | Enable SSE4.2 Extensions                                                                                                        |
| Name            | GCC_ENABLE_SSE42_EXTENSIONS                                                                                                     |
| Type            | Boolean                                                                                                                         |
| References      | [CLANG_X86_VECTOR_INSTRUCTIONS](#dev39e2d7a5a)                                                                                  |

<div id="dev9c0e68f79" class="Subhead">

## Enable Trigraphs (GCC_ENABLE_TRIGRAPHS)

Controls whether or not trigraphs are permitted in the source code.

</div>


|                 |                      |
|-----------------|----------------------|
| Category        | Language             |
| CommandLineArgs |                      |
| `NO`            | -Wno-trigraphs       |
| `YES`           | -trigraphs           |
| DefaultValue    | NO                   |
| Name            | GCC_ENABLE_TRIGRAPHS |
| Type            | Boolean              |
| References      |                      |

<div id="devfaa514090" class="Subhead">

## Relax IEEE Compliance (GCC_FAST_MATH)

Enables some floating point optimizations that are not IEEE754-compliant, but which usually work. Programs that require strict IEEE compliance may not work with this option.

</div>


|                 |                                                                                             |
|-----------------|---------------------------------------------------------------------------------------------|
| Category        | CodeGeneration                                                                              |
| CommandLineArgs |                                                                                             |
| `NO`            |                                                                                             |
| `YES`           | -ffast-math                                                                                 |
| Condition       | \$([LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS](#LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS)) == NO |
| DefaultValue    | NO                                                                                          |
| Name            | GCC_FAST_MATH                                                                               |
| Type            | Boolean                                                                                     |
| References      |                                                                                             |

<div id="dev667b2f097" class="Subhead">

## Generate Debug Symbols (GCC_GENERATE_DEBUGGING_SYMBOLS)

Enables or disables generation of debug symbols. When debug symbols are enabled, the level of detail can be controlled by the [Debug Information Format (DEBUG_INFORMATION_FORMAT)](#dev881878d77) setting.

</div>


|              |                                                               |
|--------------|---------------------------------------------------------------|
| Category     | CodeGeneration                                                |
| DefaultValue | YES                                                           |
| Name         | GCC_GENERATE_DEBUGGING_SYMBOLS                                |
| Type         | Boolean                                                       |
| References   | [CLANG_DEBUG_INFORMATION_LEVEL](#dev75a59f57c)                |
|              | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES)                   |
|              | [GCC_DEBUG_INFORMATION_FORMAT](#GCC_DEBUG_INFORMATION_FORMAT) |
|              | [LD_LTO_OBJECT_FILE](#LD_LTO_OBJECT_FILE)                     |

<div id="dev5d764bc4d" class="Subhead">

## Generate Legacy Test Coverage Files (GCC_GENERATE_TEST_COVERAGE_FILES)

Activating this setting causes a `notes` file to be produced that the `gcov` code-coverage utility can use to show program coverage.

</div>


|                      |                                  |
|----------------------|----------------------------------|
| AdditionalLinkerArgs |                                  |
| `NO`                 |                                  |
| `YES`                | -ftest-coverage                  |
| Category             | CodeGeneration                   |
| CommandLineArgs      |                                  |
| `NO`                 |                                  |
| `YES`                | -ftest-coverage                  |
| DefaultValue         | NO                               |
| Name                 | GCC_GENERATE_TEST_COVERAGE_FILES |
| Type                 | Boolean                          |
| References           |                                  |

<div id="devac02bcf03" class="Subhead">

## Increase Sharing of Precompiled Headers (GCC_INCREASE_PRECOMPILED_HEADER_SHARING)

Enabling this option will enable increased sharing of precompiled headers among targets that share the same prefix header and precompiled header directory.

Xcode distinguishes between precompiled header (PCH) files by generating a hash value based on the command-line options to the compiler used to create the PCH. Enabling this option will exclude certain compiler options from that hash. Presently this option will exclude search path options (`-I`, `-iquote`, `-isystem`, `-F`, `-L`) from the hash.

Enabling increased sharing of PCH files carries some risk—if two targets use the same prefix header but have different include paths that cause the prefix header to include different files when they are precompiled, then subtle problems may result because one target will use a PCH that was built using files included by the other target. In this case, this option must be turned off in order to enforce correctness.

</div>


|                  |                                         |
|------------------|-----------------------------------------|
| Category         | Language                                |
| ConditionFlavors |                                         |
| DefaultValue     | NO                                      |
| Name             | GCC_INCREASE_PRECOMPILED_HEADER_SHARING |
| Type             | Boolean                                 |
| References       |                                         |

<div id="devb678649f4" class="Subhead">

## Inline Methods Hidden (GCC_INLINES_ARE_PRIVATE_EXTERN)

When enabled, out-of-line copies of inline methods are declared `private extern`.

</div>


|                 |                                                                                   |
|-----------------|-----------------------------------------------------------------------------------|
| AppearsAfter    | GCC_SYMBOLS_PRIVATE_EXTERN                                                        |
| Category        | CodeGeneration                                                                    |
| CommandLineArgs |                                                                                   |
| `NO`            |                                                                                   |
| `YES`           | -fvisibility-inlines-hidden                                                       |
| DefaultValue    | NO                                                                                |
| Description     | When enabled, out-of-line copies of inline methods are declared `private extern`. |
| DisplayName     | Inline Methods Hidden                                                             |
| FileTypes       | sourcecode.cpp.cpp                                                                |
|                 | sourcecode.cpp.objcpp                                                             |
| Name            | GCC_INLINES_ARE_PRIVATE_EXTERN                                                    |
| Type            | Boolean                                                                           |
| References      | [GCC_THREADSAFE_STATICS](#dev3418fa358)                                           |

<div id="dev2be0fc588" class="Subhead">

## Compile Sources As (GCC_INPUT_FILETYPE)

Specifies whether to compile each source file according to its file type, or whether to treat all source files in the target as if they are of a specific language.

</div>


|              |                       |
|--------------|-----------------------|
| Category     | Language              |
| DefaultValue | automatic             |
| Name         | GCC_INPUT_FILETYPE    |
| Type         | Enumeration           |
| Values       | automatic             |
|              | sourcecode.c.c        |
|              | sourcecode.c.objc     |
|              | sourcecode.cpp.cpp    |
|              | sourcecode.cpp.objcpp |
| References   |                       |

<div id="dev86a18f5a0" class="Subhead">

## Instrument Program Flow (GCC_INSTRUMENT_PROGRAM_FLOW_ARCS)

Activating this setting indicates that code should be added so program flow arcs are instrumented.

</div>


|                      |                                  |
|----------------------|----------------------------------|
| AdditionalLinkerArgs |                                  |
| `NO`                 |                                  |
| `YES`                | -fprofile-arcs                   |
| Category             | CodeGeneration                   |
| CommandLineArgs      |                                  |
| `NO`                 |                                  |
| `YES`                | -fprofile-arcs                   |
| DefaultValue         | NO                               |
| Name                 | GCC_INSTRUMENT_PROGRAM_FLOW_ARCS |
| Type                 | Boolean                          |
| References           |                                  |

<div id="dev0c8bdc4b3" class="Subhead">

## Enable Linking With Shared Libraries (GCC_LINK_WITH_DYNAMIC_LIBRARIES)

Enabling this option allows linking with the shared libraries. This is the default for most product types.

</div>


|                 |                                 |
|-----------------|---------------------------------|
| Category        | Language                        |
| CommandLineArgs |                                 |
| `NO`            | -static                         |
| `YES`           |                                 |
| DefaultValue    | YES                             |
| Name            | GCC_LINK_WITH_DYNAMIC_LIBRARIES |
| Type            | Boolean                         |
| References      |                                 |

<div id="dev377aef9cd" class="Subhead">

## No Common Blocks (GCC_NO_COMMON_BLOCKS)

In C, allocate even uninitialized global variables in the data section of the object file, rather than generating them as common blocks. This has the effect that if the same variable is declared (without `extern`) in two different compilations, you will get an error when you link them.

</div>


|                 |                      |
|-----------------|----------------------|
| Category        | CodeGeneration       |
| CommandLineArgs |                      |
| `NO`            |                      |
| `YES`           | -fno-common          |
| DefaultValue    | NO                   |
| Name            | GCC_NO_COMMON_BLOCKS |
| Type            | Boolean              |
| References      |                      |

<div id="dev80f5ad208" class="Subhead">

## Optimization Level (GCC_OPTIMIZATION_LEVEL)

Specifies the degree to which the generated code is optimized for speed and binary size.

  - *None:* Do not optimize. `-O0` With this setting, the compiler's goal is to reduce the cost of compilation and to make debugging produce the expected results. Statements are independent—if you stop the program with a breakpoint between statements, you can then assign a new value to any variable or change the program counter to any other statement in the function and get exactly the results you would expect from the source code.

  - *Fast:* Optimizing compilation takes somewhat more time, and a lot more memory for a large function. `-O1` With this setting, the compiler tries to reduce code size and execution time, without performing any optimizations that take a great deal of compilation time. In Apple's compiler, strict aliasing, block reordering, and inter-block scheduling are disabled by default when optimizing.

  - *Faster:* The compiler performs nearly all supported optimizations that do not involve a space-speed tradeoff. `-O2` With this setting, the compiler does not perform loop unrolling or function inlining, or register renaming. As compared to the `Fast` setting, this setting increases both compilation time and the performance of the generated code.

  - *Fastest:* Turns on all optimizations specified by the `Faster` setting and also turns on function inlining and register renaming options. This setting may result in a larger binary. `-O3`

  - *Fastest, Smallest:* Optimize for size. This setting enables all `Faster` optimizations that do not typically increase code size. It also performs further optimizations designed to reduce code size. `-Os`

  - *Fastest, Aggressive Optimizations:* This setting enables `Fastest` but also enables aggressive optimizations that may break strict standards compliance but should work well on well-behaved code. `-Ofast`

</div>


|                 |                                                                                   |
|-----------------|-----------------------------------------------------------------------------------|
| Category        | CodeGeneration                                                                    |
| CommandLineArgs | -O\$([value](#value))                                                             |
| DefaultValue    | s                                                                                 |
| Name            | GCC_OPTIMIZATION_LEVEL                                                            |
| Type            | Enumeration                                                                       |
| Values          | 0                                                                                 |
|                 | 1                                                                                 |
|                 | 2                                                                                 |
|                 | 3                                                                                 |
|                 | s                                                                                 |
|                 | fast                                                                              |
|                 | z                                                                                 |
| References      | [CLANG_INDEX_STORE_ENABLE](#CLANG_INDEX_STORE_ENABLE)                             |
|                 | [LD_DONT_RUN_DEDUPLICATION](#LD_DONT_RUN_DEDUPLICATION)                           |
|                 | [LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS](#LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS) |

<div id="dev158433cad" class="Subhead">

## Precompile Prefix Header (GCC_PRECOMPILE_PREFIX_HEADER)

Generates a precompiled header for the prefix header, which should reduce overall build times.

Precompiling the prefix header will be most effective if the contents of the prefix header or any file it includes change rarely. If the contents of the prefix header or any file it includes change frequently, there may be a negative impact to overall build time.

</div>


|                  |                                             |
|------------------|---------------------------------------------|
| Category         | Language                                    |
| ConditionFlavors |                                             |
| DefaultValue     | NO                                          |
| Name             | GCC_PRECOMPILE_PREFIX_HEADER                |
| Type             | Boolean                                     |
| References       | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES) |

<div id="dev8622c506f" class="Subhead">

## Prefix Header (GCC_PREFIX_HEADER)

Implicitly include the named header. The path given should either be a project relative path or an absolute path.

</div>


|                  |                                             |
|------------------|---------------------------------------------|
| Category         | Language                                    |
| ConditionFlavors |                                             |
| DefaultValue     |                                             |
| Name             | GCC_PREFIX_HEADER                           |
| Type             | String                                      |
| References       | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES) |

<div id="deve851742a0" class="Subhead">

## Preprocessor Macros (GCC_PREPROCESSOR_DEFINITIONS)

Space-separated list of preprocessor macros of the form `foo` or `foo=bar`.

</div>


|                 |                                                                    |
|-----------------|--------------------------------------------------------------------|
| Category        | Preprocessing                                                      |
| CommandLineArgs | -D\$([value](#value))                                              |
| DefaultValue    |                                                                    |
| Name            | GCC_PREPROCESSOR_DEFINITIONS                                       |
| Type            | StringList                                                         |
| References      | [CLANG_MODULES_IGNORE_MACROS](#CLANG_MODULES_IGNORE_MACROS)        |
|                 | [GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS](#deve5cb410bb) |

<div id="deve5cb410bb" class="Subhead">

## Preprocessor Macros Not Used In Precompiled Headers (GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS)

Space-separated list of preprocessor macros of the form `foo` or `foo=bar`. These macros are not used when precompiling a prefix header file.

</div>


|              |                                                             |
|--------------|-------------------------------------------------------------|
| Category     | Preprocessing                                               |
| DefaultValue |                                                             |
| Name         | GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS           |
| Type         | StringList                                                  |
| References   | [CLANG_MODULES_IGNORE_MACROS](#CLANG_MODULES_IGNORE_MACROS) |

<div id="deva240c361f" class="Subhead">

## Make Strings Read-Only (GCC_REUSE_STRINGS)

Reuse string literals.

</div>


|                 |                    |
|-----------------|--------------------|
| Category        | CodeGeneration     |
| CommandLineArgs |                    |
| `NO`            | -fwritable-strings |
| `YES`           |                    |
| DefaultValue    | YES                |
| Name            | GCC_REUSE_STRINGS  |
| Type            | Boolean            |
| References      |                    |

<div id="deveab0eb93d" class="Subhead">

## Short Enumeration Constants (GCC_SHORT_ENUMS)

Make enums only as large as needed for the range of possible values.

This setting generates code that may not binary compatible with code generated without this setting or with macOS frameworks.

</div>


|                 |                 |
|-----------------|-----------------|
| Category        | Language        |
| CommandLineArgs |                 |
| `NO`            |                 |
| `YES`           | -fshort-enums   |
| DefaultValue    | NO              |
| Name            | GCC_SHORT_ENUMS |
| Type            | Boolean         |
| References      |                 |

<div id="dev51d30bd71" class="Subhead">

## Enforce Strict Aliasing (GCC_STRICT_ALIASING)

Optimize code by making more aggressive assumptions about whether pointers can point to the same objects as other pointers. Programs that use pointers a lot may benefit from this, but programs that don't strictly follow the ISO C rules about the type with which an object may be accessed may behave unexpectedly.

</div>


|                 |                      |
|-----------------|----------------------|
| Category        | CodeGeneration       |
| CommandLineArgs |                      |
| `NO`            | -fno-strict-aliasing |
| `YES`           | -fstrict-aliasing    |
| DefaultValue    | YES                  |
| Name            | GCC_STRICT_ALIASING  |
| Type            | Boolean              |
| References      |                      |

<div id="dev7faa5bb1c" class="Subhead">

## Symbols Hidden by Default (GCC_SYMBOLS_PRIVATE_EXTERN)

When enabled, all symbols are declared `private extern` unless explicitly marked to be exported using `__attribute__((visibility("default")))` in code. If not enabled, all symbols are exported unless explicitly marked as `private extern`. See [Controlling Symbol Visibility](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/CppRuntimeEnv/Articles/SymbolVisibility.html#//apple_ref/doc/uid/TP40001670-CJBGBHEJ) in [C++ Runtime Environment Programming Guide](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/CppRuntimeEnv/CPPRuntimeEnv.html).

</div>


|                 |                                                 |
|-----------------|-------------------------------------------------|
| AppearsAfter    | GCC_FEEDBACK_DIRECTED_OPTIMIZATION              |
| Category        | CodeGeneration                                  |
| CommandLineArgs |                                                 |
| `NO`            |                                                 |
| `YES`           | -fvisibility=hidden                             |
| DefaultValue    | NO                                              |
| Name            | GCC_SYMBOLS_PRIVATE_EXTERN                      |
| Type            | Boolean                                         |
| References      | [GCC_INLINES_ARE_PRIVATE_EXTERN](#devb678649f4) |

<div id="dev3418fa358" class="Subhead">

## Statics are Thread-Safe (GCC_THREADSAFE_STATICS)

Emits extra code to use the routines specified in the C++ ABI for thread-safe initialization of local statics. You can disable this option to reduce code size slightly in code that doesn't need to be thread-safe.

</div>


|                 |                                                                                                                                                                                                                      |
|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| AppearsAfter    | GCC_INLINES_ARE_PRIVATE_EXTERN                                                                                                                                                                                       |
| Category        | CodeGeneration                                                                                                                                                                                                       |
| CommandLineArgs |                                                                                                                                                                                                                      |
| `NO`            | -fno-threadsafe-statics                                                                                                                                                                                              |
| `YES`           |                                                                                                                                                                                                                      |
| DefaultValue    | YES                                                                                                                                                                                                                  |
| Description     | Emits extra code to use the routines specified in the C++ ABI for thread-safe initialization of local statics. You can disable this option to reduce code size slightly in code that doesn't need to be thread-safe. |
| DisplayName     | Statics are Thread-Safe                                                                                                                                                                                              |
| FileTypes       | sourcecode.cpp.cpp                                                                                                                                                                                                   |
|                 | sourcecode.cpp.objcpp                                                                                                                                                                                                |
| Name            | GCC_THREADSAFE_STATICS                                                                                                                                                                                               |
| Type            | Boolean                                                                                                                                                                                                              |
| References      |                                                                                                                                                                                                                      |

<div id="dev70810b123" class="Subhead">

## Treat Missing Function Prototypes as Errors (GCC_TREAT_IMPLICIT_FUNCTION_DECLARATIONS_AS_ERRORS)

Causes warnings about missing function prototypes to be treated as errors. Only applies to C and Objective-C.

</div>


|                 |                                                    |
|-----------------|----------------------------------------------------|
| AppearsAfter    | GCC_TREAT_WARNINGS_AS_ERRORS                       |
| Category        | Warnings                                           |
| CommandLineArgs |                                                    |
| `NO`            |                                                    |
| `YES`           | -Werror=implicit-function-declaration              |
| DefaultValue    | NO                                                 |
| FileTypes       | sourcecode.c.c                                     |
|                 | sourcecode.c.objc                                  |
| Name            | GCC_TREAT_IMPLICIT_FUNCTION_DECLARATIONS_AS_ERRORS |
| Type            | Boolean                                            |
| References      |                                                    |

<div id="devb7687aeb6" class="Subhead">

## Treat Incompatible Pointer Type Warnings as Errors (GCC_TREAT_INCOMPATIBLE_POINTER_TYPE_WARNINGS_AS_ERRORS)

Enabling this option causes warnings about incompatible pointer types to be treated as errors.

</div>


|                 |                                                        |
|-----------------|--------------------------------------------------------|
| AppearsAfter    | GCC_TREAT_WARNINGS_AS_ERRORS                           |
| Category        | Warnings                                               |
| CommandLineArgs |                                                        |
| `NO`            |                                                        |
| `YES`           | -Werror=incompatible-pointer-types                     |
| DefaultValue    | NO                                                     |
| Name            | GCC_TREAT_INCOMPATIBLE_POINTER_TYPE_WARNINGS_AS_ERRORS |
| Type            | Boolean                                                |
| References      |                                                        |

<div id="deva4a32754d" class="Subhead">

## Treat Warnings as Errors (GCC_TREAT_WARNINGS_AS_ERRORS)

Enabling this option causes all warnings to be treated as errors.

</div>


|                 |                                                                         |
|-----------------|-------------------------------------------------------------------------|
| Category        | WarningsPolicy                                                          |
| CommandLineArgs |                                                                         |
| `NO`            |                                                                         |
| `YES`           | -Werror                                                                 |
| DefaultValue    | NO                                                                      |
| Name            | GCC_TREAT_WARNINGS_AS_ERRORS                                            |
| Type            | Boolean                                                                 |
| References      | [GCC_TREAT_IMPLICIT_FUNCTION_DECLARATIONS_AS_ERRORS](#dev70810b123)     |
|                 | [GCC_TREAT_INCOMPATIBLE_POINTER_TYPE_WARNINGS_AS_ERRORS](#devb7687aeb6) |

<div id="dev03165418c" class="Subhead">

## Unroll Loops (GCC_UNROLL_LOOPS)

Unrolls loops. Unrolling makes the code larger, but may make it faster by reducing the number of branches executed.

</div>


|                 |                  |
|-----------------|------------------|
| Category        | CodeGeneration   |
| CommandLineArgs |                  |
| `NO`            |                  |
| `YES`           | -funroll-loops   |
| DefaultValue    | NO               |
| Name            | GCC_UNROLL_LOOPS |
| Type            | Boolean          |
| References      |                  |

<div id="dev07951d123" class="Subhead">

## Use Standard System Header Directory Searching (GCC_USE_STANDARD_INCLUDE_SEARCHING)

Controls whether the standard system directories are searched for header files. When disabled, only the directories you have specified with `-I` options (and the directory of the current file, if appropriate) are searched.

</div>


|                 |                                    |
|-----------------|------------------------------------|
| Category        | Language                           |
| CommandLineArgs |                                    |
| `NO`            | -nostdinc                          |
| `YES`           |                                    |
| DefaultValue    | YES                                |
| Name            | GCC_USE_STANDARD_INCLUDE_SEARCHING |
| Type            | Boolean                            |
| References      |                                    |

<div id="dev1fad541c9" class="Subhead">

## Compiler for C/C++/Objective-C (GCC_VERSION)

The compiler to use for C, C++, and Objective-C.

</div>


|                  |                                                   |
|------------------|---------------------------------------------------|
| Category         | BuildOptions                                      |
| ConditionFlavors | arch                                              |
|                  | sdk                                               |
| DefaultValue     |                                                   |
| Name             | GCC_VERSION                                       |
| Type             | CompilerVersion                                   |
| References       | [GCC_VERSION_IDENTIFIER](#GCC_VERSION_IDENTIFIER) |

<div id="deveed28d600" class="Subhead">

## Implicit Conversion to 32 Bit Type (GCC_WARN_64_TO_32_BIT_CONVERSION)

Warn if a value is implicitly converted from a 64-bit type to a 32-bit type. This is a subset of the warnings provided by -Wconversion.

</div>


|                 |                                    |
|-----------------|------------------------------------|
| AppearsAfter    | GCC_WARN_SIGN_COMPARE              |
| Category        | Warnings                           |
| CommandLineArgs |                                    |
| `NO`            | -Wno-shorten-64-to-32              |
| `YES`           | -Wshorten-64-to-32                 |
| `YES_ERROR`     | -Werror=shorten-64-to-32           |
| CommonOption    | NO                                 |
| DefaultValue    | NO                                 |
| DisplayName     | Implicit Conversion to 32 Bit Type |
| Name            | GCC_WARN_64_TO_32_BIT_CONVERSION   |
| Type            | Enumeration                        |
| Values          | YES                                |
|                 | YES_ERROR                          |
|                 | NO                                 |
| References      |                                    |

<div id="dev459d7247f" class="Subhead">

## Deprecated Functions (GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS)

Warn about the use of deprecated functions, variables, and types (as indicated by the `deprecated` attribute).

</div>


|                 |                                     |
|-----------------|-------------------------------------|
| Category        | Warnings                            |
| CommandLineArgs |                                     |
| `NO`            | -Wno-deprecated-declarations        |
| `YES`           | -Wdeprecated-declarations           |
| DefaultValue    | YES                                 |
| Name            | GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS |
| Type            | Boolean                             |
| References      |                                     |

<div id="dev9d1df0542" class="Subhead">

## Undefined Use of offsetof Macro (GCC_WARN_ABOUT_INVALID_OFFSETOF_MACRO)

Unchecking this setting will suppress warnings from applying the `offsetof` macro to a non-POD type. According to the 1998 ISO C++ standard, applying `offsetof` to a non-POD type is undefined. In existing C++ implementations, however, `offsetof` typically gives meaningful results even when applied to certain kinds of non-POD types, such as a simple struct that fails to be a POD type only by virtue of having a constructor. This flag is for users who are aware that they are writing nonportable code and who have deliberately chosen to ignore the warning about it.

The restrictions on `offsetof` may be relaxed in a future version of the C++ standard.

</div>


|                 |                                       |
|-----------------|---------------------------------------|
| Category        | WarningsCXX                           |
| CommandLineArgs |                                       |
| `NO`            | -Wno-invalid-offsetof                 |
| `YES`           | -Winvalid-offsetof                    |
| DefaultValue    | YES                                   |
| FileTypes       | sourcecode.cpp.cpp                    |
|                 | sourcecode.cpp.objcpp                 |
| Name            | GCC_WARN_ABOUT_INVALID_OFFSETOF_MACRO |
| Type            | Boolean                               |
| References      |                                       |

<div id="devf22e44547" class="Subhead">

## Missing Fields in Structure Initializers (GCC_WARN_ABOUT_MISSING_FIELD_INITIALIZERS)

Warn if a structure's initializer has some fields missing. For example, the following code would cause such a warning because `x.h` is implicitly zero:


|                 |                                           |
|-----------------|-------------------------------------------|
| Category        | Warnings                                  |
| CommandLineArgs |                                           |
| `NO`            | -Wno-missing-field-initializers           |
| `YES`           | -Wmissing-field-initializers              |
| DefaultValue    | NO                                        |
| Name            | GCC_WARN_ABOUT_MISSING_FIELD_INITIALIZERS |
| Type            | Boolean                                   |
| References      |                                           |

<div class="Example">

<div class="CodeLines">

```cpp
struct s { int f, g, h; };
struct s x = { 3, 4 };
```

</div>

</div>

This option does not warn about designated initializers, so the following modification would not trigger a warning:

<div class="Example">

<div class="CodeLines">

```cpp
struct s { int f, g, h; };
struct s x = { .f = 3, .g = 4 };
```

</div>

</div>

</div>

<div id="dev9e424feac" class="Subhead">

## Missing Newline At End Of File (GCC_WARN_ABOUT_MISSING_NEWLINE)

Warn when a source file does not end with a newline.

</div>


|                 |                                                      |
|-----------------|------------------------------------------------------|
| AppearsAfter    | GCC_WARN_ABOUT_POINTER_SIGNEDNESS                    |
| Category        | Warnings                                             |
| CommandLineArgs |                                                      |
| `NO`            | -Wno-newline-eof                                     |
| `YES`           | -Wnewline-eof                                        |
| CommonOption    | NO                                                   |
| DefaultValue    | NO                                                   |
| Description     | Warn when a source file does not end with a newline. |
| DisplayName     | Missing Newline At End Of File                       |
| Name            | GCC_WARN_ABOUT_MISSING_NEWLINE                       |
| Type            | Boolean                                              |
| References      |                                                      |

<div id="dev3d461e0f5" class="Subhead">

## Missing Function Prototypes (GCC_WARN_ABOUT_MISSING_PROTOTYPES)

Causes warnings to be emitted about missing prototypes.

</div>


|                 |                                   |
|-----------------|-----------------------------------|
| Category        | Warnings                          |
| CommandLineArgs |                                   |
| `NO`            | -Wno-missing-prototypes           |
| `YES`           | -Wmissing-prototypes              |
| DefaultValue    | NO                                |
| Name            | GCC_WARN_ABOUT_MISSING_PROTOTYPES |
| Type            | Boolean                           |
| References      |                                   |

<div id="dev90927d824" class="Subhead">

## Pointer Sign Comparison (GCC_WARN_ABOUT_POINTER_SIGNEDNESS)

Warn when pointers passed via arguments or assigned to a variable differ in sign.

</div>


|                 |                                                                                   |
|-----------------|-----------------------------------------------------------------------------------|
| AppearsAfter    | GCC_WARN_SIGN_COMPARE                                                             |
| Category        | Warnings                                                                          |
| CommandLineArgs |                                                                                   |
| `NO`            | -Wno-pointer-sign                                                                 |
| `YES`           | -Wpointer-sign                                                                    |
| CommonOption    | YES                                                                               |
| DefaultValue    | YES                                                                               |
| Description     | Warn when pointers passed via arguments or assigned to a variable differ in sign. |
| DisplayName     | Pointer Sign Comparison                                                           |
| FileTypes       | sourcecode.c.c                                                                    |
|                 | sourcecode.c.objc                                                                 |
| Name            | GCC_WARN_ABOUT_POINTER_SIGNEDNESS                                                 |
| Type            | Boolean                                                                           |
| References      | [GCC_WARN_ABOUT_MISSING_NEWLINE](#dev9e424feac)                                   |

<div id="deved0e7fffc" class="Subhead">

## Mismatched Return Type (GCC_WARN_ABOUT_RETURN_TYPE)

Causes warnings to be emitted when a function with a defined return type (not `void`) contains a return statement without a return-value. Also emits a warning when a function is defined without specifying a return type.

</div>


|                 |                            |
|-----------------|----------------------------|
| Category        | Warnings                   |
| CommandLineArgs |                            |
| `NO`            | -Wno-return-type           |
| `YES`           |                            |
| `YES_ERROR`     | -Werror=return-type        |
| DefaultValue    | NO                         |
| Name            | GCC_WARN_ABOUT_RETURN_TYPE |
| Type            | Enumeration                |
| Values          | YES                        |
|                 | NO                         |
|                 | YES_ERROR                  |
| References      |                            |

<div id="dev089a278f1" class="Subhead">

## Incomplete Objective-C Protocols (GCC_WARN_ALLOW_INCOMPLETE_PROTOCOL)

Warn if methods required by a protocol are not implemented in the class adopting it. Only applies to Objective-C.

</div>


|                 |                                    |
|-----------------|------------------------------------|
| Category        | WarningsObjC                       |
| CommandLineArgs |                                    |
| `NO`            | -Wno-protocol                      |
| `YES`           | -Wprotocol                         |
| DefaultValue    | YES                                |
| FileTypes       | sourcecode.c.objc                  |
|                 | sourcecode.cpp.objcpp              |
| Name            | GCC_WARN_ALLOW_INCOMPLETE_PROTOCOL |
| Type            | Boolean                            |
| References      |                                    |

<div id="dev5ee988319" class="Subhead">

## Check Switch Statements (GCC_WARN_CHECK_SWITCH_STATEMENTS)

Warn whenever a switch statement has an index of enumeral type and lacks a case for one or more of the named codes of that enumeration. The presence of a default label prevents this warning. Case labels outside the enumeration range also provoke warnings when this option is used.

</div>


|                 |                                  |
|-----------------|----------------------------------|
| Category        | Warnings                         |
| CommandLineArgs |                                  |
| `NO`            | -Wno-switch                      |
| `YES`           | -Wswitch                         |
| DefaultValue    | YES                              |
| Name            | GCC_WARN_CHECK_SWITCH_STATEMENTS |
| Type            | Boolean                          |
| References      |                                  |

<div id="dev738a8189f" class="Subhead">

## Four Character Literals (GCC_WARN_FOUR_CHARACTER_CONSTANTS)

Warn about four-char literals (for example, macOS-style `OSTypes`: `'APPL'`).

</div>


|                 |                                   |
|-----------------|-----------------------------------|
| Category        | Warnings                          |
| CommandLineArgs |                                   |
| `NO`            | -Wno-four-char-constants          |
| `YES`           | -Wfour-char-constants             |
| DefaultValue    | NO                                |
| Name            | GCC_WARN_FOUR_CHARACTER_CONSTANTS |
| Type            | Boolean                           |
| References      |                                   |

<div id="dev2f3b1a48b" class="Subhead">

## Overloaded Virtual Functions (GCC_WARN_HIDDEN_VIRTUAL_FUNCTIONS)

Warn when a function declaration hides virtual functions from a base class.

For example, in the following example, the `A` class version of `f()` is hidden in `B`.


|                 |                                   |
|-----------------|-----------------------------------|
| Category        | WarningsCXX                       |
| CommandLineArgs |                                   |
| `NO`            | -Wno-overloaded-virtual           |
| `YES`           | -Woverloaded-virtual              |
| DefaultValue    | NO                                |
| FileTypes       | sourcecode.cpp.cpp                |
|                 | sourcecode.cpp.objcpp             |
| Name            | GCC_WARN_HIDDEN_VIRTUAL_FUNCTIONS |
| Type            | Boolean                           |
| References      |                                   |

<div class="Example">

<div class="CodeLines">

```cpp
struct A {
   virtual void f(); 
};
struct B: public A {
   void f(int); 
};
```

</div>

</div>

As a result, the following code will fail to compile.

<div class="Example">

<div class="CodeLines">

```cpp
B* b;
b-&gt;f();
```

</div>

</div>

This setting only applies to C++ and Objective-C++ sources.

</div>

<div id="dev7a1e3e912" class="Subhead">

## Inhibit All Warnings (GCC_WARN_INHIBIT_ALL_WARNINGS)

Inhibit all warning messages.

</div>


|                 |                               |
|-----------------|-------------------------------|
| Category        | WarningsPolicy                |
| CommandLineArgs |                               |
| `NO`            |                               |
| `YES`           | -w                            |
| DefaultValue    | NO                            |
| Name            | GCC_WARN_INHIBIT_ALL_WARNINGS |
| Type            | Boolean                       |
| References      |                               |

<div id="devbc8ce22b4" class="Subhead">

## Initializer Not Fully Bracketed (GCC_WARN_INITIALIZER_NOT_FULLY_BRACKETED)

Warn if an aggregate or union initializer is not fully bracketed. In the following example, the initializer for `a` is not fully bracketed, but the initializer for `b` is fully bracketed.


|                 |                                          |
|-----------------|------------------------------------------|
| Category        | Warnings                                 |
| CommandLineArgs |                                          |
| `NO`            | -Wno-missing-braces                      |
| `YES`           | -Wmissing-braces                         |
| DefaultValue    | NO                                       |
| Name            | GCC_WARN_INITIALIZER_NOT_FULLY_BRACKETED |
| Type            | Boolean                                  |
| References      |                                          |

<div class="Example">

<div class="CodeLines">


```cpp
int a[2][2] = { 0, 1, 2, 3 };

```


```cpp
int b[2][2] = { { 0, 1 }, { 2, 3 } };

```

</div>

</div>

</div>

<div id="dev817b7acd2" class="Subhead">

## Missing Braces and Parentheses (GCC_WARN_MISSING_PARENTHESES)

Warn if parentheses are omitted in certain contexts, such as when there is an assignment in a context where a truth value is expected, or when operators are nested whose precedence causes confusion. Also, warn about constructions where there may be confusion as to which `if` statement an `else` branch belongs. For example:


|                 |                              |
|-----------------|------------------------------|
| Category        | Warnings                     |
| CommandLineArgs |                              |
| `NO`            | -Wno-parentheses             |
| `YES`           | -Wparentheses                |
| DefaultValue    | YES                          |
| Name            | GCC_WARN_MISSING_PARENTHESES |
| Type            | Boolean                      |
| References      |                              |

<div class="Example">

<div class="CodeLines">

```cpp
{
   if (a) 
     if (b) 
       foo (); 
   else 
     bar (); 
}
```

</div>

</div>

In C, every `else` branch belongs to the innermost possible `if` statement, which in the example above is `if (b)`. This is often not what the programmer expects, as illustrated by indentation used in the example above. This build setting causes GCC to issue a warning when there is the potential for this confusion. To eliminate the warning, add explicit braces around the innermost `if` statement so there is no way the `else` could belong to the enclosing `if`. For example:

<div class="Example">

<div class="CodeLines">

```cpp
{
   if (a) 
     { 
       if (b) 
         foo (); 
       else 
         bar (); 
     } 
}
```

</div>

</div>

</div>

<div id="devd590ac5a1" class="Subhead">

## Nonvirtual Destructor (GCC_WARN_NON_VIRTUAL_DESTRUCTOR)

Warn when a class declares an nonvirtual destructor that should probably be virtual, because it looks like the class will be used polymorphically. This is only active for C++ or Objective-C++ sources.

</div>


|                 |                                 |
|-----------------|---------------------------------|
| Category        | WarningsCXX                     |
| CommandLineArgs |                                 |
| `NO`            | -Wno-non-virtual-dtor           |
| `YES`           | -Wnon-virtual-dtor              |
| DefaultValue    | NO                              |
| FileTypes       | sourcecode.cpp.cpp              |
|                 | sourcecode.cpp.objcpp           |
| Name            | GCC_WARN_NON_VIRTUAL_DESTRUCTOR |
| Type            | Boolean                         |
| References      |                                 |

<div id="dev4f1d8b027" class="Subhead">

## Pedantic Warnings (GCC_WARN_PEDANTIC)

Issue all the warnings demanded by strict ISO C and ISO C++; reject all programs that use forbidden extensions, and some other programs that do not follow ISO C and ISO C++. For ISO C, follows the version of the ISO C standard specified by any `-std` option used.

</div>


|                 |                   |
|-----------------|-------------------|
| Category        | WarningsPolicy    |
| CommandLineArgs |                   |
| `NO`            |                   |
| `YES`           | -pedantic         |
| DefaultValue    | NO                |
| Name            | GCC_WARN_PEDANTIC |
| Type            | Boolean           |
| References      |                   |

<div id="devf77078427" class="Subhead">

## Hidden Local Variables (GCC_WARN_SHADOW)

Warn whenever a local variable shadows another local variable, parameter or global variable or whenever a builtin function is shadowed.

</div>


|                 |                 |
|-----------------|-----------------|
| Category        | Warnings        |
| CommandLineArgs |                 |
| `NO`            | -Wno-shadow     |
| `YES`           | -Wshadow        |
| DefaultValue    | NO              |
| Name            | GCC_WARN_SHADOW |
| Type            | Boolean         |
| References      |                 |

<div id="devd72ec5001" class="Subhead">

## Sign Comparison (GCC_WARN_SIGN_COMPARE)

Warn when a comparison between signed and unsigned values could produce an incorrect result when the signed value is converted to unsigned.

</div>


|                 |                                                    |
|-----------------|----------------------------------------------------|
| Category        | Warnings                                           |
| CommandLineArgs |                                                    |
| `NO`            |                                                    |
| `YES`           | -Wsign-compare                                     |
| DefaultValue    | NO                                                 |
| Name            | GCC_WARN_SIGN_COMPARE                              |
| Type            | Boolean                                            |
| References      | [GCC_WARN_64_TO_32_BIT_CONVERSION](#deveed28d600)  |
|                 | [GCC_WARN_ABOUT_POINTER_SIGNEDNESS](#dev90927d824) |

<div id="dev424cdb777" class="Subhead">

## Strict Selector Matching (GCC_WARN_STRICT_SELECTOR_MATCH)

Warn if multiple methods with differing argument and/or return types are found for a given selector when attempting to send a message using this selector to a receiver of type `id` or `Class`. When this setting is disabled, the compiler will omit such warnings if any differences found are confined to types that share the same size and alignment.

</div>


|                 |                                |
|-----------------|--------------------------------|
| Category        | WarningsObjC                   |
| CommandLineArgs |                                |
| `NO`            | -Wno-strict-selector-match     |
| `YES`           | -Wstrict-selector-match        |
| DefaultValue    | NO                             |
| FileTypes       | sourcecode.c.objc              |
|                 | sourcecode.cpp.objcpp          |
| Name            | GCC_WARN_STRICT_SELECTOR_MATCH |
| Type            | Boolean                        |
| References      |                                |

<div id="dev1ff8cc105" class="Subhead">

## Typecheck Calls to printf/scanf (GCC_WARN_TYPECHECK_CALLS_TO_PRINTF)

Check calls to `printf` and `scanf` to make sure that the arguments supplied have types appropriate to the format string specified, and that the conversions specified in the format string make sense.

</div>


|                 |                                    |
|-----------------|------------------------------------|
| Category        | Warnings                           |
| CommandLineArgs |                                    |
| `NO`            | -Wno-format                        |
| `YES`           |                                    |
| DefaultValue    | YES                                |
| Name            | GCC_WARN_TYPECHECK_CALLS_TO_PRINTF |
| Type            | Boolean                            |
| References      |                                    |

<div id="dev202fc74cd" class="Subhead">

## Undeclared Selector (GCC_WARN_UNDECLARED_SELECTOR)

Warn if a `@selector(...)` expression referring to an undeclared selector is found. A selector is considered undeclared if no method with that name has been declared before the `@selector(...)` expression, either explicitly in an `@interface` or `@protocol` declaration, or implicitly in an `@implementation` section. This option always performs its checks as soon as a `@selector(...)` expression is found, while `-Wselector` only performs its checks in the final stage of compilation. This also enforces the coding style convention that methods and selectors must be declared before being used.

</div>


|                 |                              |
|-----------------|------------------------------|
| Category        | WarningsObjC                 |
| CommandLineArgs |                              |
| `NO`            | -Wno-undeclared-selector     |
| `YES`           | -Wundeclared-selector        |
| DefaultValue    | NO                           |
| FileTypes       | sourcecode.c.objc            |
|                 | sourcecode.cpp.objcpp        |
| Name            | GCC_WARN_UNDECLARED_SELECTOR |
| Type            | Boolean                      |
| References      |                              |

<div id="dev7b70e07c9" class="Subhead">

## Uninitialized Variables (GCC_WARN_UNINITIALIZED_AUTOS)

Warn if a variable might be clobbered by a `setjmp` call or if an automatic variable is used without prior initialization.

The compiler may not detect all cases where an automatic variable is initialized or all usage patterns that may lead to use prior to initialization. You can toggle between the normal uninitialized value checking or the more aggressive (conservative) checking, which finds more issues but the checking is much stricter.

</div>


|                  |                              |
|------------------|------------------------------|
| Category         | Warnings                     |
| CommandLineArgs  |                              |
| `NO`             | -Wno-uninitialized           |
| `YES`            | -Wuninitialized              |
| `YES_AGGRESSIVE` | -Wuninitialized              |
|                  | -Wconditional-uninitialized  |
| DefaultValue     | NO                           |
| Name             | GCC_WARN_UNINITIALIZED_AUTOS |
| Type             | Enumeration                  |
| Values           | YES                          |
|                  | YES_AGGRESSIVE               |
|                  | NO                           |
| References       |                              |

<div id="devedc10376a" class="Subhead">

## Unknown Pragma (GCC_WARN_UNKNOWN_PRAGMAS)

Warn when a `#pragma` directive is encountered that is not understood by GCC. If this command line option is used, warnings will even be issued for unknown pragmas in system header files. This is not the case if the warnings were only enabled by the `-Wall` command-line option.

</div>


|                 |                          |
|-----------------|--------------------------|
| Category        | Warnings                 |
| CommandLineArgs |                          |
| `NO`            | -Wno-unknown-pragmas     |
| `YES`           | -Wunknown-pragmas        |
| DefaultValue    | NO                       |
| Name            | GCC_WARN_UNKNOWN_PRAGMAS |
| Type            | Boolean                  |
| References      |                          |

<div id="devc7766c536" class="Subhead">

## Unused Functions (GCC_WARN_UNUSED_FUNCTION)

Warn whenever a static function is declared but not defined or a noninline static function is unused.

</div>


|                 |                          |
|-----------------|--------------------------|
| Category        | Warnings                 |
| CommandLineArgs |                          |
| `NO`            | -Wno-unused-function     |
| `YES`           | -Wunused-function        |
| DefaultValue    | NO                       |
| Name            | GCC_WARN_UNUSED_FUNCTION |
| Type            | Boolean                  |
| References      |                          |

<div id="dev5dc46b82a" class="Subhead">

## Unused Labels (GCC_WARN_UNUSED_LABEL)

Warn whenever a label is declared but not used.

</div>


|                 |                                            |
|-----------------|--------------------------------------------|
| Category        | Warnings                                   |
| CommandLineArgs |                                            |
| `NO`            | -Wno-unused-label                          |
| `YES`           | -Wunused-label                             |
| DefaultValue    | NO                                         |
| Name            | GCC_WARN_UNUSED_LABEL                      |
| Type            | Boolean                                    |
| References      | [GCC_WARN_UNUSED_PARAMETER](#dev362f7320e) |

<div id="dev362f7320e" class="Subhead">

## Unused Parameters (GCC_WARN_UNUSED_PARAMETER)

Warn whenever a function parameter is unused aside from its declaration.

</div>


|                 |                                           |
|-----------------|-------------------------------------------|
| AppearsAfter    | GCC_WARN_UNUSED_LABEL                     |
| Category        | Warnings                                  |
| CommandLineArgs |                                           |
| `NO`            | -Wno-unused-parameter                     |
| `YES`           | -Wunused-parameter                        |
| DefaultValue    | NO                                        |
| Name            | GCC_WARN_UNUSED_PARAMETER                 |
| Type            | Boolean                                   |
| References      | [GCC_WARN_UNUSED_VARIABLE](#dev73464afa2) |

<div id="dev6f61a24f6" class="Subhead">

## Unused Values (GCC_WARN_UNUSED_VALUE)

Warn whenever a statement computes a result that is explicitly not used.

</div>


|                 |                          |
|-----------------|--------------------------|
| AppearsAfter    | GCC_WARN_UNUSED_VARIABLE |
| Category        | Warnings                 |
| CommandLineArgs |                          |
| `NO`            | -Wno-unused-value        |
| `YES`           | -Wunused-value           |
| DefaultValue    | YES                      |
| Name            | GCC_WARN_UNUSED_VALUE    |
| Type            | Boolean                  |
| References      |                          |

<div id="dev73464afa2" class="Subhead">

## Unused Variables (GCC_WARN_UNUSED_VARIABLE)

Warn whenever a local variable or nonconstant static variable is unused aside from its declaration.

</div>


|                 |                                        |
|-----------------|----------------------------------------|
| AppearsAfter    | GCC_WARN_UNUSED_PARAMETER              |
| Category        | Warnings                               |
| CommandLineArgs |                                        |
| `NO`            | -Wno-unused-variable                   |
| `YES`           | -Wunused-variable                      |
| DefaultValue    | NO                                     |
| Name            | GCC_WARN_UNUSED_VARIABLE               |
| Type            | Boolean                                |
| References      | [GCC_WARN_UNUSED_VALUE](#dev6f61a24f6) |

<div id="dev6dda25963" class="Subhead">

## Perform Single-Object Prelink (GENERATE_MASTER_OBJECT_FILE)

Activating this setting will cause the object files built by a target to be prelinked using `ld -r` into a single object file, and that object file will then be linked into the final product. This is useful to force the linker to resolve symbols and link the object files into a single module before building a static library. Also, a separate set of link flags can be applied to the prelink allowing additional control over, for instance, exported symbols.

</div>


|              |                             |
|--------------|-----------------------------|
| DefaultValue | NO                          |
| Name         | GENERATE_MASTER_OBJECT_FILE |
| Type         | Boolean                     |
| References   |                             |

<div id="dev633a5d244" class="Subhead">

## Force Package Info Generation (GENERATE_PKGINFO_FILE)

Forces the `PkgInfo` file to be written to wrapped products even if this file is not expected.

</div>


|              |                       |
|--------------|-----------------------|
| DefaultValue | NO                    |
| Name         | GENERATE_PKGINFO_FILE |
| Type         | Boolean               |
| References   |                       |

<div id="dev0d5823497" class="Subhead">

## Generate Profiling Code (GENERATE_PROFILING_CODE)

Activating this setting will cause the compiler and linker to generate profiling code. For example, GCC will generate code suitable for use with `gprof(1)`.

</div>


|              |                         |
|--------------|-------------------------|
| DefaultValue | NO                      |
| Name         | GENERATE_PROFILING_CODE |
| Type         | Boolean                 |
| References   |                         |

<div id="devc83e790c1" class="Subhead">

## Enable Text-Based Stubs Generation (GENERATE_TEXT_BASED_STUBS)

Enables the generation of Text-Based stubs for dynamic libraries and frameworks.

</div>


|                  |                                                                                  |
|------------------|----------------------------------------------------------------------------------|
| Category         | Text-Based API                                                                   |
| ConditionFlavors | arch                                                                             |
|                  | sdk                                                                              |
| DefaultValue     | NO                                                                               |
| Description      | Enables the generation of Text-Based stubs for dynamic libraries and frameworks. |
| DisplayName      | Enable Text-Based Stubs Generation                                               |
| Name             | GENERATE_TEXT_BASED_STUBS                                                        |
| Type             | Boolean                                                                          |
| References       |                                                                                  |

<div id="devdb5f613f1" class="Subhead">

## HEADERMAP_INCLUDES_FLAT_ENTRIES_FOR_TARGET_BEING_BUILT

Specifies whether the header map contains a name/path entry for every header in the target being built.

</div>


|              |                                                                                                         |
|--------------|---------------------------------------------------------------------------------------------------------|
| DefaultValue | YES                                                                                                     |
| Description  | Specifies whether the header map contains a name/path entry for every header in the target being built. |
| Name         | HEADERMAP_INCLUDES_FLAT_ENTRIES_FOR_TARGET_BEING_BUILT                                                  |
| Type         | Boolean                                                                                                 |
| References   |                                                                                                         |

<div id="deva49316ab8" class="Subhead">

## HEADERMAP_INCLUDES_FRAMEWORK_ENTRIES_FOR_ALL_PRODUCT_TYPES

Specifies whether the header map contains a framework-name/path entry for every header in the target being built, including targets that do not build frameworks.

</div>


|              |                                                                                                                                                                   |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | YES                                                                                                                                                               |
| Description  | Specifies whether the header map contains a framework-name/path entry for every header in the target being built, including targets that do not build frameworks. |
| Name         | HEADERMAP_INCLUDES_FRAMEWORK_ENTRIES_FOR_ALL_PRODUCT_TYPES                                                                                                        |
| Type         | Boolean                                                                                                                                                           |
| References   |                                                                                                                                                                   |

<div id="devb66740539" class="Subhead">

## HEADERMAP_INCLUDES_PROJECT_HEADERS

Specifies whether the header map contains a name/path entry for every header in the project, regardless of the headers’ target membership.

</div>


|              |                                                                                                                                            |
|--------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | YES                                                                                                                                        |
| Description  | Specifies whether the header map contains a name/path entry for every header in the project, regardless of the headers’ target membership. |
| Name         | HEADERMAP_INCLUDES_PROJECT_HEADERS                                                                                                         |
| Type         | Boolean                                                                                                                                    |
| References   | [HEADERMAP_INCLUDES_NONPUBLIC_NONPRIVATE_HEADERS](#HEADERMAP_INCLUDES_NONPUBLIC_NONPRIVATE_HEADERS)                                        |

<div id="dev3c9f85d97" class="Subhead">

## Header Search Paths (HEADER_SEARCH_PATHS)

This is a list of paths to folders to be searched by the compiler for included or imported header files when compiling C, Objective-C, C++, or Objective-C++. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted.

</div>


|                  |                                                                           |
|------------------|---------------------------------------------------------------------------|
| ConditionFlavors | arch                                                                      |
| DefaultValue     |                                                                           |
| Name             | HEADER_SEARCH_PATHS                                                       |
| Type             | PathList                                                                  |
| References       | [ENABLE_DEFAULT_HEADER_SEARCH_PATHS](#ENABLE_DEFAULT_HEADER_SEARCH_PATHS) |
|                  | [MTL_HEADER_SEARCH_PATHS](#dev4b50e718e)                                  |
|                  | [SYSTEM_HEADER_SEARCH_PATHS](#devd69bd5ce8)                               |
|                  | [USER_HEADER_SEARCH_PATHS](#deved642222b)                                 |

<div id="dev2a89b71ff" class="Subhead">

## Auto-Activate Custom Fonts (IBC_COMPILER_AUTO_ACTIVATE_CUSTOM_FONTS)

Instructs the XIB compiler to add custom fonts to the application's `Info.plist`, which will cause the fonts to activate upon application launch.

</div>




<div id="dev3f2ddf861" class="Subhead">

## Show Errors (IBC_ERRORS)

Show errors encountered during the compilation of XIB files.

</div>




<div id="dev4be3ce13f" class="Subhead">

## Flatten Compiled XIB Files (IBC_FLATTEN_NIBS)

If enabled, compile XIB files into flattened (non-wrapper) NIB files. After flattening, the resulting NIB is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting NIB file remains editable in Interface Builder.

</div>




<div id="dev57b533b63" class="Subhead">

## Default Module (IBC_MODULE)

Defines the module name for Swift classes referenced without a specific module name.

</div>




<div id="devd3f9d7f4c" class="Subhead">

## Show Notices (IBC_NOTICES)

Show notices encountered during the compilation of XIB files.

</div>




<div id="dev7d9b62e35" class="Subhead">

## Other Interface Builder Compiler Flags (IBC_OTHER_FLAGS)

A list of additional flags to pass to the Interface Builder Compiler. Use this setting if Xcode does not already provide UI for a particular Interface Builder Compiler flag.

</div>




<div id="dev9998c7a6f" class="Subhead">

## Overriding Plug-In and Framework Directory (IBC_OVERRIDING_PLUGINS_AND_FRAMEWORKS_DIR)

Instructs Interface Builder to load frameworks and Interface Builder plugins from the specified directory. Setting this value to `$(BUILD_DIR)/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)` will ensure that Interface Builder will load frameworks and plug-ins from the built products directory of the current build configuration.

</div>




<div id="dev48407df02" class="Subhead">

## Plug-Ins (IBC_PLUGINS)

A list of paths to Interface Builder plugins to load when compiling XIB files.

</div>




<div id="dev221f3aa09" class="Subhead">

## Plug-In Search Paths (IBC_PLUGIN_SEARCH_PATHS)

A list of paths to be searched for Interface Builder plug-ins to load when compiling XIB files.

</div>




<div id="dev73c09c45d" class="Subhead">

## Strip NIB Files (IBC_STRIP_NIBS)

Strips an Interface Builder NIB to reduce its size for deployment. The resulting NIB is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting NIB file remains editable by Interface Builder.

</div>




<div id="dev515943891" class="Subhead">

## Show Warnings (IBC_WARNINGS)

Show warnings encountered during the compilation of XIB files.

</div>




<div id="dev741e86faf" class="Subhead">

## Auto-Activate Custom Fonts (IBSC_COMPILER_AUTO_ACTIVATE_CUSTOM_FONTS)

Instructs the Storyboard compiler to add custom fonts to the application's `Info.plist` that will cause the fonts to activate upon application launch.

</div>




<div id="devd44e43c47" class="Subhead">

## Show Errors (IBSC_ERRORS)

Show errors encountered during the compilation of Storyboard files.

</div>




<div id="dev744d413ed" class="Subhead">

## Flatten Compiled Storyboard Files (IBSC_FLATTEN_NIBS)

Compiles a Storyboard file into flattened (non-wrapper) Storyboard file. After flattening, the resulting Storyboard is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting Storyboard file remains editable in Interface Builder.

</div>




<div id="deve37ca94bd" class="Subhead">

## Default Module (IBSC_MODULE)

Defines the module name for Swift classes referenced without a specific module name.

</div>




<div id="deva83f1aeab" class="Subhead">

## Show Notices (IBSC_NOTICES)

Show notices encountered during the compilation of Storyboard files.

</div>




<div id="devcbbb8488d" class="Subhead">

## Other Storyboard Compiler Flags (IBSC_OTHER_FLAGS)

A list of additional flags to pass to the Interface Builder Compiler. Use this setting if Xcode does not already provide UI for a particular Interface Builder Compiler flag.

</div>




<div id="devd19f5cdd4" class="Subhead">

## Strip Storyboardc Files (IBSC_STRIP_NIBS)

Strips an editable Interface Builder storyboardc file to reduce its size for deployment. The resulting storyboardc is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting storyboardc file remains editable by Interface Builder.

</div>




<div id="dev7e6895e8c" class="Subhead">

## Show Warnings (IBSC_WARNINGS)

Show warnings encountered during the compilation of Storyboard files.

</div>




<div id="devd335e28f6" class="Subhead">

## Sub-Directories to Include in Recursive Searches (INCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES)

This is a list of `fnmatch()`-style patterns of file or directory names to include when performing a recursive search. By default, this is empty and is only customized when you want to provide exceptions to the list of filename patterns provided in [Sub-Directories to Exclude in Recursive Searches (EXCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES)](#dev454fb3164).

</div>


|              |                                               |
|--------------|-----------------------------------------------|
| DefaultValue |                                               |
| Name         | INCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES |
| Type         | StringList                                    |
| References   |                                               |

<div id="dev278eb3050" class="Subhead">

## Included Source File Names (INCLUDED_SOURCE_FILE_NAMES)

A list of patterns (as defined by `fnmatch(3)`) specifying the names of source files to explicitly *include* when processing the sources build phase. This setting is only useful when combined with [Excluded Source File Names (EXCLUDED_SOURCE_FILE_NAMES)](#devd20926192), and can be used to define complex filters for which files from the phase should be built in response to other build settings.

</div>


|              |                                             |
|--------------|---------------------------------------------|
| DefaultValue |                                             |
| Name         | INCLUDED_SOURCE_FILE_NAMES                  |
| Type         | StringList                                  |
| References   | [EXCLUDED_SOURCE_FILE_NAMES](#devd20926192) |

<div id="dev24cd41231" class="Subhead">

## Expand Build Settings in Info.plist File (INFOPLIST_EXPAND_BUILD_SETTINGS)

Expand build settings in the `Info.plist` file.

</div>


|              |                                 |
|--------------|---------------------------------|
| DefaultValue | YES                             |
| Name         | INFOPLIST_EXPAND_BUILD_SETTINGS |
| Type         | Boolean                         |
| References   |                                 |

<div id="dev131d2e1c2" class="Subhead">

## Info.plist File (INFOPLIST_FILE)

The project-relative path to the property list file that contains the `Info.plist` information used by bundles. For details on information property list files, see [Information Property List Files](https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPRuntimeConfig/Articles/ConfigFiles.html#//apple_ref/doc/uid/20002091-CJBJIEDH) in [Runtime Configuration Guidelines](https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPRuntimeConfig/000-Introduction/introduction.html).

</div>


|              |                                                               |
|--------------|---------------------------------------------------------------|
| Basic        | YES                                                           |
| DefaultValue |                                                               |
| Name         | INFOPLIST_FILE                                                |
| Type         | String                                                        |
| References   | [DONT_GENERATE_INFOPLIST_FILE](#DONT_GENERATE_INFOPLIST_FILE) |

<div id="dev5fa1681c7" class="Subhead">

## Info.plist Other Preprocessor Flags (INFOPLIST_OTHER_PREPROCESSOR_FLAGS)

Other flags to pass to the C preprocessor when preprocessing the `Info.plist` file.

</div>


|              |                                    |
|--------------|------------------------------------|
| DefaultValue |                                    |
| Name         | INFOPLIST_OTHER_PREPROCESSOR_FLAGS |
| Type         | StringList                         |
| References   |                                    |

<div id="devda8860f5f" class="Subhead">

## Info.plist Output Encoding (INFOPLIST_OUTPUT_FORMAT)

Specifies the output encoding for the output `Info.plist`. The output encodings can be `binary` or `XML`. By default, the output encoding will be unchanged from the input.

</div>


|              |                         |
|--------------|-------------------------|
| DefaultValue | same-as-input           |
| Name         | INFOPLIST_OUTPUT_FORMAT |
| Type         | Enumeration             |
| Values       | same-as-input           |
|              | XML                     |
|              | binary                  |
| References   |                         |

<div id="devdc8ab1e40" class="Subhead">

## INFOPLIST_PATH

Specifies the path to the bundle’s information property list file.

</div>


|              |                                                                    |
|--------------|--------------------------------------------------------------------|
| DefaultValue |                                                                    |
| Description  | Specifies the path to the bundle’s information property list file. |
| Name         | INFOPLIST_PATH                                                     |
| Type         | Path                                                               |
| References   |                                                                    |

<div id="dev4560187ae" class="Subhead">

## Info.plist Preprocessor Prefix File (INFOPLIST_PREFIX_HEADER)

Implicitly include the given file when preprocessing the `Info.plist` file. The path given should either be a project relative path or an absolute path.

</div>


|              |                         |
|--------------|-------------------------|
| DefaultValue |                         |
| Name         | INFOPLIST_PREFIX_HEADER |
| Type         | String                  |
| References   |                         |

<div id="dev9923689d4" class="Subhead">

## Preprocess Info.plist File (INFOPLIST_PREPROCESS)

Preprocess the `Info.plist` file using the C Preprocessor.

</div>


|              |                                                     |
|--------------|-----------------------------------------------------|
| DefaultValue | NO                                                  |
| Name         | INFOPLIST_PREPROCESS                                |
| Type         | Boolean                                             |
| References   | [INFOPLIST_PREPROCESSOR_DEFINITIONS](#devc51d672cf) |

<div id="devc51d672cf" class="Subhead">

## Info.plist Preprocessor Definitions (INFOPLIST_PREPROCESSOR_DEFINITIONS)

Space-separated list of preprocessor macros of the form `foo` or `foo=bar`. These macros are used when preprocessing the `Info.plist` file.

</div>


|                 |                                    |
|-----------------|------------------------------------|
| CommandLineArgs | -D\$([value](#value))              |
| DefaultValue    |                                    |
| Name            | INFOPLIST_PREPROCESSOR_DEFINITIONS |
| Type            | StringList                         |
| References      |                                    |

<div id="dev8f6eae45b" class="Subhead">

## INFOSTRINGS_PATH

Specifies the file that contains the bundle’s localized strings file.

</div>


|              |                                                                       |
|--------------|-----------------------------------------------------------------------|
| DefaultValue |                                                                       |
| Description  | Specifies the file that contains the bundle’s localized strings file. |
| Name         | INFOSTRINGS_PATH                                                      |
| Type         | Path                                                                  |
| References   |                                                                       |

<div id="devdf90c3a3b" class="Subhead">

## Initialization Routine (INIT_ROUTINE)

This is the name of the routine to use for initialization.

</div>


|              |              |
|--------------|--------------|
| DefaultValue |              |
| Name         | INIT_ROUTINE |
| Type         | String       |
| References   |              |

<div id="dev29d4705f5" class="Subhead">

## Enable Text-Based Stubs Inlining (INLINE_PRIVATE_FRAMEWORKS)

Enables private framework inlining for Text-Based Stubs.

</div>


|                  |                                                          |
|------------------|----------------------------------------------------------|
| Category         | Text-Based API                                           |
| ConditionFlavors | arch                                                     |
|                  | sdk                                                      |
| DefaultValue     | NO                                                       |
| Description      | Enables private framework inlining for Text-Based Stubs. |
| DisplayName      | Enable Text-Based Stubs Inlining                         |
| Name             | INLINE_PRIVATE_FRAMEWORKS                                |
| Type             | Boolean                                                  |
| References       |                                                          |

<div id="dev7b20e06f7" class="Subhead">

## Perform Copy Files Phases During `installhdrs` (INSTALLHDRS_COPY_PHASE)

Specifies whether the target’s Copy Files build phases are executed in `installhdr` builds.

</div>


|              |                                                                                             |
|--------------|---------------------------------------------------------------------------------------------|
| DefaultValue | NO                                                                                          |
| Description  | Specifies whether the target’s Copy Files build phases are executed in `installhdr` builds. |
| DisplayName  | Perform Copy Files Phases During `installhdrs`                                              |
| Name         | INSTALLHDRS_COPY_PHASE                                                                      |
| Type         | Boolean                                                                                     |
| References   |                                                                                             |

<div id="devcb09bd8c4" class="Subhead">

## Perform Shell Script Phases During `installhdrs` (INSTALLHDRS_SCRIPT_PHASE)

Specifies whether the target’s Run Script build phases are executed in `installhdr` builds. See [Active Build Action (ACTION)](#dev9697f81df) for details on `installhdr` builds.

</div>


|              |                                                                                                                                              |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | NO                                                                                                                                           |
| Description  | Specifies whether the target’s Run Script build phases are executed in `installhdr` builds. See `ACTION` for details on `installhdr` builds. |
| DisplayName  | Perform Shell Script Phases During `installhdrs`                                                                                             |
| Name         | INSTALLHDRS_SCRIPT_PHASE                                                                                                                     |
| Type         | Boolean                                                                                                                                      |
| References   |                                                                                                                                              |

<div id="dev2bbf4b51d" class="Subhead">

## INSTALL_DIR

Identifies the directory in the developer’s filesystem into which the *installed* product is placed.

</div>


|              |                                                                                                      |
|--------------|------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([DSTROOT](#dev438d356c2))\$([INSTALL_PATH](#devabd541cd5))                                        |
| Description  | Identifies the directory in the developer’s filesystem into which the *installed* product is placed. |
| Name         | INSTALL_DIR                                                                                          |
| Type         | Path                                                                                                 |
| References   |                                                                                                      |

<div id="dev6fee29d96" class="Subhead">

## Install Group (INSTALL_GROUP)

The group name or `gid` for installed products.

</div>


|                  |                                  |
|------------------|----------------------------------|
| Category         | Deployment                       |
| ConditionFlavors | sdk                              |
| DefaultValue     | \$([GROUP](#GROUP))              |
| Name             | INSTALL_GROUP                    |
| Type             | String                           |
| References       | [ALTERNATE_GROUP](#devd0060df7a) |

<div id="dev926f80eee" class="Subhead">

## Install Permissions (INSTALL_MODE_FLAG)

Permissions used for installed product files.

</div>


|                  |                                 |
|------------------|---------------------------------|
| Category         | Deployment                      |
| ConditionFlavors | sdk                             |
| DefaultValue     | u+w,go-w,a+rX                   |
| Name             | INSTALL_MODE_FLAG               |
| Type             | String                          |
| References       | [ALTERNATE_MODE](#devc7defe509) |

<div id="dev13346c313" class="Subhead">

## Install Owner (INSTALL_OWNER)

The owner name or `uid` for installed products.

</div>


|                  |                                  |
|------------------|----------------------------------|
| Category         | Deployment                       |
| ConditionFlavors | sdk                              |
| DefaultValue     | \$([USER](#USER))                |
| Name             | INSTALL_OWNER                    |
| Type             | String                           |
| References       | [ALTERNATE_OWNER](#dev9898df4df) |

<div id="devabd541cd5" class="Subhead">

## Installation Directory (INSTALL_PATH)

The directory in which to install the build products. This path is prepended by the [Installation Build Products Location (DSTROOT)](#dev438d356c2).

</div>


|              |                                                         |
|--------------|---------------------------------------------------------|
| Basic        | YES                                                     |
| DefaultValue |                                                         |
| Name         | INSTALL_PATH                                            |
| Type         | String                                                  |
| References   | [DEFAULT_DEXT_INSTALL_PATH](#DEFAULT_DEXT_INSTALL_PATH) |
|              | [DEFAULT_KEXT_INSTALL_PATH](#DEFAULT_KEXT_INSTALL_PATH) |
|              | [INSTALL_DIR](#dev2bbf4b51d)                            |
|              | [LD_FINAL_OUTPUT_FILE](#LD_FINAL_OUTPUT_FILE)           |
|              | [LIBRARY_DEXT_INSTALL_PATH](#LIBRARY_DEXT_INSTALL_PATH) |
|              | [LIBRARY_KEXT_INSTALL_PATH](#LIBRARY_KEXT_INSTALL_PATH) |
|              | [SYSTEM_DEXT_INSTALL_PATH](#SYSTEM_DEXT_INSTALL_PATH)   |
|              | [SYSTEM_KEXT_INSTALL_PATH](#SYSTEM_KEXT_INSTALL_PATH)   |

<div id="devd7cee887d" class="Subhead">

## Intent Class Generation Language (INTENTS_CODEGEN_LANGUAGE)

The Source-code language to use for generated Intent class. By default "Automatic" will analyze your project to determine the correct language. Adjust this setting to explicitly select "Swift" or "Objective-C".

</div>


|              |                                                                                                                                                                                                                      |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | Code Generation                                                                                                                                                                                                      |
| DefaultValue | Automatic                                                                                                                                                                                                            |
| Description  | The Source-code language to use for generated Intent class.  By default "Automatic" will analyze your project to determine the correct language.  Adjust this setting to explicitly select "Swift" or "Objective-C". |
| DisplayName  | Intent Class Generation Language                                                                                                                                                                                     |
| Name         | INTENTS_CODEGEN_LANGUAGE                                                                                                                                                                                             |
| Type         | enum                                                                                                                                                                                                                 |
| Values       | Swift                                                                                                                                                                                                                |
|              | Objective-C                                                                                                                                                                                                          |
|              | Automatic                                                                                                                                                                                                            |
| References   |                                                                                                                                                                                                                      |

<div id="dev5b2832bba" class="Subhead">

## Preserve Private External Symbols (KEEP_PRIVATE_EXTERNS)

Activating this setting will preserve private external symbols, rather than turning them into static symbols. This setting is also respected when performing a single-object prelink.

</div>


|              |                      |
|--------------|----------------------|
| DefaultValue | NO                   |
| Name         | KEEP_PRIVATE_EXTERNS |
| Type         | Boolean              |
| References   |                      |

<div id="dev5b7e93389" class="Subhead">

## Path to Linker Dependency Info File (LD_DEPENDENCY_INFO_FILE)

This setting defines the path to which the linker should emit information about what files it used as inputs and generated. Xcode uses this information for its dependency tracking. Setting the value of this setting to empty will disable passing this option to the linker.

</div>


|              |                                                                                                                                                  |
|--------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$(OBJECT_FILE_DIR_\$([CURRENT_VARIANT](#dev659e12181)))/\$([CURRENT_ARCH](#dev23cfef338))/\$([PRODUCT_NAME](#dev5c40d1d06))_dependency_info.dat |
| Name         | LD_DEPENDENCY_INFO_FILE                                                                                                                          |
| Type         | Path                                                                                                                                             |
| References   |                                                                                                                                                  |

<div id="devbb966571b" class="Subhead">

## Dynamic Library Install Name (LD_DYLIB_INSTALL_NAME)

Sets an internal `install path` (`LC_ID_DYLIB`) in a dynamic library. Any clients linked against the library will record that path as the way `dyld` should locate this library. If this option is not specified, then the `-o` path will be used. This setting is ignored when building any product other than a dynamic library. See [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html).

</div>


|              |                       |
|--------------|-----------------------|
| DefaultValue |                       |
| Name         | LD_DYLIB_INSTALL_NAME |
| Type         | Path                  |
| References   |                       |

<div id="devc1145996b" class="Subhead">

## Write Link Map File (LD_GENERATE_MAP_FILE)

Activating this setting will cause the linker to write a map file to disk, which details all symbols and their addresses in the output image. The path to the map file is defined by the [Path to Link Map File (LD_MAP_FILE_PATH)](#dev0f5aa9fe1) setting.

</div>


|              |                      |
|--------------|----------------------|
| DefaultValue | NO                   |
| Name         | LD_GENERATE_MAP_FILE |
| Type         | Boolean              |
| References   |                      |

<div id="dev0f5aa9fe1" class="Subhead">

## Path to Link Map File (LD_MAP_FILE_PATH)

This setting defines the path to the map file written by the linker when the [Write Link Map File (LD_GENERATE_MAP_FILE)](#devc1145996b) setting is activated. By default, a separate file will be written for each architecture and build variant, and these will be generated in the Intermediates directory for the target whose product is being linked.

</div>


|              |                                                                                                                                                           |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([TARGET_TEMP_DIR](#dev4ad1824fb))/\$([PRODUCT_NAME](#dev5c40d1d06))-LinkMap-\$([CURRENT_VARIANT](#dev659e12181))-\$([CURRENT_ARCH](#dev23cfef338)).txt |
| Name         | LD_MAP_FILE_PATH                                                                                                                                          |
| Type         | Path                                                                                                                                                      |
| References   | [LD_GENERATE_MAP_FILE](#devc1145996b)                                                                                                                     |

<div id="dev36448687c" class="Subhead">

## Generate Position-Dependent Executable (LD_NO_PIE)

Activating this setting will prevent Xcode from building a main executable that is position independent (PIE). When targeting macOS 10.7 or later, PIE is the default for main executables, so activating this setting will change that behavior. When targeting OS X 10.6 or earlier, or when building for i386, PIE is not the default, so activating this setting does nothing.

You cannot create a PIE from `.o` files compiled with `-mdynamic-no-pic`. Using PIE means the codegen is less optimal, but the address randomization adds some security.

</div>


|                  |           |
|------------------|-----------|
| CommandLineArgs  |           |
| `NO`             |           |
| `YES`            | -Xlinker  |
|                  | -no_pie   |
| ConditionFlavors | arch      |
|                  | sdk       |
| DefaultValue     | NO        |
| Name             | LD_NO_PIE |
| Type             | Boolean   |
| References       |           |

<div id="devee7d8a07a" class="Subhead">

## Quote Linker Arguments (LD_QUOTE_LINKER_ARGUMENTS_FOR_COMPILER_DRIVER)

This setting controls whether arguments to the linker should be quoted using `-Xlinker`. By default, Xcode invokes the linker by invoking the driver of the compiler used to build the source files in the target, and passing `-Xlinker` to quote arguments will cause the compiler driver to pass them through to the linker (rather than trying to evaluate them within the driver). By default, this setting is enabled. Disabling it will cause Xcode to not use `-Xlinker` to pass arguments to the linker. Disabling this setting is useful if the target has instructed Xcode to use an alternate linker (for example, by setting the `LD` setting to the path to another linker) and that alternate linker does not recognize `-Xlinker`.

</div>


|              |                                               |
|--------------|-----------------------------------------------|
| DefaultValue | YES                                           |
| Name         | LD_QUOTE_LINKER_ARGUMENTS_FOR_COMPILER_DRIVER |
| Type         | Boolean                                       |
| References   |                                               |

<div id="devd6f61be24" class="Subhead">

## Runpath Search Paths (LD_RUNPATH_SEARCH_PATHS)

This is a list of paths to be added to the `runpath` search path list for the image being created. At runtime, `dyld` uses the `runpath` when searching for dylibs whose load path begins with `@rpath/`. See [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html).

</div>


|              |                         |
|--------------|-------------------------|
| DefaultValue |                         |
| Name         | LD_RUNPATH_SEARCH_PATHS |
| Type         | StringList              |
| References   |                         |

<div id="dev6b3b19e50" class="Subhead">

## Other Lex Flags (LEXFLAGS)

Space-separated list of additional flags to pass to `lex`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a `lex` flag.

</div>


|              |                |
|--------------|----------------|
| Category     | BuildOptions   |
| DefaultValue |                |
| FileTypes    | sourcecode.lex |
| Name         | LEXFLAGS       |
| Type         | StringList     |
| References   |                |

<div id="dev1018a3091" class="Subhead">

## Generate Case-Insensitive Scanner (LEX_CASE_INSENSITIVE_SCANNER)

Enabling this option causes `lex` to generate a case-insensitive scanner. The case of letters given in the `lex` input patterns will be ignored, and tokens in the input will be matched regardless of case. The matched text given in `yytext` will have the preserved case (for example, it will not be folded).

</div>


|                 |                              |
|-----------------|------------------------------|
| Category        | BuildOptions                 |
| CommandLineFlag | -i                           |
| DefaultValue    | NO                           |
| Name            | LEX_CASE_INSENSITIVE_SCANNER |
| Type            | Boolean                      |
| References      |                              |

<div id="dev992623a32" class="Subhead">

## Insert #line Directives (LEX_INSERT_LINE_DIRECTIVES)

Enabling this option instructs `lex` to insert `#line` directives so error messages in the actions will be correctly located with respect to either the original `lex` input file (if the errors are due to code in the input file), or `lex.yy.c` (if the errors are `lex`'s fault). This option is enabled by default; disabling it passes a flag to `lex` to not insert `#line` directives.

</div>


|                 |                            |
|-----------------|----------------------------|
| Category        | BuildOptions               |
| CommandLineArgs |                            |
| `NO`            | -L                         |
| DefaultValue    | YES                        |
| Name            | LEX_INSERT_LINE_DIRECTIVES |
| Type            | Boolean                    |
| References      |                            |

<div id="dev4fcf37408" class="Subhead">

## Suppress Default Rule (LEX_SUPPRESS_DEFAULT_RULE)

Enabling this option causes the default rule (that unmatched scanner input is echoed to `stdout`) to be suppressed. If the scanner encounters input that does not match any of its rules, it aborts with an error. This option is useful for finding holes in a scanner's rule set.

</div>


|                 |                           |
|-----------------|---------------------------|
| Category        | BuildOptions              |
| CommandLineFlag | -s                        |
| DefaultValue    | NO                        |
| Name            | LEX_SUPPRESS_DEFAULT_RULE |
| Type            | Boolean                   |
| References      |                           |

<div id="devbd6e04b71" class="Subhead">

## Suppress Warning Messages (LEX_SUPPRESS_WARNINGS)

Enabling this option causes `lex` to suppress its warning messages.

</div>


|                 |                       |
|-----------------|-----------------------|
| Category        | Warnings              |
| CommandLineFlag | -w                    |
| DefaultValue    | NO                    |
| Name            | LEX_SUPPRESS_WARNINGS |
| Type            | Boolean               |
| References      |                       |

<div id="dev353243827" class="Subhead">

## Library Search Paths (LIBRARY_SEARCH_PATHS)

This is a list of paths to folders to be searched by the linker for libraries used by the product. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted.

</div>


|                  |                                                                         |
|------------------|-------------------------------------------------------------------------|
| ConditionFlavors | arch                                                                    |
|                  | sdk                                                                     |
| DefaultValue     |                                                                         |
| Name             | LIBRARY_SEARCH_PATHS                                                    |
| Type             | PathList                                                                |
| References       | [PRODUCT_TYPE_LIBRARY_SEARCH_PATHS](#PRODUCT_TYPE_LIBRARY_SEARCH_PATHS) |

<div id="dev1f938e41a" class="Subhead">

## Display Mangled Names (LINKER_DISPLAYS_MANGLED_NAMES)

Activating this setting causes the linker to display mangled names for C++ symbols. Normally, this is not recommended, but turning it on can help to diagnose and solve C++ link errors.

</div>


|                 |                               |
|-----------------|-------------------------------|
| CommandLineArgs |                               |
| `NO`            |                               |
| `YES`           | -Xlinker                      |
|                 | --no-demangle                 |
| DefaultValue    | NO                            |
| Name            | LINKER_DISPLAYS_MANGLED_NAMES |
| Type            | Boolean                       |
| References      |                               |

<div id="dev824b21548" class="Subhead">

## Link With Standard Libraries (LINK_WITH_STANDARD_LIBRARIES)

When this setting is enabled, the compiler driver will automatically pass its standard libraries to the linker to use during linking. If desired, this flag can be used to disable linking with the standard libraries, and then individual libraries can be passed as [Other Linker Flags (OTHER_LDFLAGS)](#dev4fc8ef90a).

</div>


|              |                              |
|--------------|------------------------------|
| DefaultValue | YES                          |
| Name         | LINK_WITH_STANDARD_LIBRARIES |
| Type         | Boolean                      |
| References   |                              |

<div id="dev7356a7961" class="Subhead">

## Link-Time Optimization (LLVM_LTO)

Enabling this setting allows optimization across file boundaries during linking.

  - *No:* Disabled. Do not use link-time optimization.

  - *Monolithic Link-Time Optimization:* This mode performs monolithic link-time optimization of binaries, combining all executable code into a single unit and running aggressive compiler optimizations.

  - *Incremental Link-Time Optimization:* This mode performs partitioned link-time optimization of binaries, inlining between compilation units and running aggressive compiler optimizations on each unit in parallel. This enables fast incremental builds and uses less memory than Monolithic LTO.

</div>


|                      |                                       |
|----------------------|---------------------------------------|
| AdditionalLinkerArgs |                                       |
| `NO`                 |                                       |
| `YES_THIN`           | -flto=thin                            |
|                      | -Xlinker                              |
|                      | -cache_path_lto                       |
|                      | -Xlinker                              |
|                      | \$([OBJROOT](#devad6c72289))/LTOCache |
| Category             | CodeGeneration                        |
| CommandLineArgs      |                                       |
| `NO`                 |                                       |
| `YES`                | -flto                                 |
| `YES_THIN`           | -flto=thin                            |
| DefaultValue         | NO                                    |
| Name                 | LLVM_LTO                              |
| Type                 | Enumeration                           |
| Values               | YES                                   |
|                      | YES_THIN                              |
|                      | NO                                    |
| References           |                                       |

<div id="devfff38d675" class="Subhead">

## Localized String Macro Names (LOCALIZED_STRING_MACRO_NAMES)

The base names for NSLocalizedString-like macros or functions used to produce localized strings in source code. The default base names of NSLocalizedString and CFLocalizedString are always considered, even if this setting is empty.

</div>


|              |                                                                                                                                                                                                                                         |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | Localization                                                                                                                                                                                                                            |
| DefaultValue | NSLocalizedString CFLocalizedString                                                                                                                                                                                                     |
| Description  | The base names for NSLocalizedString-like macros or functions used to produce localized strings in source code. The default base names of NSLocalizedString and CFLocalizedString are always considered, even if this setting is empty. |
| DisplayName  | Localized String Macro Names                                                                                                                                                                                                            |
| Name         | LOCALIZED_STRING_MACRO_NAMES                                                                                                                                                                                                            |
| Type         | StringList                                                                                                                                                                                                                              |
| References   |                                                                                                                                                                                                                                         |

<div id="dev5eb2828db" class="Subhead">

## Mach-O Type (MACH_O_TYPE)

This setting determines the format of the produced binary and how it can be linked when building other binaries. For information on binary types, see [Building Mach-O Files](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/MachOTopics/1-Articles/building_files.html#//apple_ref/doc/uid/TP40001828-SW1) in [Mach-O Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/MachOTopics/0-Introduction/introduction.html).

  - *Executable:* Executables and standalone binaries and cannot be linked. `mh_execute`

  - *Dynamic Library:* Dynamic libraries are linked at build time and loaded automatically when needed. `mh_dylib`

  - *Bundle:* Bundle libraries are loaded explicitly at run time. `mh_bundle`

  - *Static Library:* Static libraries are linked at build time and loaded at execution time. `staticlib`

  - *Relocatable Object File:* Object files are single-module files that are linked at build time. `mh_object`

</div>


|              |                                                                   |
|--------------|-------------------------------------------------------------------|
| DefaultValue |                                                                   |
| Name         | MACH_O_TYPE                                                       |
| Type         | enum                                                              |
| Values       | mh_execute                                                        |
|              | mh_dylib                                                          |
|              | mh_bundle                                                         |
|              | staticlib                                                         |
|              | mh_object                                                         |
| References   | [ALL_OTHER_LDFLAGS](#ALL_OTHER_LDFLAGS)                           |
|              | [DEAD_CODE_STRIPPING](#dev9ed8cb7ad)                              |
|              | [LD_DYLIB_INSTALL_NAME](#devbb966571b)                            |
|              | [LD_GENERATE_BITCODE_SYMBOL_MAP](#LD_GENERATE_BITCODE_SYMBOL_MAP) |
|              | [OTHER_LDRFLAGS](#OTHER_LDRFLAGS)                                 |

<div id="devf32c560a2" class="Subhead">

## Suppress all mapc warnings (MAPC_NO_WARNINGS)

Compile `.xcmappingmodel` files into `.cdm` without reporting warnings.

</div>


|                 |                    |
|-----------------|--------------------|
| Category        | Warnings           |
| CommandLineFlag | --mapc-no-warnings |
| DefaultValue    | NO                 |
| Name            | MAPC_NO_WARNINGS   |
| Type            | Boolean            |
| References      |                    |

<div id="dev2c2d2848c" class="Subhead">

## Module Map File (MODULEMAP_FILE)

This is the project-relative path to the LLVM module map file that defines the module structure for the compiler. If empty, it will be automatically generated for appropriate products when [Defines Module (DEFINES_MODULE)](#dev82471c743) is enabled.

</div>


|                  |                |
|------------------|----------------|
| Category         | Packaging      |
| ConditionFlavors | sdk            |
| DefaultValue     |                |
| Name             | MODULEMAP_FILE |
| Type             | String         |
| References       |                |

<div id="dev23e6c4921" class="Subhead">

## Private Module Map File (MODULEMAP_PRIVATE_FILE)

This is the project-relative path to the LLVM module map file that defines the module structure for private headers.

</div>


|                  |                        |
|------------------|------------------------|
| Category         | Packaging              |
| ConditionFlavors | sdk                    |
| DefaultValue     |                        |
| Name             | MODULEMAP_PRIVATE_FILE |
| Type             | String                 |
| References       |                        |

<div id="dev433624abf" class="Subhead">

## MODULE_CACHE_DIR

Absolute path of folder in which compiler stores its cached modules—this cache is a performance improvement.

</div>


|              |                                                                                                              |
|--------------|--------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([DERIVED_DATA_DIR](#DERIVED_DATA_DIR))/ModuleCache.noindex                                                |
| Description  | Absolute path of folder in which compiler stores its cached modules—this cache is a performance improvement. |
| Name         | MODULE_CACHE_DIR                                                                                             |
| Type         | Path                                                                                                         |
| References   | [CLANG_MODULE_CACHE_PATH](#CLANG_MODULE_CACHE_PATH)                                                          |

<div id="dev6264f9e0c" class="Subhead">

## Module Identifier (MODULE_NAME)

This is the identifier of the kernel module listed in the generated stub. This is only used when building kernel extensions.

</div>


|              |                                                                                 |
|--------------|---------------------------------------------------------------------------------|
| DefaultValue |                                                                                 |
| Name         | MODULE_NAME                                                                     |
| Type         | String                                                                          |
| References   | [CLANG_ENABLE_MODULE_IMPLEMENTATION_OF](#CLANG_ENABLE_MODULE_IMPLEMENTATION_OF) |
|              | [MAPC_MODULE](#MAPC_MODULE)                                                     |
|              | [MOMC_MODULE](#MOMC_MODULE)                                                     |
|              | [PRODUCT_MODULE_NAME](#dev93497cfe4)                                            |
|              | [SWIFT_MODULE_NAME](#SWIFT_MODULE_NAME)                                         |
|              | [SWIFT_OBJC_INTERFACE_HEADER_NAME](#dev977f5e406)                               |

<div id="deva96086531" class="Subhead">

## Module Start Routine (MODULE_START)

This defines the name of the kernel module start routine. This is only used when building kernel extensions.

</div>


|              |              |
|--------------|--------------|
| DefaultValue |              |
| Name         | MODULE_START |
| Type         | String       |
| References   |              |

<div id="devb752c4b4b" class="Subhead">

## Module Stop Routine (MODULE_STOP)

This defines the name of the kernel module stop routine. This is only used when building kernel extensions.

</div>


|              |             |
|--------------|-------------|
| DefaultValue |             |
| Name         | MODULE_STOP |
| Type         | String      |
| References   |             |

<div id="dev521c0636d" class="Subhead">

## Module Version (MODULE_VERSION)

This is the version of the kernel module listed in the generated stub. This is only used when building kernel extensions.

</div>


|              |                |
|--------------|----------------|
| DefaultValue |                |
| Name         | MODULE_VERSION |
| Type         | String         |
| References   |                |

<div id="dev61f87ee21" class="Subhead">

## Suppress momc warnings for delete rules (MOMC_NO_DELETE_RULE_WARNINGS)

Suppress managed object model compiler (`momc`) warnings for delete rules during the compilation of `.xcdatamodel(d)` files.

</div>


|                 |                              |
|-----------------|------------------------------|
| Category        | Warnings                     |
| CommandLineFlag | --no-delete-rule-warnings    |
| DefaultValue    | NO                           |
| Name            | MOMC_NO_DELETE_RULE_WARNINGS |
| Type            | Boolean                      |
| References      |                              |

<div id="dev00d1d8205" class="Subhead">

## Suppress momc warnings on missing inverse relationships (MOMC_NO_INVERSE_RELATIONSHIP_WARNINGS)

Suppress managed object model compiler (`momc`) warnings from output on missing inverse relationships during the compilation of `.xcdatamodel(d)` files

</div>


|                 |                                       |
|-----------------|---------------------------------------|
| Category        | Warnings                              |
| CommandLineFlag | --no-inverse-relationship-warnings    |
| DefaultValue    | NO                                    |
| Name            | MOMC_NO_INVERSE_RELATIONSHIP_WARNINGS |
| Type            | Boolean                               |
| References      |                                       |

<div id="dev8cb8badac" class="Subhead">

## Suppress momc warnings for entities with more than 100 properties (MOMC_NO_MAX_PROPERTY_COUNT_WARNINGS)

Suppress managed object model compiler (`momc`) warnings from output on entities with more than 100 properties during the compilation of `.xcdatamodel(d)` files.

</div>


|                 |                                     |
|-----------------|-------------------------------------|
| Category        | Warnings                            |
| CommandLineFlag | --no-max-property-count-warnings    |
| DefaultValue    | NO                                  |
| Name            | MOMC_NO_MAX_PROPERTY_COUNT_WARNINGS |
| Type            | Boolean                             |
| References      |                                     |

<div id="dev23a424be0" class="Subhead">

## Suppress all momc warnings (MOMC_NO_WARNINGS)

Suppress managed object model compiler (`momc`) warnings from output during the compilation of `.xcdatamodel(d)` files

</div>


|                 |                  |
|-----------------|------------------|
| Category        | Warnings         |
| CommandLineFlag | --no-warnings    |
| DefaultValue    | NO               |
| Name            | MOMC_NO_WARNINGS |
| Type            | Boolean          |
| References      |                  |

<div id="devd0979b218" class="Subhead">

## Suppress momc error on transient inverse relationships (MOMC_SUPPRESS_INVERSE_TRANSIENT_ERROR)

Suppress managed object model compiler (`momc`) warnings from output on transient inverse relationships during the compilation of `.xcdatamodel(d)` files. This is only intended to be used on 10.4.x created models that compiled properly in 10.4.x before the error was introduced in 10.5

</div>


|                 |                                       |
|-----------------|---------------------------------------|
| Category        | Warnings                              |
| CommandLineFlag | --suppress-inverse-transient-error    |
| DefaultValue    | NO                                    |
| Name            | MOMC_SUPPRESS_INVERSE_TRANSIENT_ERROR |
| Type            | Boolean                               |
| References      |                                       |

<div id="dev4d638876b" class="Subhead">

## Other Metal Linker Flags (MTLLINKER_FLAGS)

Space-separated list of metal linker flags

</div>


|                       |                 |
|-----------------------|-----------------|
| Category              | BuildOptions    |
| CommandLinePrefixFlag |                 |
| Name                  | MTLLINKER_FLAGS |
| Type                  | StringList      |
| References            |                 |

<div id="devebb9926eb" class="Subhead">

## Other Metal Compiler Flags (MTL_COMPILER_FLAGS)

Space-separated list of compiler flags

</div>


|                       |                    |
|-----------------------|--------------------|
| Category              | BuildOptions       |
| CommandLinePrefixFlag |                    |
| Name                  | MTL_COMPILER_FLAGS |
| Type                  | StringList         |
| References            |                    |

<div id="dev2afe86b0e" class="Subhead">

## Produce debugging information (MTL_ENABLE_DEBUG_INFO)

Produce debugging information. This information is required for shader debugging and profiling.

</div>


|                  |                                                   |
|------------------|---------------------------------------------------|
| AllowedValues    | YES                                               |
|                  | INCLUDE_SOURCE                                    |
|                  | NO                                                |
| Category         | BuildOptions                                      |
| CommandLineArgs  |                                                   |
| `INCLUDE_SOURCE` | -gline-tables-only                                |
|                  | -MO                                               |
| `NO`             |                                                   |
| `YES`            | -gline-tables-only                                |
| DefaultValue     | NO                                                |
| Name             | MTL_ENABLE_DEBUG_INFO                             |
| Type             | Enumeration                                       |
| References       | [MTL_ENABLE_INDEX_STORE](#MTL_ENABLE_INDEX_STORE) |

<div id="dev41939a305" class="Subhead">

## Enable fast math (MTL_FAST_MATH)

Enable optimizations for floating-point arithmetic that may violate the IEEE 754 standard and disable the high precision variant of math functions for single and half precision floating-point.

</div>


|                 |                |
|-----------------|----------------|
| Category        | BuildOptions   |
| CommandLineArgs |                |
| `NO`            | -fno-fast-math |
| `YES`           | -ffast-math    |
| DefaultValue    | YES            |
| Name            | MTL_FAST_MATH  |
| Type            | Bool           |
| References      |                |

<div id="dev4b50e718e" class="Subhead">

## Header Search Paths (MTL_HEADER_SEARCH_PATHS)

This is a list of paths to folders to be searched by the compiler for included or imported header files when compiling Metal. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. `MTL_HEADER_SEARCH_PATHS, -I`

</div>


|                                    |                         |
|------------------------------------|-------------------------|
| Category                           | BuildOptions            |
| CommandLinePrefixFlag              | -I                      |
| DefaultValue                       |                         |
| FlattenRecursiveSearchPathsInValue | Yes                     |
| Name                               | MTL_HEADER_SEARCH_PATHS |
| Type                               | PathList                |
| References                         |                         |

<div id="dev40b913567" class="Subhead">

## Ignore Warnings (MTL_IGNORE_WARNINGS)

Enabling this option causes all warnings to be ignored. `MTL_IGNORE_WARNINGS, -W`

</div>


|                 |                     |
|-----------------|---------------------|
| Category        | BuildOptions        |
| CommandLineArgs |                     |
| `NO`            |                     |
| `YES`           | -W                  |
| DefaultValue    | NO                  |
| Name            | MTL_IGNORE_WARNINGS |
| Type            | Boolean             |
| References      |                     |

<div id="devba98f09f8" class="Subhead">

## Metal language revision (MTL_LANGUAGE_REVISION)

Determine the language revision to use. A value for this option must be provided.

</div>


|                       |                       |
|-----------------------|-----------------------|
| AllowedValues         | UseDeploymentTarget   |
|                       | iOSMetal10            |
|                       | Metal11               |
|                       | Metal12               |
|                       | Metal20               |
|                       | Metal21               |
|                       | Metal22               |
| Category              | BuildOptions          |
| CommandLineArgs       |                       |
| `Metal11`             | -std=ios-metal1.1     |
| `Metal12`             | -std=ios-metal1.2     |
| `Metal20`             | -std=ios-metal2.0     |
| `Metal21`             | -std=ios-metal2.1     |
| `Metal22`             | -std=ios-metal2.2     |
| `UseDeploymentTarget` |                       |
| `iOSMetal10`          | -std=ios-metal1.0     |
| DefaultValue          | UseDeploymentTarget   |
| Name                  | MTL_LANGUAGE_REVISION |
| Type                  | Enumeration           |
| References            |                       |

<div id="dev60aad9cf6" class="Subhead">

## Optimization Level (MTL_OPTIMIZATION_LEVEL)

Optimization Level.

</div>




<div id="dev4fc63c567" class="Subhead">

## Preprocessor Definitions (MTL_PREPROCESSOR_DEFINITIONS)

Space-separated list of preprocessor macros of the form "foo" or "foo=bar".

</div>


|                       |                              |
|-----------------------|------------------------------|
| Category              | BuildOptions                 |
| CommandLinePrefixFlag | -D                           |
| Name                  | MTL_PREPROCESSOR_DEFINITIONS |
| Type                  | StringList                   |
| References            |                              |

<div id="dev9d542875c" class="Subhead">

## Treat Warnings as Errors (MTL_TREAT_WARNINGS_AS_ERRORS)

Enabling this option causes all warnings to be treated as errors. `MTL_TREAT_WARNINGS_AS_ERRORS, -Werror`

</div>


|                 |                              |
|-----------------|------------------------------|
| Category        | BuildOptions                 |
| CommandLineArgs |                              |
| `NO`            |                              |
| `YES`           | -Werror                      |
| DefaultValue    | NO                           |
| Name            | MTL_TREAT_WARNINGS_AS_ERRORS |
| Type            | Boolean                      |
| References      |                              |

<div id="dev7c9531578" class="Subhead">

## Other Nasm Flags (NASM_OTHER_FLAGS)

Space-separated list of additional flags to pass to the `nasm` assembler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `nasm` flag.

</div>


|                       |                  |
|-----------------------|------------------|
| Category              | BuildOptions     |
| CommandLinePrefixFlag |                  |
| DefaultValue          |                  |
| Name                  | NASM_OTHER_FLAGS |
| Type                  | StringList       |
| References            |                  |

<div id="dev04c577275" class="Subhead">

## Nasm Preinclude File (NASM_PREINCLUDE_FILE)

Specifies a file to be preincluded, before the main source file starts to be processed.

</div>


|                 |                      |
|-----------------|----------------------|
| Category        | BuildOptions         |
| CommandLineFlag | -P                   |
| DefaultValue    |                      |
| Name            | NASM_PREINCLUDE_FILE |
| Type            | String               |
| References      |                      |

<div id="devd22eac1e3" class="Subhead">

## NATIVE_ARCH

Identifies the architecture on which the build is being performed.

</div>


|             |                                                                    |
|-------------|--------------------------------------------------------------------|
| Description | Identifies the architecture on which the build is being performed. |
| Name        | NATIVE_ARCH                                                        |
| Type        | String                                                             |
| References  | [NATIVE_ARCH_32_BIT](#NATIVE_ARCH_32_BIT)                          |
|             | [NATIVE_ARCH_64_BIT](#NATIVE_ARCH_64_BIT)                          |
|             | [NATIVE_ARCH_ACTUAL](#NATIVE_ARCH_ACTUAL)                          |

<div id="devddf692c48" class="Subhead">

## OBJECT_FILE_DIR

Partially identifies the directory into which variant object files are placed. The complete specification is computed using the variants of this build setting.

</div>


|              |                                                                                                                                                                 |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/Objects                                                                                                                               |
| Description  | Partially identifies the directory into which variant object files are placed. The complete specification is computed using the variants of this build setting. |
| Name         | OBJECT_FILE_DIR                                                                                                                                                 |
| Type         | Path                                                                                                                                                            |
| References   | [FILE_LIST](#FILE_LIST)                                                                                                                                         |
|              | [LD_DEPENDENCY_INFO_FILE](#dev5b7e93389)                                                                                                                        |
|              | [LD_LTO_OBJECT_FILE](#LD_LTO_OBJECT_FILE)                                                                                                                       |

<div id="devad6c72289" class="Subhead">

## Intermediate Build Files Path (OBJROOT)

The path where intermediate files will be placed during a build. Intermediate files include generated sources, object files, etc. Shell script build phases can place and access files here, as well. Typically this path is not set per target, but is set per project or per user. By default, this is set to `$(PROJECT_DIR)/build`.

</div>


|              |                                                       |
|--------------|-------------------------------------------------------|
| Category     | Build Locations                                       |
| DefaultValue | \$([SYMROOT](#dev181ede51f))                          |
| Name         | OBJROOT                                               |
| Type         | Path                                                  |
| References   | [COMPOSITE_SDK_DIRS](#COMPOSITE_SDK_DIRS)             |
|              | [LLVM_LTO](#dev7356a7961)                             |
|              | [PROJECT_DERIVED_FILE_DIR](#PROJECT_DERIVED_FILE_DIR) |
|              | [PROJECT_TEMP_ROOT](#PROJECT_TEMP_ROOT)               |
|              | [SHARED_PRECOMPS_DIR](#dev6c4858f44)                  |
|              | [TEMP_ROOT](#TEMP_ROOT)                               |

<div id="devaa17a255c" class="Subhead">

## Build Active Architecture Only (ONLY_ACTIVE_ARCH)

If enabled, only the active architecture is built. This setting will be ignored when building with a run destination which does not define a specific architecture, such as a 'Generic Device' run destination.

</div>


|              |                  |
|--------------|------------------|
| Category     | Architectures    |
| DefaultValue | NO               |
| Name         | ONLY_ACTIVE_ARCH |
| Type         | Boolean          |
| References   |                  |

<div id="dev9bd25ef94" class="Subhead">

## On Demand Resources Initial Install Tags (ON_DEMAND_RESOURCES_INITIAL_INSTALL_TAGS)

Defined a set of initial On Demand Resources tags to be downloaded and installed with your application.

</div>


|             |                                                                                                         |
|-------------|---------------------------------------------------------------------------------------------------------|
| Category    | Assets                                                                                                  |
| Description | Defined a set of initial On Demand Resources tags to be downloaded and installed with your application. |
| DisplayName | On Demand Resources Initial Install Tags                                                                |
| Name        | ON_DEMAND_RESOURCES_INITIAL_INSTALL_TAGS                                                                |
| Type        | StringList                                                                                              |
| References  |                                                                                                         |

<div id="dev58e9a6353" class="Subhead">

## On Demand Resources Prefetch Order (ON_DEMAND_RESOURCES_PREFETCH_ORDER)

Once your app is installed, this defined a set of On Demand Resources tags that should be downloaded. These tags are downloaded after the initial installation of your application, and will be downloaded in the order the tags provided in the list from first to last.

</div>


|             |                                                                                                                                                                                                                                                                           |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category    | Assets                                                                                                                                                                                                                                                                    |
| Description | Once your app is installed, this defined a set of On Demand Resources tags that should be downloaded. These tags are downloaded after the initial installation of your application, and will be downloaded in the order the tags provided in the list from first to last. |
| DisplayName | On Demand Resources Prefetch Order                                                                                                                                                                                                                                        |
| Name        | ON_DEMAND_RESOURCES_PREFETCH_ORDER                                                                                                                                                                                                                                        |
| Type        | StringList                                                                                                                                                                                                                                                                |
| References  |                                                                                                                                                                                                                                                                           |

<div id="dev33cd6b812" class="Subhead">

## OpenCL Architectures (OPENCL_ARCHS)

A list of the architectures for which the product will be built. This is usually set to a predefined build setting provided by the platform.

</div>


|              |                           |
|--------------|---------------------------|
| Category     | BuildOptions              |
| DefaultValue | i386 x86_64 gpu_32 gpu_64 |
| Name         | OPENCL_ARCHS              |
| Type         | OpenCLArchitectures       |
| References   |                           |

<div id="devfd83d9c6b" class="Subhead">

## Auto-vectorizer (OPENCL_AUTO_VECTORIZE_ENABLE)

Auto-vectorizes the `OpenCL` kernels for the CPU. This setting takes effect only for the CPU. This makes it possible to write a single kernel that is portable and performant across CPUs and GPUs.

</div>


|              |                              |
|--------------|------------------------------|
| Category     | CodeGen                      |
| DefaultValue | YES                          |
| Name         | OPENCL_AUTO_VECTORIZE_ENABLE |
| Type         | Boolean                      |
| References   |                              |

<div id="devfc63755dd" class="Subhead">

## OpenCL Compiler Version (OPENCL_COMPILER_VERSION)

The `OpenCL` C compiler version supported by the platform.

</div>


|              |                         |
|--------------|-------------------------|
| Category     | BuildOptions            |
| DefaultValue | CL1.1                   |
| FileTypes    | sourcecode.opencl       |
| Name         | OPENCL_COMPILER_VERSION |
| Type         | Enumeration             |
| Values       | CL1.2                   |
|              | CL1.1                   |
| References   |                         |

<div id="devc3d1014b6" class="Subhead">

## Flush denorms to zero (OPENCL_DENORMS_ARE_ZERO)

This option controls how single precision and double precision denormalized numbers are handled. If specified as a build option, the single precision denormalized numbers may be flushed to zero; double precision denormalized numbers may also be flushed to zero if the optional extension for double precision is supported. This is intended to be a performance hint and the `OpenCL` compiler can choose not to flush denorms to zero if the device supports single precision (or double precision) denormalized numbers.

This option is ignored for single precision numbers if the device does not support single precision denormalized numbers, for example, `CL_FP_DENORM` bit is not set in `CL_DEVICE_SINGLE_FP_CONFIG`.

This option is ignored for double precision numbers if the device does not support double precision or if it does support double precision but not double precision denormalized numbers, for example, `CL_FP_DENORM` bit is not set in `CL_DEVICE_DOUBLE_FP_CONFIG`.

This flag only applies for scalar and vector single precision floating-point variables and computations on these floating-point variables inside a program. It does not apply to reading from or writing to image objects.

</div>


|              |                         |
|--------------|-------------------------|
| Category     | CodeGen                 |
| DefaultValue | NO                      |
| Name         | OPENCL_DENORMS_ARE_ZERO |
| Type         | Boolean                 |
| References   |                         |

<div id="dev198da8181" class="Subhead">

## Double as single (OPENCL_DOUBLE_AS_SINGLE)

Treat double precision floating-point expression as a single precision floating-point expression. This option is available for GPUs only.

</div>


|              |                         |
|--------------|-------------------------|
| Category     | CodeGen                 |
| DefaultValue | NO                      |
| Name         | OPENCL_DOUBLE_AS_SINGLE |
| Type         | Boolean                 |
| References   |                         |

<div id="dev0a2e3cdc4" class="Subhead">

## Relax IEEE Compliance (OPENCL_FAST_RELAXED_MATH)

This allows optimizations for floating-point arithmetic that may violate the IEEE 754 standard and the `OpenCL` numerical compliance requirements defined in in section 7.4 for single-precision floating-point, section 9.3.9 for double-precision floating-point, and edge case behavior in section 7.5 of the `OpenCL` 1.1 specification.

This is intended to be a performance optimization.

This option causes the preprocessor macro `__FAST_RELAXED_MATH__` to be defined in the `OpenCL` program.

</div>


|              |                          |
|--------------|--------------------------|
| Category     | CodeGen                  |
| DefaultValue | NO                       |
| Name         | OPENCL_FAST_RELAXED_MATH |
| Type         | Boolean                  |
| References   |                          |

<div id="dev0638b660c" class="Subhead">

## Use MAD (OPENCL_MAD_ENABLE)

Allow `a * b + c` to be replaced by a `mad` instruction. The `mad` computes `a * b + c` with reduced accuracy. For example, some `OpenCL` devices implement `mad` as truncate the result of `a * b` before adding it to `c`.

This is intended to be a performance optimization.

</div>


|              |                   |
|--------------|-------------------|
| Category     | CodeGen           |
| DefaultValue | NO                |
| Name         | OPENCL_MAD_ENABLE |
| Type         | Boolean           |
| References   |                   |

<div id="dev3025510b6" class="Subhead">

## Optimization Level (OPENCL_OPTIMIZATION_LEVEL)

  - *None:* Do not optimize. `-O0` With this setting, the compiler's goal is to reduce the cost of compilation and to make debugging produce the expected results. Statements are independent: if you stop the program with a breakpoint between statements, you can then assign a new value to any variable or change the program counter to any other statement in the function and get exactly the results you would expect from the source code.

  - *Fast:* Optimizing compilation takes somewhat more time, and a lot more memory for a large function. `-O, -O1` With this setting, the compiler tries to reduce code size and execution time, without performing any optimizations that take a great deal of compilation time. In Apple's compiler, strict aliasing, block reordering, and inter-block scheduling are disabled by default when optimizing.

  - *Faster:* The compiler performs nearly all supported optimizations that do not involve a space-speed tradeoff. `-O2` With this setting, the compiler does not perform loop unrolling or function inlining, or register renaming. As compared to the `Fast` setting, this setting increases both compilation time and the performance of the generated code.

  - *Fastest:* Turns on all optimizations specified by the `Faster` setting and also turns on function inlining and register renaming options. This setting may result in a larger binary. `-O3`

  - *Fastest, smallest:* Optimize for size. This setting enables all `Faster` optimizations that do not typically increase code size. It also performs further optimizations designed to reduce code size. `-Os`

</div>


|              |                           |
|--------------|---------------------------|
| Category     | CodeGen                   |
| DefaultValue | s                         |
| Name         | OPENCL_OPTIMIZATION_LEVEL |
| Type         | Enumeration               |
| Values       | 0                         |
|              | 1                         |
|              | 2                         |
|              | 3                         |
|              | s                         |
| References   |                           |

<div id="dev44d2a95da" class="Subhead">

## OpenCL Other Flags (OPENCL_OTHER_BC_FLAGS)

Space-separated list of additional flags to pass to the compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular compiler flag.

</div>


|            |                       |
|------------|-----------------------|
| Category   | BuildOptions          |
| Name       | OPENCL_OTHER_BC_FLAGS |
| Type       | StringList            |
| References |                       |

<div id="dev248e302d2" class="Subhead">

## OpenCL Preprocessor Macros (OPENCL_PREPROCESSOR_DEFINITIONS)

Space-separated list of preprocessor macros of the form `foo` or `foo=bar`.

</div>


|            |                                 |
|------------|---------------------------------|
| Category   | Preprocessing                   |
| Name       | OPENCL_PREPROCESSOR_DEFINITIONS |
| Type       | StringList                      |
| References |                                 |

<div id="deva4dc41871" class="Subhead">

## Order File (ORDER_FILE)

The path to a file that alters the order in which functions and data are laid out.

For each section in the output file, any symbol in that section that are specified in the order file is moved to the start of its section and laid out in the same order as in the order file. Order files are text files with one symbol name per line. Lines starting with a `#` are comments. A symbol name may be optionally preceded with its object file leafname and a colon (for example, `foo.o:_foo`). This is useful for static functions/data that occur in multiple files. A symbol name may also be optionally preceded with the architecture (for example, `ppc:_foo` or `ppc:foo.o:_foo`). This enables you to have one order file that works for multiple architectures. Literal C-strings may be ordered by quoting the string in the order file (for example, `"Hello, worldn"`).

Generally you should not specify an order file in Debug or Development configurations, as this will make the linked binary less readable to the debugger. Use them only in Release or Deployment configurations.

</div>


|              |            |
|--------------|------------|
| DefaultValue |            |
| Name         | ORDER_FILE |
| Type         | String     |
| References   |            |

<div id="devc29c55034" class="Subhead">

## Save as Execute-Only (OSACOMPILE_EXECUTE_ONLY)

Saves the output script in execute-only form; the script can be run, but cannot be opened in Script Editor or Xcode. With this option turned off, a user may see the original script source by opening the script.

</div>


|                 |                         |
|-----------------|-------------------------|
| Category        | BuildOptions            |
| CommandLineFlag | -x                      |
| DefaultValue    | NO                      |
| Name            | OSACOMPILE_EXECUTE_ONLY |
| Type            | Boolean                 |
| References      |                         |

<div id="devfe44263e0" class="Subhead">

## Other C Flags (OTHER_CFLAGS)

Space-separated list of additional flags to pass to the compiler for C and Objective-C files. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular C or Objective-C compiler flag.

</div>


|            |                                       |
|------------|---------------------------------------|
| Category   | CustomFlags                           |
| FileTypes  | sourcecode.c.c                        |
|            | sourcecode.c.objc                     |
| Name       | OTHER_CFLAGS                          |
| Type       | StringList                            |
| References | [OTHER_CPLUSPLUSFLAGS](#dev4aeb8200e) |

<div id="dev22ebeb29f" class="Subhead">

## Other Code Signing Flags (OTHER_CODE_SIGN_FLAGS)

A list of additional options to pass to `codesign(1)`.

</div>


|                  |                       |
|------------------|-----------------------|
| Category         | Code Signing          |
| ConditionFlavors | sdk                   |
| DefaultValue     |                       |
| Name             | OTHER_CODE_SIGN_FLAGS |
| Type             | StringList            |
| References       |                       |

<div id="dev4aeb8200e" class="Subhead">

## Other C++ Flags (OTHER_CPLUSPLUSFLAGS)

Space-separated list of additional flags to pass to the compiler for C++ and Objective-C++ files. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a C++ or Objective-C++ compiler flag.

</div>


|            |                       |
|------------|-----------------------|
| Category   | CustomFlags           |
| FileTypes  | sourcecode.cpp.cpp    |
|            | sourcecode.cpp.objcpp |
| Name       | OTHER_CPLUSPLUSFLAGS  |
| Type       | StringList            |
| References |                       |

<div id="dev4fc8ef90a" class="Subhead">

## Other Linker Flags (OTHER_LDFLAGS)

Options defined in this setting are passed to invocations of the linker.

</div>


|                  |                                         |
|------------------|-----------------------------------------|
| ConditionFlavors | arch                                    |
| DefaultValue     |                                         |
| Name             | OTHER_LDFLAGS                           |
| Type             | StringList                              |
| UIType           | String                                  |
| References       | [ALL_OTHER_LDFLAGS](#ALL_OTHER_LDFLAGS) |
|                  | [OTHER_LDRFLAGS](#OTHER_LDRFLAGS)       |

<div id="dev9a0ecc53f" class="Subhead">

## Other Librarian Flags (OTHER_LIBTOOLFLAGS)

Options defined in this setting are passed to all invocations of the archive librarian, which is used to generate static libraries.

</div>


|                  |                    |
|------------------|--------------------|
| ConditionFlavors | arch               |
| DefaultValue     |                    |
| Name             | OTHER_LIBTOOLFLAGS |
| Type             | StringList         |
| UIType           | String             |
| References       |                    |

<div id="deve8ecffb0b" class="Subhead">

## Other MiG Flags (OTHER_MIGFLAGS)

Space-separated list of additional flags to pass to `mig`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a `mig` flag.

</div>


|              |                |
|--------------|----------------|
| DefaultValue |                |
| Name         | OTHER_MIGFLAGS |
| Type         | StringList     |
| References   |                |

<div id="devf218eca23" class="Subhead">

## Other OSACompile Flags (OTHER_OSACOMPILEFLAGS)

Space-separated list of additional flags to pass to `osacompile`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `osacompile` flag.

</div>


|                       |                       |
|-----------------------|-----------------------|
| Category              | BuildOptions          |
| CommandLinePrefixFlag |                       |
| DefaultValue          |                       |
| Name                  | OTHER_OSACOMPILEFLAGS |
| Type                  | StringList            |
| References            |                       |

<div id="devd14f76578" class="Subhead">

## Other Rez Flags (OTHER_REZFLAGS)

Space-separated list of additional flags to pass to the `Rez` compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `Rez` flag.

</div>


|              |                |
|--------------|----------------|
| DefaultValue |                |
| Name         | OTHER_REZFLAGS |
| Type         | StringList     |
| References   |                |

<div id="dev82fb1a2dd" class="Subhead">

## Other Swift Flags (OTHER_SWIFT_FLAGS)

A list of additional flags to pass to the Swift compiler.

</div>


|                 |                                                           |
|-----------------|-----------------------------------------------------------|
| Category        | Custom Flags                                              |
| CommandLineArgs | \$([value](#value))                                       |
| Description     | A list of additional flags to pass to the Swift compiler. |
| DisplayName     | Other Swift Flags                                         |
| Name            | OTHER_SWIFT_FLAGS                                         |
| Type            | StringList                                                |
| References      |                                                           |

<div id="dev5d847a3ae" class="Subhead">

## Other Text-Based InstallAPI Flags (OTHER_TAPI_FLAGS)

Options defined in this setting are passed to invocations of the `Text-Based InstallAPI` tool.

</div>


|                  |                                                                                                |
|------------------|------------------------------------------------------------------------------------------------|
| Category         | Text-Based API                                                                                 |
| ConditionFlavors | arch                                                                                           |
|                  | sdk                                                                                            |
| DefaultValue     |                                                                                                |
| Description      | Options defined in this setting are passed to invocations of the `Text-Based InstallAPI` tool. |
| DisplayName      | Other Text-Based InstallAPI Flags                                                              |
| Name             | OTHER_TAPI_FLAGS                                                                               |
| Type             | StringList                                                                                     |
| References       |                                                                                                |

<div id="dev1174bc406" class="Subhead">

## PACKAGE_TYPE

Uniform type identifier. Identifies the type of the product the target builds. Some products may be made up of a single binary or archive. Others may comprise several files, which are grouped under a single directory. These container directories are known as *bundles*.

</div>


|              |                                                                                                                                                                                                                                                                               |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue |                                                                                                                                                                                                                                                                               |
| Description  | Uniform type identifier. Identifies the type of the product the target builds. Some products may be made up of a single binary or archive. Others may comprise several files, which are grouped under a single directory. These container directories are known as *bundles*. |
| Name         | PACKAGE_TYPE                                                                                                                                                                                                                                                                  |
| Type         | String                                                                                                                                                                                                                                                                        |
| References   |                                                                                                                                                                                                                                                                               |

<div id="dev70f6976ed" class="Subhead">

## Property List Output Encoding (PLIST_FILE_OUTPUT_FORMAT)

Specifies the output encoding for property list files (`.plist`). The output encodings can be `binary` or `XML`. By default, the output encoding will be unchanged from the input.

</div>


|              |                          |
|--------------|--------------------------|
| DefaultValue | same-as-input            |
| Name         | PLIST_FILE_OUTPUT_FORMAT |
| Type         | Enumeration              |
| Values       | same-as-input            |
|              | XML                      |
|              | binary                   |
| References   |                          |

<div id="dev5f5f1899a" class="Subhead">

## PLUGINS_FOLDER_PATH

Specifies the directory that contains the product’s plugins.

</div>


|              |                                                              |
|--------------|--------------------------------------------------------------|
| DefaultValue |                                                              |
| Description  | Specifies the directory that contains the product’s plugins. |
| Name         | PLUGINS_FOLDER_PATH                                          |
| Type         | Path                                                         |
| References   |                                                              |

<div id="deva4a964c3a" class="Subhead">

## Precompiled Header Uses Files From Build Directory (PRECOMPS_INCLUDE_HEADERS_FROM_BUILT_PRODUCTS_DIR)

This setting allows for better control of sharing precompiled prefix header files between projects. By default, Xcode assumes that the prefix header file may include header files from the build directory if the build directory is outside of the project directory. Xcode cannot determine this ahead of time since other projects may not have been built into the shared build directory at the time the information is needed.

If your prefix file never includes files from the build directory you may set this to `NO` to improve sharing of precompiled headers. If the prefix does use files from a build directory that is inside your project directory, you may set this to `YES` to avoid unintended sharing that may result in build failures.

</div>


|              |                                                  |
|--------------|--------------------------------------------------|
| DefaultValue | YES                                              |
| Name         | PRECOMPS_INCLUDE_HEADERS_FROM_BUILT_PRODUCTS_DIR |
| Type         | Boolean                                          |
| References   |                                                  |

<div id="devba112d835" class="Subhead">

## Single-Object Prelink Flags (PRELINK_FLAGS)

Additional flags to pass when performing a single-object prelink.

</div>


|              |               |
|--------------|---------------|
| DefaultValue |               |
| Name         | PRELINK_FLAGS |
| Type         | StringList    |
| References   |               |

<div id="dev0e5e578b9" class="Subhead">

## Prelink libraries (PRELINK_LIBS)

Additional libraries to pass when performing a single-object prelink.

</div>


|              |              |
|--------------|--------------|
| DefaultValue |              |
| Name         | PRELINK_LIBS |
| Type         | StringList   |
| References   |              |

<div id="devdea9a9ad6" class="Subhead">

## Don't Dead-Strip Inits and Terms (PRESERVE_DEAD_CODE_INITS_AND_TERMS)

Activating this setting, in combination with the [Dead Code Stripping (DEAD_CODE_STRIPPING)](#dev9ed8cb7ad) (`-dead_strip`) option, causes the `-no_dead_strip_inits_and_terms` flag to be passed to `ld(1)` via `cc(1)` to disable dead code stripping for initialization and termination routines. This option should not be used without the aforementioned [Dead Code Stripping (DEAD_CODE_STRIPPING)](#dev9ed8cb7ad) option.

</div>


|              |                                    |
|--------------|------------------------------------|
| DefaultValue | NO                                 |
| Name         | PRESERVE_DEAD_CODE_INITS_AND_TERMS |
| Type         | Boolean                            |
| References   |                                    |

<div id="dev4a3ee8cb2" class="Subhead">

## Private Headers Folder Path (PRIVATE_HEADERS_FOLDER_PATH)

The location to copy the private headers to during building, relative to the built products folder.

</div>


|              |                             |
|--------------|-----------------------------|
| DefaultValue |                             |
| Name         | PRIVATE_HEADERS_FOLDER_PATH |
| Type         | String                      |
| References   |                             |

<div id="dev0f43bcc41" class="Subhead">

## Product Bundle Identifier (PRODUCT_BUNDLE_IDENTIFIER)

A string that uniquely identifies the bundle. The string should be in reverse DNS format using only alphanumeric characters (`A-Z`, `a-z`, `0-9`), the dot (`.`), and the hyphen (`-`). This value is used as the `CFBundleIdentifier` in the `Info.plist` of the built bundle.

</div>


|                  |                                                                                                                                                                                                                                                                                 |
|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category         | Packaging                                                                                                                                                                                                                                                                       |
| ConditionFlavors | sdk                                                                                                                                                                                                                                                                             |
| DefaultValue     |                                                                                                                                                                                                                                                                                 |
| Description      | A string that uniquely identifies the bundle. The string should be in reverse DNS format using only alphanumeric characters (`A-Z`, `a-z`, `0-9`), the dot (`.`), and the hyphen (`-`). This value is used as the `CFBundleIdentifier` in the `Info.plist` of the built bundle. |
| DisplayName      | Product Bundle Identifier                                                                                                                                                                                                                                                       |
| Name             | PRODUCT_BUNDLE_IDENTIFIER                                                                                                                                                                                                                                                       |
| Type             | String                                                                                                                                                                                                                                                                          |
| References       |                                                                                                                                                                                                                                                                                 |

<div id="deve4ffd8a65" class="Subhead">

## PRODUCT_DEFINITION_PLIST

Path to a file specifying additional requirements for a product archive.

</div>


|              |                                                                          |
|--------------|--------------------------------------------------------------------------|
| Category     | Deployment                                                               |
| DefaultValue |                                                                          |
| Description  | Path to a file specifying additional requirements for a product archive. |
| Name         | PRODUCT_DEFINITION_PLIST                                                 |
| Type         | String                                                                   |
| References   |                                                                          |

<div id="dev93497cfe4" class="Subhead">

## Product Module Name (PRODUCT_MODULE_NAME)

The name to use for the source code module constructed for this target, and which will be used to import the module in implementation source files. Must be a valid identifier.

</div>


|              |                                                                                 |
|--------------|---------------------------------------------------------------------------------|
| Category     | Packaging                                                                       |
| DefaultValue | \$(PRODUCT_NAME:c99extidentifier)                                               |
| Name         | PRODUCT_MODULE_NAME                                                             |
| Type         | String                                                                          |
| References   | [CLANG_ENABLE_MODULE_IMPLEMENTATION_OF](#CLANG_ENABLE_MODULE_IMPLEMENTATION_OF) |
|              | [MAPC_MODULE](#MAPC_MODULE)                                                     |
|              | [MOMC_MODULE](#MOMC_MODULE)                                                     |
|              | [SWIFT_MODULE_NAME](#SWIFT_MODULE_NAME)                                         |

<div id="dev5c40d1d06" class="Subhead">

## Product Name (PRODUCT_NAME)

This is the basename of the product generated by the target.

</div>


|              |                                                                                                                     |
|--------------|---------------------------------------------------------------------------------------------------------------------|
| DefaultValue |                                                                                                                     |
| Name         | PRODUCT_NAME                                                                                                        |
| Type         | String                                                                                                              |
| References   | [CODESIGNING_FOLDER_PATH](#CODESIGNING_FOLDER_PATH)                                                                 |
|              | [CPP_HEADERMAP_FILE](#CPP_HEADERMAP_FILE)                                                                           |
|              | [CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS) |
|              | [CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS)                             |
|              | [CPP_HEADERMAP_FILE_FOR_GENERATED_FILES](#CPP_HEADERMAP_FILE_FOR_GENERATED_FILES)                                   |
|              | [CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS)                             |
|              | [CPP_HEADERMAP_FILE_FOR_PROJECT_FILES](#CPP_HEADERMAP_FILE_FOR_PROJECT_FILES)                                       |
|              | [CPP_HEADER_SYMLINKS_DIR](#CPP_HEADER_SYMLINKS_DIR)                                                                 |
|              | [DWARF_DSYM_FILE_NAME](#DWARF_DSYM_FILE_NAME)                                                                       |
|              | [FULL_PRODUCT_NAME](#FULL_PRODUCT_NAME)                                                                             |
|              | [LD_DEPENDENCY_INFO_FILE](#dev5b7e93389)                                                                            |
|              | [LD_LTO_OBJECT_FILE](#LD_LTO_OBJECT_FILE)                                                                           |
|              | [LD_MAP_FILE_PATH](#dev0f5aa9fe1)                                                                                   |
|              | [PRODUCT_MODULE_NAME](#dev93497cfe4)                                                                                |
|              | [VERSION_INFO_FILE](#dev1d2591e03)                                                                                  |
|              | [VERSION_INFO_STRING](#VERSION_INFO_STRING)                                                                         |

<div id="dev1d2022a00" class="Subhead">

## Project Name (PROJECT_NAME)

The name of the current project.

</div>


|              |                                                       |
|--------------|-------------------------------------------------------|
| DefaultValue |                                                       |
| Description  | The name of the current project.                      |
| DisplayName  | Project Name                                          |
| Name         | PROJECT_NAME                                          |
| Type         | String                                                |
| References   | [CLANG_OPTIMIZATION_PROFILE_FILE](#dev7f935916c)      |
|              | [DSTROOT](#dev438d356c2)                              |
|              | [PROJECT_DERIVED_FILE_DIR](#PROJECT_DERIVED_FILE_DIR) |
|              | [PROJECT_TEMP_DIR](#dev583a73f21)                     |
|              | [VERSION_INFO_STRING](#VERSION_INFO_STRING)           |

<div id="dev583a73f21" class="Subhead">

## PROJECT_TEMP_DIR

Identifies the directory in which the project’s intermediate build files are placed. This directory is shared between all the targets defined by the project. Run Script build phases should generate intermediate build files in the directory identified by [DERIVED_FILE_DIR](#devcdbd943f2), not the location this build setting specifies.

</div>


|              |                                                                                                                                                                                                                                                                                                                                  |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([PROJECT_TEMP_ROOT](#PROJECT_TEMP_ROOT))/\$([PROJECT_NAME](#dev1d2022a00)).build                                                                                                                                                                                                                                              |
| Description  | Identifies the directory in which the project’s intermediate build files are placed. This directory is shared between all the targets defined by the project. Run Script build phases should generate intermediate build files in the directory identified by `DERIVED_FILE_DIR`, not the location this build setting specifies. |
| Name         | PROJECT_TEMP_DIR                                                                                                                                                                                                                                                                                                                 |
| Type         | Path                                                                                                                                                                                                                                                                                                                             |
| References   | [CONFIGURATION_TEMP_DIR](#devdb4863c50)                                                                                                                                                                                                                                                                                          |
|              | [CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE](#CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE)                                                                                                                                                                                                                                                |

<div id="devb5b06a8dd" class="Subhead">

## Provisioning Profile (PROVISIONING_PROFILE_SPECIFIER)

Must contain a profile name (or UUID). A missing or invalid profile will cause a build error. Use in conjunction with [Development Team (DEVELOPMENT_TEAM)](#dev186481df2) to fully specify provisioning profile.

</div>


|                  |                                |
|------------------|--------------------------------|
| Category         | Code Signing                   |
| ConditionFlavors | sdk                            |
| DefaultValue     |                                |
| DisplayName      | Provisioning Profile           |
| Name             | PROVISIONING_PROFILE_SPECIFIER |
| Type             | ProvisioningProfileSpecifier   |
| References       |                                |

<div id="devdbb795497" class="Subhead">

## Public Headers Folder Path (PUBLIC_HEADERS_FOLDER_PATH)

The location to copy the public headers to during building, relative to the built products folder.

</div>


|              |                                                     |
|--------------|-----------------------------------------------------|
| DefaultValue |                                                     |
| Name         | PUBLIC_HEADERS_FOLDER_PATH                          |
| Type         | String                                              |
| References   | [CLANG_MIGRATOR_PUBLIC_HEADERS_ONLY](#deva7fd4dc2a) |
|              | [SWIFT_INSTALL_OBJC_HEADER](#devcc7cfd3b7)          |

<div id="dev5e490466e" class="Subhead">

## Re-Exported Framework Names (REEXPORTED_FRAMEWORK_NAMES)

List of framework names that should have their symbols be reexported from the built library.

</div>


|                  |                                                                                              |
|------------------|----------------------------------------------------------------------------------------------|
| Category         | Linking                                                                                      |
| ConditionFlavors | arch                                                                                         |
|                  | sdk                                                                                          |
| Description      | List of framework names that should have their symbols be reexported from the built library. |
| DisplayName      | Re-Exported Framework Names                                                                  |
| Name             | REEXPORTED_FRAMEWORK_NAMES                                                                   |
| Type             | StringList                                                                                   |
| References       |                                                                                              |

<div id="devc2a866441" class="Subhead">

## Re-Exported Library Names (REEXPORTED_LIBRARY_NAMES)

List of library names that should have their symbols be reexported from the built library.

</div>


|                  |                                                                                            |
|------------------|--------------------------------------------------------------------------------------------|
| Category         | Linking                                                                                    |
| ConditionFlavors | arch                                                                                       |
|                  | sdk                                                                                        |
| Description      | List of library names that should have their symbols be reexported from the built library. |
| DisplayName      | Re-Exported Library Names                                                                  |
| Name             | REEXPORTED_LIBRARY_NAMES                                                                   |
| Type             | StringList                                                                                 |
| References       |                                                                                            |

<div id="dev4d4c7988f" class="Subhead">

## Re-Exported Library Paths (REEXPORTED_LIBRARY_PATHS)

List of library paths that should have their symbols be reexported from the built library.

</div>


|                  |                                                                                            |
|------------------|--------------------------------------------------------------------------------------------|
| Category         | Linking                                                                                    |
| ConditionFlavors | arch                                                                                       |
|                  | sdk                                                                                        |
| Description      | List of library paths that should have their symbols be reexported from the built library. |
| DisplayName      | Re-Exported Library Paths                                                                  |
| Name             | REEXPORTED_LIBRARY_PATHS                                                                   |
| Type             | PathList                                                                                   |
| References       |                                                                                            |

<div id="dev942d1291f" class="Subhead">

## REMOVE_CVS_FROM_RESOURCES

Specifies whether to remove `CVS` directories from bundle resources when they are copied.

</div>


|              |                                                                                           |
|--------------|-------------------------------------------------------------------------------------------|
| DefaultValue | YES                                                                                       |
| Description  | Specifies whether to remove `CVS` directories from bundle resources when they are copied. |
| Name         | REMOVE_CVS_FROM_RESOURCES                                                                 |
| Type         | Boolean                                                                                   |
| References   |                                                                                           |

<div id="dev35f20eb24" class="Subhead">

## REMOVE_GIT_FROM_RESOURCES

Specifies whether to remove `.git` directories from bundle resources when they are copied.

</div>


|              |                                                                                            |
|--------------|--------------------------------------------------------------------------------------------|
| DefaultValue | YES                                                                                        |
| Description  | Specifies whether to remove `.git` directories from bundle resources when they are copied. |
| Name         | REMOVE_GIT_FROM_RESOURCES                                                                  |
| Type         | Boolean                                                                                    |
| References   |                                                                                            |

<div id="dev1c249badf" class="Subhead">

## REMOVE_HG_FROM_RESOURCES

Specifies whether to remove `.hg` directories from bundle resources when they are copied.

</div>


|              |                                                                                           |
|--------------|-------------------------------------------------------------------------------------------|
| DefaultValue | YES                                                                                       |
| Description  | Specifies whether to remove `.hg` directories from bundle resources when they are copied. |
| Name         | REMOVE_HG_FROM_RESOURCES                                                                  |
| Type         | Boolean                                                                                   |
| References   |                                                                                           |

<div id="devef3ce84ed" class="Subhead">

## REMOVE_SVN_FROM_RESOURCES

Specifies whether to remove `SVN` directories from bundle resources when they are copied.

</div>


|              |                                                                                           |
|--------------|-------------------------------------------------------------------------------------------|
| DefaultValue | YES                                                                                       |
| Description  | Specifies whether to remove `SVN` directories from bundle resources when they are copied. |
| Name         | REMOVE_SVN_FROM_RESOURCES                                                                 |
| Type         | Boolean                                                                                   |
| References   |                                                                                           |

<div id="dev63caf4b41" class="Subhead">

## File Fork of Binary Sources (RESMERGER_SOURCES_FORK)

Determines whether `ResMerger` treats binary input files as data-fork hosted or resource-fork hosted, or whether it automatically examines each input file.

</div>


|              |                        |
|--------------|------------------------|
| Category     | BinarySources          |
| DefaultValue | auto                   |
| Name         | RESMERGER_SOURCES_FORK |
| Type         | Enumeration            |
| Values       | data                   |
|              | resource               |
|              | auto                   |
| References   |                        |

<div id="dev90f459531" class="Subhead">

## Resources Targeted Device Family (RESOURCES_TARGETED_DEVICE_FAMILY)

Overrides [Targeted Device Family (TARGETED_DEVICE_FAMILY)](#dev2f2f7890b) when the resource copying needs to differ from the default targeted device.

</div>


|            |                                  |
|------------|----------------------------------|
| Category   | Deployment                       |
| Name       | RESOURCES_TARGETED_DEVICE_FAMILY |
| Type       | StringList                       |
| References |                                  |

<div id="devaefaba5d4" class="Subhead">

## RETAIN_RAW_BINARIES

Specifies whether to keep copies of unstripped binaries available.

</div>


|              |                                                                    |
|--------------|--------------------------------------------------------------------|
| DefaultValue | \$([INSTALLED_PRODUCT_ASIDES](#INSTALLED_PRODUCT_ASIDES))          |
| Description  | Specifies whether to keep copies of unstripped binaries available. |
| Name         | RETAIN_RAW_BINARIES                                                |
| Type         | Boolean                                                            |
| References   |                                                                    |

<div id="dev7ced986ee" class="Subhead">

## REZ_COLLECTOR_DIR

Specifies the directory in which the collected Resource Manager resources generated by `ResMerger` are stored before they are added to the product.

</div>


|              |                                                                                                                                                     |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([TARGET_TEMP_DIR](#dev4ad1824fb))/ResourceManagerResources                                                                                       |
| Description  | Specifies the directory in which the collected Resource Manager resources generated by `ResMerger` are stored before they are added to the product. |
| Name         | REZ_COLLECTOR_DIR                                                                                                                                   |
| Type         | Path                                                                                                                                                |
| References   | [REZ_OBJECTS_DIR](#dev574e162fd)                                                                                                                    |

<div id="dev574e162fd" class="Subhead">

## REZ_OBJECTS_DIR

Specifies the directory in which compiled Resource Manager resources generated by `Rez` are stored before they are collected using `ResMerger`.

</div>


|              |                                                                                                                                                 |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([REZ_COLLECTOR_DIR](#dev7ced986ee))/Objects                                                                                                  |
| Description  | Specifies the directory in which compiled Resource Manager resources generated by `Rez` are stored before they are collected using `ResMerger`. |
| Name         | REZ_OBJECTS_DIR                                                                                                                                 |
| Type         | Path                                                                                                                                            |
| References   |                                                                                                                                                 |

<div id="devb7eb0dbaa" class="Subhead">

## Rez Prefix File (REZ_PREFIX_FILE)

Implicitly include the named file on the command line for each `Rez` file compiled. The path given should either be a project relative path or an absolute path.

</div>


|              |                 |
|--------------|-----------------|
| Category     | Language        |
| DefaultValue |                 |
| Name         | REZ_PREFIX_FILE |
| Type         | String          |
| References   |                 |

<div id="devb0bcafce6" class="Subhead">

## Preprocessor Defines (REZ_PREPROCESSOR_DEFINITIONS)

These strings will be defined when compiling resource manager resources.

</div>


|                 |                              |
|-----------------|------------------------------|
| Category        | Preprocessing                |
| CommandLineFlag | -define                      |
| DefaultValue    |                              |
| Name            | REZ_PREPROCESSOR_DEFINITIONS |
| Type            | StringList                   |
| References      |                              |

<div id="devec91c9109" class="Subhead">

## Preprocessor Undefines (REZ_PREPROCESSOR_UNDEFINITIONS)

These strings will be undefined when compiling resource manager resources.

</div>


|                 |                                |
|-----------------|--------------------------------|
| Category        | Preprocessing                  |
| CommandLineFlag | -undef                         |
| DefaultValue    |                                |
| Name            | REZ_PREPROCESSOR_UNDEFINITIONS |
| Type            | StringList                     |
| References      |                                |

<div id="devb77178aea" class="Subhead">

## Resolve Aliases (REZ_RESOLVE_ALIASES)

Enables aliases to be unresolved or conditionally resolved. The default is to resolve aliases always.

</div>


|                 |                     |
|-----------------|---------------------|
| Category        | ResourceGeneration  |
| CommandLineArgs |                     |
| `Always`        |                     |
| `Includes`      | -noResolve          |
|                 | output              |
| `Never`         | -noResolve          |
| `Outputs`       | -noResolve          |
|                 | include             |
| DefaultValue    | Always              |
| Name            | REZ_RESOLVE_ALIASES |
| Type            | Enumeration         |
| Values          | Always              |
|                 | Never               |
|                 | Includes            |
|                 | Outputs             |
| References      |                     |

<div id="dev045ce7156" class="Subhead">

## Read-only Resource Map (REZ_RESOURCE_MAP_READ_ONLY)

Enabling this option causes the resource map output to be read-only.

</div>


|                 |                            |
|-----------------|----------------------------|
| Category        | ResourceGeneration         |
| CommandLineFlag | -ro                        |
| DefaultValue    | NO                         |
| Name            | REZ_RESOURCE_MAP_READ_ONLY |
| Type            | Boolean                    |
| References      |                            |

<div id="dev265224def" class="Subhead">

## Rez Script Type (REZ_SCRIPT_TYPE)

Enables the recognition of a specific 2-byte character script identifier to use when compiling resource manager resources. This allows for 2-byte characters in strings to be handled as indivisible entities. The default language is Roman, which specifies 1-byte character sets.

</div>


|                 |                     |
|-----------------|---------------------|
| Category        | Language            |
| CommandLineArgs | -script             |
|                 | \$([value](#value)) |
| DefaultValue    | Roman               |
| Name            | REZ_SCRIPT_TYPE     |
| Type            | Enumeration         |
| Values          | Roman               |
|                 | Japanese            |
|                 | Korean              |
|                 | SimpChinese         |
|                 | TradChinese         |
| References      |                     |

<div id="dev547a452a8" class="Subhead">

## Rez Search Paths (REZ_SEARCH_PATHS)

This is a list of paths to search for files with resource manager resources. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted.

</div>


|              |                  |
|--------------|------------------|
| DefaultValue |                  |
| Name         | REZ_SEARCH_PATHS |
| Type         | PathList         |
| References   |                  |

<div id="dev7cedafd25" class="Subhead">

## Show Diagnostic Output (REZ_SHOW_DEBUG_OUTPUT)

Enabling this option causes version and progress information to be written when compiling resource manager resources.

</div>


|                 |                       |
|-----------------|-----------------------|
| Category        | Warnings              |
| CommandLineFlag | -progress             |
| DefaultValue    | NO                    |
| Name            | REZ_SHOW_DEBUG_OUTPUT |
| Type            | Boolean               |
| References      |                       |

<div id="dev809a3fe1e" class="Subhead">

## Suppress Type Redeclaration Warnings (REZ_SUPPRESS_REDECLARED_RESOURCE_TYPE_WARNINGS)

Enabling this option causes warnings about redeclared resource types to be suppressed.

</div>


|                 |                                                |
|-----------------|------------------------------------------------|
| Category        | Warnings                                       |
| CommandLineFlag | -rd                                            |
| DefaultValue    | NO                                             |
| Name            | REZ_SUPPRESS_REDECLARED_RESOURCE_TYPE_WARNINGS |
| Type            | Boolean                                        |
| References      |                                                |

<div id="dev454cbd652" class="Subhead">

## Analyze During 'Build' (RUN_CLANG_STATIC_ANALYZER)

Activating this setting will cause Xcode to run the `Clang` static analysis tool on qualifying source files during every build.

</div>


|              |                                             |
|--------------|---------------------------------------------|
| Category     | SAPolicy                                    |
| DefaultValue | NO                                          |
| Name         | RUN_CLANG_STATIC_ANALYZER                   |
| Type         | Boolean                                     |
| References   | [CLANG_STATIC_ANALYZER_MODE](#dev6e81753b1) |

<div id="deve737ec5ac" class="Subhead">

## Scan All Source Files for Includes (SCAN_ALL_SOURCE_FILES_FOR_INCLUDES)

Activating this setting will cause all source files to be scanned for includes (for example, of header files) when computing the dependency graph, in which case if an included file is changed then the including file will be rebuilt next time a target containing it is built. Normally only certain types of files, such as C-language source files, are scanned.

This setting is useful if your project contains files of unusual types, which are compiled using a custom build rule.

</div>


|              |                                    |
|--------------|------------------------------------|
| DefaultValue | NO                                 |
| Name         | SCAN_ALL_SOURCE_FILES_FOR_INCLUDES |
| Type         | Boolean                            |
| References   |                                    |

<div id="dev0b77ad9d1" class="Subhead">

## SCRIPTS_FOLDER_PATH

Specifies the directory that contains the product’s scripts.

</div>


|              |                                                              |
|--------------|--------------------------------------------------------------|
| DefaultValue |                                                              |
| Description  | Specifies the directory that contains the product’s scripts. |
| Name         | SCRIPTS_FOLDER_PATH                                          |
| Type         | Path                                                         |
| References   |                                                              |

<div id="devabcaadbaf" class="Subhead">

## Base SDK (SDKROOT)

The name or path of the base SDK being used during the build. The product will be built against the headers and libraries located inside the indicated SDK. This path will be prepended to all search paths, and will be passed through the environment to the compiler and linker. Additional SDKs can be specified in the [Additional SDKs (ADDITIONAL_SDKS)](#deva1a5b1b82) setting.

</div>


|                 |           |
|-----------------|-----------|
| CommandLineFlag | -isysroot |
| Name            | SDKROOT   |
| Type            | Path      |
| References      |           |

<div id="dev2c8a64fcd" class="Subhead">

## Symbol Ordering Flags (SECTORDER_FLAGS)

These flags are typically used to specify options for ordering symbols within segments, for example the `-sectorder` option to `ld`.

Generally you should not specify symbol ordering options in Debug or Development configurations, as this will make the linked binary less readable to the debugger. Use them only in Release or Deployment configurations.

</div>


|                  |                                         |
|------------------|-----------------------------------------|
| ConditionFlavors | arch                                    |
| DefaultValue     |                                         |
| Name             | SECTORDER_FLAGS                         |
| Type             | StringList                              |
| UIType           | String                                  |
| References       | [ALL_OTHER_LDFLAGS](#ALL_OTHER_LDFLAGS) |

<div id="dev5898a821a" class="Subhead">

## Separately Edit Symbols (SEPARATE_SYMBOL_EDIT)

Activating this setting when the linked product's symbols are to be edited will cause editing to occur via a separate invocation of `nmedit(1)`. Otherwise editing will occur during linking, if possible.

</div>


|              |                                          |
|--------------|------------------------------------------|
| DefaultValue | NO                                       |
| Name         | SEPARATE_SYMBOL_EDIT                     |
| Type         | Boolean                                  |
| References   | [EXPORTED_SYMBOLS_FILE](#dev8fda87f60)   |
|              | [UNEXPORTED_SYMBOLS_FILE](#devecf2a9cfe) |

<div id="devd7a9c1f37" class="Subhead">

## SHARED_FRAMEWORKS_FOLDER_PATH

Specifies the directory that contains the product’s shared frameworks.

</div>


|              |                                                                        |
|--------------|------------------------------------------------------------------------|
| DefaultValue |                                                                        |
| Description  | Specifies the directory that contains the product’s shared frameworks. |
| Name         | SHARED_FRAMEWORKS_FOLDER_PATH                                          |
| Type         | Path                                                                   |
| References   |                                                                        |

<div id="dev6c4858f44" class="Subhead">

## Precompiled Headers Cache Path (SHARED_PRECOMPS_DIR)

The path where precompiled prefix header files are placed during a build. Defaults to `$(OBJROOT)/SharedPrecompiledHeaders`. Using a common location allows precompiled headers to be shared between multiple projects.

</div>


|              |                                                       |
|--------------|-------------------------------------------------------|
| DefaultValue | \$([OBJROOT](#devad6c72289))/SharedPrecompiledHeaders |
| Name         | SHARED_PRECOMPS_DIR                                   |
| Type         | String                                                |
| References   |                                                       |

<div id="devfeb7a0695" class="Subhead">

## Skip Install (SKIP_INSTALL)

If enabled, don't install built products even if deployment locations are active.

</div>


|              |                                               |
|--------------|-----------------------------------------------|
| DefaultValue | NO                                            |
| Name         | SKIP_INSTALL                                  |
| Type         | Boolean                                       |
| References   | [LD_FINAL_OUTPUT_FILE](#LD_FINAL_OUTPUT_FILE) |

<div id="dev7fd11f2da" class="Subhead">

## SRCROOT

Identifies the directory containing the target’s source files.

</div>


|              |                                                                |
|--------------|----------------------------------------------------------------|
| DefaultValue | .                                                              |
| Description  | Identifies the directory containing the target’s source files. |
| Name         | SRCROOT                                                        |
| Type         | Path                                                           |
| References   | [CLANG_OPTIMIZATION_PROFILE_FILE](#dev7f935916c)               |
|              | [PROJECT_DIR](#PROJECT_DIR)                                    |
|              | [SOURCE_ROOT](#SOURCE_ROOT)                                    |

<div id="dev8d71dff90" class="Subhead">

## Strings File Output Encoding (STRINGS_FILE_OUTPUT_ENCODING)

Specify the encoding to be used for Strings files (by default, the output encoding will be 16-bit Unicode). The value can be either an `NSStringEncoding`, such as one of the numeric values recognized by `NSString`, or it can be an IANA character set name as understood by `CFString`. The operation will fail if the file cannot be converted to the specified encoding.

</div>


|              |                              |
|--------------|------------------------------|
| DefaultValue | UTF-16                       |
| Name         | STRINGS_FILE_OUTPUT_ENCODING |
| Type         | Enumeration                  |
| Values       | UTF-16                       |
|              | UTF-8                        |
|              | binary                       |
| References   |                              |

<div id="dev3eae06d3a" class="Subhead">

## Additional Strip Flags (STRIPFLAGS)

Additional flags to be passed when stripping the linked product of the build.

</div>


|              |            |
|--------------|------------|
| DefaultValue |            |
| Name         | STRIPFLAGS |
| Type         | StringList |
| UIType       | String     |
| References   |            |

<div id="dev5c0105d2a" class="Subhead">

## Strip Linked Product (STRIP_INSTALLED_PRODUCT)

If enabled, the linked product of the build will be stripped of symbols when performing deployment postprocessing.

</div>


|                  |                         |
|------------------|-------------------------|
| Basic            | YES                     |
| Category         | Deployment              |
| ConditionFlavors | sdk                     |
| DefaultValue     | YES                     |
| Name             | STRIP_INSTALLED_PRODUCT |
| Type             | Boolean                 |
| References       |                         |

<div id="dev88f083453" class="Subhead">

## Remove Text Metadata From PNG Files (STRIP_PNG_TEXT)

Metadata in the form of text chunks in PNG files will be removed to reduce their footprint on disk.

</div>


|                 |                                                                                                     |
|-----------------|-----------------------------------------------------------------------------------------------------|
| Category        | Packaging                                                                                           |
| CommandLineArgs |                                                                                                     |
| `NO`            |                                                                                                     |
| `YES`           | -strip-PNG-text                                                                                     |
| DefaultValue    | YES                                                                                                 |
| Description     | Metadata in the form of text chunks in PNG files will be removed to reduce their footprint on disk. |
| DisplayName     | Remove Text Metadata From PNG Files                                                                 |
| Name            | STRIP_PNG_TEXT                                                                                      |
| Type            | Boolean                                                                                             |
| References      |                                                                                                     |

<div id="dev06ba8729b" class="Subhead">

## Strip Style (STRIP_STYLE)

The level of symbol stripping to be performed on the linked product of the build. The default value is defined by the target's product type.

  - *All Symbols:* Completely strips the binary, removing the symbol table and relocation information. `all, -s`

  - *Non-Global Symbols:* Strips non-global symbols, but saves external symbols. `non-global, -x`

  - *Debugging Symbols:* Strips debugging symbols, but saves local and global symbols. `debugging, -S`

</div>


|                 |             |
|-----------------|-------------|
| CommandLineArgs |             |
| `all`           |             |
| `debugging`     | -S          |
| `non-global`    | -x          |
| DefaultValue    | all         |
| Name            | STRIP_STYLE |
| Type            | enum        |
| Values          | all         |
|                 | non-global  |
|                 | debugging   |
| References      |             |

<div id="devd2ce4822a" class="Subhead">

## Strip Swift Symbols (STRIP_SWIFT_SYMBOLS)

Adjust the level of symbol stripping specified by the STRIP_STYLE setting so that when the linked product of the build is stripped, all Swift symbols will be removed.

</div>


|              |                     |
|--------------|---------------------|
| Category     | Deployment          |
| DefaultValue | YES                 |
| Name         | STRIP_SWIFT_SYMBOLS |
| Type         | Boolean             |
| References   |                     |

<div id="dev7b3360dbd" class="Subhead">

## Supported Platforms (SUPPORTED_PLATFORMS)

The list of supported platforms from which a base SDK can be used. This setting is used if the product can be built for multiple platforms using different SDKs.

</div>


|              |                     |
|--------------|---------------------|
| DefaultValue |                     |
| Name         | SUPPORTED_PLATFORMS |
| Type         | StringList          |
| UIType       | supportedplatforms  |
| References   |                     |

<div id="dev8abad641c" class="Subhead">

## Supports Text-Based InstallAPI (SUPPORTS_TEXT_BASED_API)

Enable to indicate that the target supports `Text-Based InstallAPI`, which will enable its generation during `install` builds.

</div>


|                  |                                                                                                                                |
|------------------|--------------------------------------------------------------------------------------------------------------------------------|
| Category         | Text-Based API                                                                                                                 |
| ConditionFlavors | arch                                                                                                                           |
|                  | sdk                                                                                                                            |
| DefaultValue     | NO                                                                                                                             |
| Description      | Enable to indicate that the target supports `Text-Based InstallAPI`, which will enable its generation during `install` builds. |
| DisplayName      | Supports Text-Based InstallAPI                                                                                                 |
| Name             | SUPPORTS_TEXT_BASED_API                                                                                                        |
| Type             | Boolean                                                                                                                        |
| References       |                                                                                                                                |

<div id="dev924b7f276" class="Subhead">

## Active Compilation Conditions (SWIFT_ACTIVE_COMPILATION_CONDITIONS)

A list of compilation conditions to enable for conditional compilation expressions.

</div>


|                 |                                                                                     |
|-----------------|-------------------------------------------------------------------------------------|
| Category        | Custom Flags                                                                        |
| CommandLineArgs | -D\$([value](#value))                                                               |
| Description     | A list of compilation conditions to enable for conditional compilation expressions. |
| DisplayName     | Active Compilation Conditions                                                       |
| Name            | SWIFT_ACTIVE_COMPILATION_CONDITIONS                                                 |
| Type            | StringList                                                                          |
| References      |                                                                                     |

<div id="dev2e45e4899" class="Subhead">

## Compilation Mode (SWIFT_COMPILATION_MODE)

This setting controls the way the Swift files in a module are rebuilt.

  - *Incremental*: Only rebuild the Swift source files in the module that are out of date, running multiple compiler processes as needed.

  - *Whole Module*: Always rebuild all Swift source files in the module, in a single compiler process.

</div>


|                 |                                                                                                                                              |
|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| Category        | Code Generation                                                                                                                              |
| CommandLineArgs |                                                                                                                                              |
| `<<otherwise>>` |                                                                                                                                              |
| `wholemodule`   | -whole-module-optimization                                                                                                                   |
| Condition       | !\$([SWIFT_WHOLE_MODULE_OPTIMIZATION](#SWIFT_WHOLE_MODULE_OPTIMIZATION)) && \$([SWIFT_OPTIMIZATION_LEVEL](#dev076ec5661)) != '-Owholemodule' |
| DefaultValue    | singlefile                                                                                                                                   |
| DisplayName     | Compilation Mode                                                                                                                             |
| Name            | SWIFT_COMPILATION_MODE                                                                                                                       |
| Type            | Enumeration                                                                                                                                  |
| Values          | singlefile                                                                                                                                   |
|                 | wholemodule                                                                                                                                  |
| References      | [SWIFT_ENABLE_BATCH_MODE](#SWIFT_ENABLE_BATCH_MODE)                                                                                          |

<div id="deve1264c345" class="Subhead">

## Disable Safety Checks (SWIFT_DISABLE_SAFETY_CHECKS)

Disable runtime safety checks when optimizing.

</div>


|                 |                                                |
|-----------------|------------------------------------------------|
| Category        | Code Generation                                |
| CommandLineFlag | -remove-runtime-asserts                        |
| DefaultValue    | NO                                             |
| Description     | Disable runtime safety checks when optimizing. |
| DisplayName     | Disable Safety Checks                          |
| Name            | SWIFT_DISABLE_SAFETY_CHECKS                    |
| Type            | Boolean                                        |
| References      |                                                |

<div id="deva2d710b82" class="Subhead">

## Exclusive Access to Memory (SWIFT_ENFORCE_EXCLUSIVE_ACCESS)

Enforce exclusive access to memory

</div>


|                 |                                                                                                                           |
|-----------------|---------------------------------------------------------------------------------------------------------------------------|
| Category        | Code Generation                                                                                                           |
| CommandLineArgs |                                                                                                                           |
| `<<otherwise>>` | -enforce-exclusivity=\$([value](#value))                                                                                  |
| `compile-time`  | -enforce-exclusivity=unchecked                                                                                            |
| `debug-only`    |                                                                                                                           |
| `full`          |                                                                                                                           |
| `none`          | -enforce-exclusivity=none                                                                                                 |
| `off`           | -enforce-exclusivity=unchecked                                                                                            |
| `on`            | -enforce-exclusivity=checked                                                                                              |
| DefaultValue    | on                                                                                                                        |
| Description     | Enforce exclusive access at run-time.                                                                                     |
| DisplayName     | Exclusive Access to Memory                                                                                                |
| Name            | SWIFT_ENFORCE_EXCLUSIVE_ACCESS                                                                                            |
| Type            | Enumeration                                                                                                               |
| Values          | on                                                                                                                        |
|                 | debug-only                                                                                                                |
|                 | off                                                                                                                       |
| References      | [__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_DEBUG](#__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_DEBUG)     |
|                 | [__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_RELEASE](#__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_RELEASE) |

<div id="dev8f8e9cc00" class="Subhead">

## Import Paths (SWIFT_INCLUDE_PATHS)

A list of paths to be searched by the Swift compiler for additional Swift modules.

</div>


|                                    |                                                                                    |
|------------------------------------|------------------------------------------------------------------------------------|
| Category                           | Search Paths                                                                       |
| Description                        | A list of paths to be searched by the Swift compiler for additional Swift modules. |
| DisplayName                        | Import Paths                                                                       |
| FlattenRecursiveSearchPathsInValue | Yes                                                                                |
| Name                               | SWIFT_INCLUDE_PATHS                                                                |
| Type                               | PathList                                                                           |
| References                         |                                                                                    |

<div id="devcc7cfd3b7" class="Subhead">

## Install Objective-C Compatibility Header (SWIFT_INSTALL_OBJC_HEADER)

For frameworks, install the Objective-C compatibility header describing bridged Swift classes into the [Public Headers Folder Path (PUBLIC_HEADERS_FOLDER_PATH)](#devdbb795497) so they may be accessed from Objective-C code using the framework. Defaults to `YES`.

</div>


|              |                                                                                                                                                                                                                           |
|--------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | General                                                                                                                                                                                                                   |
| DefaultValue | YES                                                                                                                                                                                                                       |
| Description  | For frameworks, install the Objective-C compatibility header describing bridged Swift classes into the `PUBLIC_HEADERS_FOLDER_PATH` so they may be accessed from Objective-C code using the framework. Defaults to `YES`. |
| DisplayName  | Install Objective-C Compatibility Header                                                                                                                                                                                  |
| Name         | SWIFT_INSTALL_OBJC_HEADER                                                                                                                                                                                                 |
| Type         | Boolean                                                                                                                                                                                                                   |
| References   |                                                                                                                                                                                                                           |

<div id="devd529e464e" class="Subhead">

## Objective-C Bridging Header (SWIFT_OBJC_BRIDGING_HEADER)

Path to the header defining the Objective-C interfaces to be exposed in Swift.

</div>


|              |                                                                                |
|--------------|--------------------------------------------------------------------------------|
| Category     | General                                                                        |
| DefaultValue |                                                                                |
| Description  | Path to the header defining the Objective-C interfaces to be exposed in Swift. |
| DisplayName  | Objective-C Bridging Header                                                    |
| Name         | SWIFT_OBJC_BRIDGING_HEADER                                                     |
| Type         | String                                                                         |
| References   |                                                                                |

<div id="dev977f5e406" class="Subhead">

## Objective-C Generated Interface Header Name (SWIFT_OBJC_INTERFACE_HEADER_NAME)

Name to use for the header that is generated by the Swift compiler for use in `#import` statements in Objective-C.

</div>


|              |                                                                                                                    |
|--------------|--------------------------------------------------------------------------------------------------------------------|
| Category     | General                                                                                                            |
| DefaultValue | \$([SWIFT_MODULE_NAME](#SWIFT_MODULE_NAME))-Swift.h                                                                |
| Description  | Name to use for the header that is generated by the Swift compiler for use in `#import` statements in Objective-C. |
| DisplayName  | Objective-C Generated Interface Header Name                                                                        |
| Name         | SWIFT_OBJC_INTERFACE_HEADER_NAME                                                                                   |
| Type         | String                                                                                                             |
| References   |                                                                                                                    |

<div id="dev076ec5661" class="Subhead">

## Optimization Level (SWIFT_OPTIMIZATION_LEVEL)

  - *None:* Compile without any optimization. `-Onone`

  - *Optimize for Speed:* `-O`

  - *Optimize for Size:* `-Osize`

  - *Whole Module Optimization:* `-O -whole-module-optimization`

</div>


|                 |                                                                                                                           |
|-----------------|---------------------------------------------------------------------------------------------------------------------------|
| Category        | Code Generation                                                                                                           |
| CommandLineArgs |                                                                                                                           |
| `-Owholemodule` | -O                                                                                                                        |
|                 | -whole-module-optimization                                                                                                |
| `<<otherwise>>` | \$([value](#value))                                                                                                       |
| DefaultValue    | -O                                                                                                                        |
| DisplayName     | Optimization Level                                                                                                        |
| Name            | SWIFT_OPTIMIZATION_LEVEL                                                                                                  |
| Type            | Enumeration                                                                                                               |
| Values          | -Onone                                                                                                                    |
|                 | -O                                                                                                                        |
|                 | -Osize                                                                                                                    |
| References      | [SWIFT_COMPILATION_MODE](#dev2e45e4899)                                                                                   |
|                 | [SWIFT_ENABLE_BATCH_MODE](#SWIFT_ENABLE_BATCH_MODE)                                                                       |
|                 | [SWIFT_INDEX_STORE_ENABLE](#SWIFT_INDEX_STORE_ENABLE)                                                                     |
|                 | [__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_DEBUG](#__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_DEBUG)     |
|                 | [__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_RELEASE](#__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_RELEASE) |

<div id="dev86c95f3fa" class="Subhead">

## Precompile Bridging Header (SWIFT_PRECOMPILE_BRIDGING_HEADER)

Generate a precompiled header for the Objective-C bridging header, if used, in order to reduce overall build times.

</div>


|                 |                                                                                                                     |
|-----------------|---------------------------------------------------------------------------------------------------------------------|
| Category        | General                                                                                                             |
| CommandLineArgs |                                                                                                                     |
| `NO`            | -disable-bridging-pch                                                                                               |
| `YES`           |                                                                                                                     |
| DefaultValue    | YES                                                                                                                 |
| Description     | Generate a precompiled header for the Objective-C bridging header, if used, in order to reduce overall build times. |
| DisplayName     | Precompile Bridging Header                                                                                          |
| Name            | SWIFT_PRECOMPILE_BRIDGING_HEADER                                                                                    |
| Type            | Boolean                                                                                                             |
| References      |                                                                                                                     |

<div id="dev201cc26ce" class="Subhead">

## Reflection Metadata Level (SWIFT_REFLECTION_METADATA_LEVEL)

This setting controls the level of reflection metadata the Swift compiler emits.

  - *All:* Type information about stored properties of Swift structs and classes, Swift enum cases, and their names, are emitted into the binary for reflection and analysis in the Memory Graph Debugger.

  - *Without Names:* Only type information about stored properties and cases are emitted into the binary, with their names omitted. `-disable-reflection-names`

  - *None:* No reflection metadata is emitted into the binary. Accuracy of detecting memory issues involving Swift types in the Memory Graph Debugger will be degraded and reflection in Swift code may not be able to discover children of types, such as properties and enum cases. `-disable-reflection-metadata`

</div>


|                 |                                 |
|-----------------|---------------------------------|
| Category        | General                         |
| CommandLineArgs |                                 |
| `all`           |                                 |
| `none`          | -Xfrontend                      |
|                 | -disable-reflection-metadata    |
| `without-names` | -Xfrontend                      |
|                 | -disable-reflection-names       |
| DefaultValue    | all                             |
| DisplayName     | Reflection Metadata Level       |
| Name            | SWIFT_REFLECTION_METADATA_LEVEL |
| Type            | Enumeration                     |
| Values          | all                             |
|                 | without-names                   |
|                 | none                            |
| References      |                                 |

<div id="devceefcb6a6" class="Subhead">

## Suppress Warnings (SWIFT_SUPPRESS_WARNINGS)

Don't emit any warnings.

</div>


|                 |                          |
|-----------------|--------------------------|
| Category        | Warnings Policies        |
| CommandLineArgs |                          |
| `NO`            |                          |
| `YES`           | -suppress-warnings       |
| DefaultValue    | NO                       |
| Description     | Don't emit any warnings. |
| DisplayName     | Suppress Warnings        |
| Name            | SWIFT_SUPPRESS_WARNINGS  |
| Type            | Boolean                  |
| References      |                          |

<div id="dev2b069d6b8" class="Subhead">

## Swift 3 @objc Inference (SWIFT_SWIFT3_OBJC_INFERENCE)

Control how the Swift compiler infers @objc for declarations.

</div>


|                 |                                                               |
|-----------------|---------------------------------------------------------------|
| Category        | Code Generation                                               |
| CommandLineArgs |                                                               |
| `Off`           | -Xfrontend                                                    |
|                 | -disable-swift3-objc-inference                                |
| `On`            | -Xfrontend                                                    |
|                 | -enable-swift3-objc-inference                                 |
|                 | -Xfrontend                                                    |
|                 | -warn-swift3-objc-inference-minimal                           |
| DefaultValue    | Default                                                       |
| Description     | Control how the Swift compiler infers @objc for declarations. |
| DisplayName     | Swift 3 @objc Inference                                       |
| Name            | SWIFT_SWIFT3_OBJC_INFERENCE                                   |
| Type            | Enumeration                                                   |
| Values          | Default                                                       |
|                 | On                                                            |
|                 | Off                                                           |
| References      |                                                               |

<div id="deva8e6ae32e" class="Subhead">

## Treat Warnings as Errors (SWIFT_TREAT_WARNINGS_AS_ERRORS)

Treat all warnings as errors.

</div>


|                 |                                |
|-----------------|--------------------------------|
| Category        | Warnings Policies              |
| CommandLineArgs |                                |
| `NO`            |                                |
| `YES`           | -warnings-as-errors            |
| DefaultValue    | NO                             |
| Description     | Treat all warnings as errors.  |
| DisplayName     | Treat Warnings as Errors       |
| Name            | SWIFT_TREAT_WARNINGS_AS_ERRORS |
| Type            | Boolean                        |
| References      |                                |

<div id="dev181ede51f" class="Subhead">

## Build Products Path (SYMROOT)

The path at which all products will be placed when performing a build. Typically this path is not set per target, but is set per-project or per-user. By default, this is set to `$(PROJECT_DIR)/build`.

</div>


|              |                           |
|--------------|---------------------------|
| Category     | Build Locations           |
| DefaultValue | build                     |
| Name         | SYMROOT                   |
| Type         | Path                      |
| References   | [BUILD_DIR](#BUILD_DIR)   |
|              | [BUILD_ROOT](#BUILD_ROOT) |
|              | [LOCSYMROOT](#LOCSYMROOT) |
|              | [OBJROOT](#devad6c72289)  |

<div id="dev9fa1aee62" class="Subhead">

## System Framework Search Paths (SYSTEM_FRAMEWORK_SEARCH_PATHS)

This is a list of paths to folders containing system frameworks to be searched by the compiler for both included or imported header files when compiling C, Objective-C, C++, or Objective-C++, and by the linker for frameworks used by the product. The order is from highest to lowest precedence. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. This setting is very similar to "Framework Search Paths", except that the search paths are passed to the compiler in a way that suppresses most warnings for headers found in system search paths. If the compiler doesn't support the concept of system framework search paths, then the search paths are appended to any existing framework search paths defined in "Framework Search Paths".

</div>


|                  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category         | Search Paths                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ConditionFlavors | arch                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|                  | sdk                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| DefaultValue     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Description      | This is a list of paths to folders containing system frameworks to be searched by the compiler for both included or imported header files when compiling C, Objective-C, C++, or Objective-C++, and by the linker for frameworks used by the product. The order is from highest to lowest precedence. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. This setting is very similar to "Framework Search Paths", except that the search paths are passed to the compiler in a way that suppresses most warnings for headers found in system search paths. If the compiler doesn't support the concept of system framework search paths, then the search paths are appended to any existing framework search paths defined in "Framework Search Paths". |
| DisplayName      | System Framework Search Paths                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Name             | SYSTEM_FRAMEWORK_SEARCH_PATHS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Type             | PathList                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| References       |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |

<div id="devd69bd5ce8" class="Subhead">

## System Header Search Paths (SYSTEM_HEADER_SEARCH_PATHS)

This is a list of paths to folders to be searched by the compiler for included or imported system header files when compiling C, Objective-C, C++, or Objective-C++. The order is from highest to lowest precedence. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. This setting is very similar to "Header Search Paths", except that headers are passed to the compiler in a way that suppresses most warnings for headers found in system search paths. If the compiler doesn't support the concept of system header search paths, then the search paths are appended to any existing header search paths defined in "Header Search Paths".

</div>


|                  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category         | Search Paths                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ConditionFlavors | arch                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                  | sdk                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| DefaultValue     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Description      | This is a list of paths to folders to be searched by the compiler for included or imported system header files when compiling C, Objective-C, C++, or Objective-C++. The order is from highest to lowest precedence. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. This setting is very similar to "Header Search Paths", except that headers are passed to the compiler in a way that suppresses most warnings for headers found in system search paths. If the compiler doesn't support the concept of system header search paths, then the search paths are appended to any existing header search paths defined in "Header Search Paths". |
| DisplayName      | System Header Search Paths                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Name             | SYSTEM_HEADER_SEARCH_PATHS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Type             | PathList                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| References       |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |

<div id="dev9e494c95e" class="Subhead">

## Text-Based InstallAPI Verification Mode (TAPI_VERIFY_MODE)

Selects the level of warnings and errors to report when building `Text-Based InstallAPI`.

</div>


|              |                                                                                           |
|--------------|-------------------------------------------------------------------------------------------|
| Category     | Text-Based API                                                                            |
| DefaultValue | ErrorsOnly                                                                                |
| Description  | Selects the level of warnings and errors to report when building `Text-Based InstallAPI`. |
| DisplayName  | Text-Based InstallAPI Verification Mode                                                   |
| Name         | TAPI_VERIFY_MODE                                                                          |
| Type         | Enumeration                                                                               |
| Values       | {"DisplayName"=>"Errors Only", "Value"=>"ErrorsOnly"}                                     |
|              | {"DisplayName"=>"Errors and Warnings", "Value"=>"ErrorsAndWarnings"}                      |
|              | {"DisplayName"=>"Pedantic", "Value"=>"Pedantic"}                                          |
| References   |                                                                                           |

<div id="dev2f2f7890b" class="Subhead">

## Targeted Device Family (TARGETED_DEVICE_FAMILY)

The build system uses the selected device to set the correct value for the `UIDeviceFamily` key it adds to the target's `Info.plist` file. This also drives the --target-device flag to actool, which determines the idioms selected during catalog compilation for iOS platforms.

</div>




<div id="dev256404b3f" class="Subhead">

## TARGET_BUILD_DIR

Identifies the root of the directory hierarchy that contains the product’s files (no intermediate build files). Run Script build phases that operate on product files of the target that defines them should use the value of this build setting, but Run Script build phases that operate on product files of other targets should use [BUILT_PRODUCTS_DIR](#devffde5700e) instead.

</div>


|              |                                                                                                                                                                                                                                                                                                                                                                       |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([CONFIGURATION_BUILD_DIR](#dev1eb1f6acb))\$([TARGET_BUILD_SUBPATH](#TARGET_BUILD_SUBPATH))                                                                                                                                                                                                                                                                         |
| Description  | Identifies the root of the directory hierarchy that contains the product’s files (no intermediate build files). Run Script build phases that operate on product files of the target that defines them should use the value of this build setting, but Run Script build phases that operate on product files of other targets should use `BUILT_PRODUCTS_DIR` instead. |
| Name         | TARGET_BUILD_DIR                                                                                                                                                                                                                                                                                                                                                      |
| Type         | Path                                                                                                                                                                                                                                                                                                                                                                  |
| References   | [CLANG_MIGRATOR_PUBLIC_HEADERS_ONLY](#deva7fd4dc2a)                                                                                                                                                                                                                                                                                                                   |
|              | [CODESIGNING_FOLDER_PATH](#CODESIGNING_FOLDER_PATH)                                                                                                                                                                                                                                                                                                                   |
|              | [METAL_LIBRARY_OUTPUT_DIR](#METAL_LIBRARY_OUTPUT_DIR)                                                                                                                                                                                                                                                                                                                 |

<div id="dev170be206f" class="Subhead">

## Target Name (TARGET_NAME)

The name of the current target.

</div>


|              |                                  |
|--------------|----------------------------------|
| DefaultValue |                                  |
| Description  | The name of the current target.  |
| DisplayName  | Target Name                      |
| Name         | TARGET_NAME                      |
| Type         | String                           |
| References   | [TARGET_TEMP_DIR](#dev4ad1824fb) |

<div id="dev4ad1824fb" class="Subhead">

## TARGET_TEMP_DIR

Identifies the directory containing the target’s intermediate build files. Run Script build phases should place intermediate files at the location indicated by [DERIVED_FILE_DIR](#devcdbd943f2), not the directory identified by this build setting.

</div>


|              |                                                                                                                                                                                                                                         |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([CONFIGURATION_TEMP_DIR](#devdb4863c50))/\$([TARGET_NAME](#dev170be206f)).build                                                                                                                                                      |
| Description  | Identifies the directory containing the target’s intermediate build files. Run Script build phases should place intermediate files at the location indicated by `DERIVED_FILE_DIR`, not the directory identified by this build setting. |
| Name         | TARGET_TEMP_DIR                                                                                                                                                                                                                         |
| Type         | Path                                                                                                                                                                                                                                    |
| References   | [CLASS_FILE_DIR](#CLASS_FILE_DIR)                                                                                                                                                                                                       |
|              | [COREML_COMPILER_INFOPLIST_CONTENT_FILE](#COREML_COMPILER_INFOPLIST_CONTENT_FILE)                                                                                                                                                       |
|              | [DERIVED_FILE_DIR](#devcdbd943f2)                                                                                                                                                                                                       |
|              | [FIXED_FILES_DIR](#FIXED_FILES_DIR)                                                                                                                                                                                                     |
|              | [LD_MAP_FILE_PATH](#dev0f5aa9fe1)                                                                                                                                                                                                       |
|              | [MTLCOMPILER_DEPENDENCY_INFO_FILE](#MTLCOMPILER_DEPENDENCY_INFO_FILE)                                                                                                                                                                   |
|              | [MTLCOMPILER_OUTPUT_FILE](#MTLCOMPILER_OUTPUT_FILE)                                                                                                                                                                                     |
|              | [OBJECT_FILE_DIR](#devddf692c48)                                                                                                                                                                                                        |
|              | [PRECOMP_DESTINATION_DIR](#PRECOMP_DESTINATION_DIR)                                                                                                                                                                                     |
|              | [REZ_COLLECTOR_DIR](#dev7ced986ee)                                                                                                                                                                                                      |
|              | [TEMP_DIR](#TEMP_DIR)                                                                                                                                                                                                                   |
|              | [TEMP_FILE_DIR](#TEMP_FILE_DIR)                                                                                                                                                                                                         |

<div id="devfa244e355" class="Subhead">

## Test Host (TEST_HOST)

Path to the executable into which a bundle of tests is injected. Only specify this setting if testing an application or other executable.

</div>


|              |           |
|--------------|-----------|
| DefaultValue |           |
| Name         | TEST_HOST |
| Type         | String    |
| References   |           |

<div id="devb3530edd3" class="Subhead">

## Treat missing baselines as test failures (TREAT_MISSING_BASELINES_AS_TEST_FAILURES)

When running tests that measure performance via `XCTestCase`, report missing baselines as test failures.

</div>


|              |                                          |
|--------------|------------------------------------------|
| DefaultValue | NO                                       |
| Name         | TREAT_MISSING_BASELINES_AS_TEST_FAILURES |
| Type         | Boolean                                  |
| References   |                                          |

<div id="devecf2a9cfe" class="Subhead">

## Unexported Symbols File (UNEXPORTED_SYMBOLS_FILE)

A project-relative path to a file that lists the symbols not to export. See `ld -exported_symbols_list` for details on exporting symbols.

</div>


|                  |                         |
|------------------|-------------------------|
| ConditionFlavors | arch                    |
|                  | sdk                     |
| DefaultValue     |                         |
| Name             | UNEXPORTED_SYMBOLS_FILE |
| Type             | String                  |
| References       |                         |

<div id="deva946e3ce6" class="Subhead">

## UNLOCALIZED_RESOURCES_FOLDER_PATH

Specifies the directory that contains the product’s unlocalized resources.

</div>


|              |                                                                            |
|--------------|----------------------------------------------------------------------------|
| DefaultValue |                                                                            |
| Description  | Specifies the directory that contains the product’s unlocalized resources. |
| Name         | UNLOCALIZED_RESOURCES_FOLDER_PATH                                          |
| Type         | Path                                                                       |
| References   | [METAL_LIBRARY_OUTPUT_DIR](#METAL_LIBRARY_OUTPUT_DIR)                      |

<div id="deved642222b" class="Subhead">

## User Header Search Paths (USER_HEADER_SEARCH_PATHS)

This is a list of paths to folders to be searched by the compiler for included or imported user header files (those headers listed in quotes) when compiling C, Objective-C, C++, or Objective-C++. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. See [Always Search User Paths (Deprecated) (ALWAYS_SEARCH_USER_PATHS)](#devc34d7d3e9) for more details on how this setting is used. If the compiler doesn't support the concept of user headers, then the search paths are prepended to the any existing header search paths defined in [Header Search Paths (HEADER_SEARCH_PATHS)](#dev3c9f85d97).

</div>


|                  |                          |
|------------------|--------------------------|
| ConditionFlavors | arch                     |
| DefaultValue     |                          |
| Name             | USER_HEADER_SEARCH_PATHS |
| Type             | PathList                 |
| References       |                          |

<div id="dev4e24a48e3" class="Subhead">

## Use Header Maps (USE_HEADERMAP)

Enable the use of *Header Maps*, which provide the compiler with a mapping from textual header names to their locations, bypassing the normal compiler header search path mechanisms. This allows source code to include headers from various locations in the file system without needing to update the header search path build settings.

</div>


|              |               |
|--------------|---------------|
| DefaultValue | YES           |
| Name         | USE_HEADERMAP |
| Type         | Boolean       |
| References   |               |

<div id="dev14e158c81" class="Subhead">

## Validate Built Product (VALIDATE_PRODUCT)

If enabled, perform validation checks on the product as part of the build process.

</div>


|              |                  |
|--------------|------------------|
| Category     | BuildOptions     |
| DefaultValue | NO               |
| Name         | VALIDATE_PRODUCT |
| Type         | Boolean          |
| References   |                  |

<div id="dev58dadeac6" class="Subhead">

## Valid Architectures (VALID_ARCHS)

A space-separated list of architectures for which the target should actually be built. For each target, this is intersected with the list specified in [Architectures (ARCHS)](#devf0a9d5aca), and the resulting set is built. This allows individual targets to opt out of building for particular architectures. If the resulting set of architectures is empty, no executable will be produced.

</div>


|                  |               |
|------------------|---------------|
| Category         | Architectures |
| ConditionFlavors | sdk           |
| Name             | VALID_ARCHS   |
| Type             | StringList    |
| References       |               |

<div id="deva9a7f3613" class="Subhead">

## VERBOSE_PBXCP

Specifies whether the target’s Copy Files build phases generate additional information when copying files.

</div>


|              |                                                                                                            |
|--------------|------------------------------------------------------------------------------------------------------------|
| DefaultValue | NO                                                                                                         |
| Description  | Specifies whether the target’s Copy Files build phases generate additional information when copying files. |
| Name         | VERBOSE_PBXCP                                                                                              |
| Type         | Boolean                                                                                                    |
| References   |                                                                                                            |

<div id="devae6b365a4" class="Subhead">

## Versioning System (VERSIONING_SYSTEM)

Selects the process used for version-stamping generated files.

  - *None:* Use no versioning system.

  - *Apple Generic:* Use the current project version setting. `apple-generic`

</div>


|              |                   |
|--------------|-------------------|
| DefaultValue |                   |
| Name         | VERSIONING_SYSTEM |
| Type         | enum              |
| Values       |                   |
|              | apple-generic     |
| References   |                   |

<div id="devf83b76fe0" class="Subhead">

## Versioning Username (VERSION_INFO_BUILDER)

This defines a reference to the user performing a build to be included in the generated Apple Generic Versioning stub. Defaults to the value of the `USER` environment variable.

</div>


|              |                      |
|--------------|----------------------|
| DefaultValue |                      |
| Name         | VERSION_INFO_BUILDER |
| Type         | String               |
| References   |                      |

<div id="devb44606896" class="Subhead">

## Generated Versioning Variables (VERSION_INFO_EXPORT_DECL)

This defines a prefix string for the version info symbol declaration in the generated Apple Generic Versioning stub. This can be used, for example, to add an optional `export` keyword to the version symbol declaration. This should rarely be changed.

</div>


|              |                          |
|--------------|--------------------------|
| DefaultValue |                          |
| Name         | VERSION_INFO_EXPORT_DECL |
| Type         | String                   |
| References   |                          |

<div id="dev1d2591e03" class="Subhead">

## Generated Versioning Source Filename (VERSION_INFO_FILE)

Used to specify a name for the source file that will be generated by Apple Generic Versioning and compiled into your product. By default, this is set to `$(PRODUCT_NAME)_vers.c`.

</div>


|              |                   |
|--------------|-------------------|
| DefaultValue |                   |
| Name         | VERSION_INFO_FILE |
| Type         | String            |
| References   |                   |

<div id="dev9db9be19d" class="Subhead">

## Versioning Name Prefix (VERSION_INFO_PREFIX)

Used as a prefix for the name of the version info symbol in the generated versioning source file. If you prefix your exported symbols you will probably want to set this to the same prefix.

</div>


|              |                     |
|--------------|---------------------|
| DefaultValue |                     |
| Name         | VERSION_INFO_PREFIX |
| Type         | String              |
| References   |                     |

<div id="dev7e0fde120" class="Subhead">

## Versioning Name Suffix (VERSION_INFO_SUFFIX)

Used as a suffix for the name of the version info symbol in the generated versioning source file. This is rarely used.

</div>


|              |                     |
|--------------|---------------------|
| DefaultValue |                     |
| Name         | VERSION_INFO_SUFFIX |
| Type         | String              |
| References   |                     |

<div id="dev02cdee895" class="Subhead">

## Other Warning Flags (WARNING_CFLAGS)

Space-separated list of additional warning flags to pass to the compiler. Use this setting if Xcode does not already provide UI for a particular compiler warning flag.

</div>


|              |                |
|--------------|----------------|
| Category     | CustomFlags    |
| DefaultValue |                |
| Name         | WARNING_CFLAGS |
| Type         | StringList     |
| References   |                |

<div id="dev29996e2b6" class="Subhead">

## Warning Linker Flags (WARNING_LDFLAGS)

These flags are passed with linker invocations, and by default give the `-no_arch_warnings` flag to the linker to avoid many warnings being generated during multi-architecture builds.

</div>


|                  |                 |
|------------------|-----------------|
| ConditionFlavors | arch            |
| DefaultValue     |                 |
| Name             | WARNING_LDFLAGS |
| Type             | StringList      |
| UIType           | String          |
| References       |                 |

<div id="dev819ba7210" class="Subhead">

## Wrapper Extension (WRAPPER_EXTENSION)

The extension used for product wrappers, which has a default value based on the product type.

</div>


|              |                   |
|--------------|-------------------|
| DefaultValue |                   |
| Name         | WRAPPER_EXTENSION |
| Type         | String            |
| References   |                   |

<div id="dev87ea0d142" class="Subhead">

## WRAPPER_NAME

Specifies the filename, including the appropriate extension, of the product bundle.

</div>


|              |                                                                                     |
|--------------|-------------------------------------------------------------------------------------|
| DefaultValue |                                                                                     |
| Description  | Specifies the filename, including the appropriate extension, of the product bundle. |
| Name         | WRAPPER_NAME                                                                        |
| Type         | String                                                                              |
| References   |                                                                                     |

<div id="dev62ccadb47" class="Subhead">

## WRAPPER_SUFFIX

Specifies the suffix of the product bundle name, including the character that separates the extension from the rest of the bundle name.

</div>


|              |                                                                                                                                         |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue |                                                                                                                                         |
| Description  | Specifies the suffix of the product bundle name, including the character that separates the extension from the rest of the bundle name. |
| Name         | WRAPPER_SUFFIX                                                                                                                          |
| Type         | String                                                                                                                                  |
| References   |                                                                                                                                         |

<div id="devda64a6062" class="Subhead">

## Append Plug-in Data (XCODE_PLUGINCOMPILER_APPEND)

Append compiled plug-in data to existing plug-in data, instead of overwriting it.

</div>




<div id="devf8c5351d5" class="Subhead">

## Copy Original Plug-in Data (XCODE_PLUGINCOMPILER_COPY_ORIGINAL)

Copy original (uncompiled) plug-in data to output alongside compiled plug-in data.

</div>




<div id="dev99c362fc4" class="Subhead">

## Include Extension XML (XCODE_PLUGINCOMPILER_INCLUDE_EXTENSION_XML)

Include extension XML data in the resulting xcplugindata files.

</div>




<div id="dev7a4548dbd" class="Subhead">

## Plug-in Data Format (XCODE_PLUGINCOMPILER_OUTPUT_FORMAT)

The property list format, binary or XML, to use for the resulting xcplugindata file.

</div>




<div id="devfa8b9a2d5" class="Subhead">

## Plug-in Maximum Developer Tools Version (XCODE_PLUGINCOMPILER_TOOLS_VERSION_MAX)

Latest version of Developer Tools on which this plug-in will be used.

</div>




<div id="dev9669b8b13" class="Subhead">

## Plug-in Minimum Developer Tools Version (XCODE_PLUGINCOMPILER_TOOLS_VERSION_MIN)

Earliest version of Developer Tools on which this plug-in will be used.

</div>




<div id="dev71955b427" class="Subhead">

## Other Yacc Flags (YACCFLAGS)

Space-separated list of additional flags to pass to `yacc`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a `yacc` flag.

</div>


|              |            |
|--------------|------------|
| DefaultValue |            |
| Name         | YACCFLAGS  |
| Type         | StringList |
| References   |            |

<div id="devc5f9de1d7" class="Subhead">

## Generated File Stem (YACC_GENERATED_FILE_STEM)

The file stem to use for the files generated by `yacc`. The files will be named `<stem>.tab.c` and `<stem>.tab.h` based on the value of this setting. The Standard (`y`) option will cause all `yacc` source files in the same target to produce the same output file, and it is not recommended for targets containing multiple `yacc` source files.

</div>


|              |                          |
|--------------|--------------------------|
| Category     | BuildOptions             |
| DefaultValue | Standard                 |
| Name         | YACC_GENERATED_FILE_STEM |
| Type         | enum                     |
| Values       | Standard                 |
|              | InputFileStem            |
| References   |                          |

<div id="dev0dc5f3400" class="Subhead">

## Generate Debugging Directives (YACC_GENERATE_DEBUGGING_DIRECTIVES)

Enabling this option changes the preprocessor directives generated by `yacc` so that debugging statements will be incorporated in the compiled code.

</div>


|                 |                                    |
|-----------------|------------------------------------|
| Category        | BuildOptions                       |
| CommandLineArgs |                                    |
| `NO`            |                                    |
| `YES`           | -t                                 |
| DefaultValue    | NO                                 |
| Name            | YACC_GENERATE_DEBUGGING_DIRECTIVES |
| Type            | Boolean                            |
| References      |                                    |

<div id="devb874c9914" class="Subhead">

## Insert #line Directives (YACC_INSERT_LINE_DIRECTIVES)

Enabling this option causes `yacc` to insert the `#line` directives in the generated code. The `#line` directives let the C compiler relate errors in the generated code to the user's original code. If this option is disabled, `#line` directives specified by the user in the source file will still be retained.

</div>



|                 |                             |
|-----------------|-----------------------------|
| Category        | BuildOptions                |
| CommandLineArgs |                             |
| `NO`            | -l                          |
| `YES`           |                             |
| DefaultValue    | YES                         |
| Name            | YACC_INSERT_LINE_DIRECTIVES |
| Type            | Boolean                     |
| References      |                             |


# Hidden Build Settings

<div id="CLANG_TARGET_TRIPLE_ARCHS" class="Subhead">

## 🔐 CLANG_TARGET_TRIPLE_ARCHS

|                 |                                                                                                                                                                                                                |
|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs | -target                                                                                                                                                                                                        |
|                 | \$([value](#value))-\$([LLVM_TARGET_TRIPLE_VENDOR](#LLVM_TARGET_TRIPLE_VENDOR))-\$([LLVM_TARGET_TRIPLE_OS_VERSION](#LLVM_TARGET_TRIPLE_OS_VERSION))\$([LLVM_TARGET_TRIPLE_SUFFIX](#LLVM_TARGET_TRIPLE_SUFFIX)) |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) == YES                                                                                                                             |
| DefaultValue    | \$([CURRENT_ARCH](#dev23cfef338))                                                                                                                                                                              |
| Name            | CLANG_TARGET_TRIPLE_ARCHS                                                                                                                                                                                      |
| Type            | StringList                                                                                                                                                                                                     |
| References      |                                                                                                                                                                                                                |

</div>

<div id="CLANG_TARGET_TRIPLE_VARIANTS" class="Subhead">

## 🔐 CLANG_TARGET_TRIPLE_VARIANTS

|                  |                                                                                    |
|------------------|------------------------------------------------------------------------------------|
| CommandLineFlag  | -target-variant                                                                    |
| Condition        | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) == YES |
| ConditionFlavors | arch                                                                               |
| Name             | CLANG_TARGET_TRIPLE_VARIANTS                                                       |
| Type             | StringList                                                                         |
| References       |                                                                                    |

</div>

<div id="arch" class="Subhead">

## 🔐 arch

|                 |                                                                                    |
|-----------------|------------------------------------------------------------------------------------|
| CommandLineFlag | -arch                                                                              |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) != YES |
| Name            | arch                                                                               |
| Type            | String                                                                             |
| References      | [ADDITIONAL_SDKS](#deva1a5b1b82)                                                   |
|                 | [ALL_OTHER_LDFLAGS](#ALL_OTHER_LDFLAGS)                                            |
|                 | [ALWAYS_SEARCH_USER_PATHS](#devc34d7d3e9)                                          |
|                 | [ALWAYS_USE_SEPARATE_HEADERMAPS](#ALWAYS_USE_SEPARATE_HEADERMAPS)                  |
|                 | [BUILT_PRODUCTS_DIR](#devffde5700e)                                                |
|                 | [BUNDLE_LOADER](#devc8b269790)                                                     |
|                 | [CC](#CC)                                                                          |
|                 | [CLANG_TARGET_TRIPLE_VARIANTS](#CLANG_TARGET_TRIPLE_VARIANTS)                      |
|                 | [CLANG_X86_VECTOR_INSTRUCTIONS](#dev39e2d7a5a)                                     |
|                 | [CURRENT_ARCH](#dev23cfef338)                                                      |
|                 | [DEAD_CODE_STRIPPING](#dev9ed8cb7ad)                                               |
|                 | [DEBUGGING_SYMBOLS](#DEBUGGING_SYMBOLS)                                            |
|                 | [DYLIB_COMPATIBILITY_VERSION](#dev318c57173)                                       |
|                 | [DYLIB_CURRENT_VERSION](#dev914a80989)                                             |
|                 | [DYLIB_INSTALL_NAME_BASE](#devf51fa1133)                                           |
|                 | [EXCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES](#dev454fb3164)                     |
|                 | [EXCLUDED_SOURCE_FILE_NAMES](#devd20926192)                                        |
|                 | [EXPORTED_SYMBOLS_FILE](#dev8fda87f60)                                             |
|                 | [FRAMEWORK_SEARCH_PATHS](#dev1b27fb3da)                                            |
|                 | [GCC_ENABLE_SSE3_EXTENSIONS](#dev525519085)                                        |
|                 | [GCC_ENABLE_SSE41_EXTENSIONS](#dev770cb2698)                                       |
|                 | [GCC_ENABLE_SSE42_EXTENSIONS](#dev02000b5df)                                       |
|                 | [GCC_VERSION](#dev1fad541c9)                                                       |
|                 | [GENERATE_MASTER_OBJECT_FILE](#dev6dda25963)                                       |
|                 | [GENERATE_TEXT_BASED_STUBS](#devc83e790c1)                                         |
|                 | [GLOBAL_CFLAGS](#GLOBAL_CFLAGS)                                                    |
|                 | [HEADER_SEARCH_PATHS](#dev3c9f85d97)                                               |
|                 | [INCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES](#devd335e28f6)                     |
|                 | [INCLUDED_SOURCE_FILE_NAMES](#dev278eb3050)                                        |
|                 | [INIT_ROUTINE](#devdf90c3a3b)                                                      |
|                 | [INLINE_PRIVATE_FRAMEWORKS](#dev29d4705f5)                                         |
|                 | [KEEP_PRIVATE_EXTERNS](#dev5b2832bba)                                              |
|                 | [LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS](#LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS)    |
|                 | [LD_DYLIB_ALLOWABLE_CLIENTS](#LD_DYLIB_ALLOWABLE_CLIENTS)                          |
|                 | [LD_DYLIB_INSTALL_NAME](#devbb966571b)                                             |
|                 | [LD_FLAGS](#LD_FLAGS)                                                              |
|                 | [LD_GENERATE_MAP_FILE](#devc1145996b)                                              |
|                 | [LD_MAP_FILE_PATH](#dev0f5aa9fe1)                                                  |
|                 | [LD_NO_PIE](#dev36448687c)                                                         |
|                 | [LD_QUOTE_LINKER_ARGUMENTS_FOR_COMPILER_DRIVER](#devee7d8a07a)                     |
|                 | [LD_RUNPATH_SEARCH_PATHS](#devd6f61be24)                                           |
|                 | [LD_TARGET_TRIPLE_VARIANTS](#LD_TARGET_TRIPLE_VARIANTS)                            |
|                 | [LIBRARY_SEARCH_PATHS](#dev353243827)                                              |
|                 | [LINKER_DISPLAYS_MANGLED_NAMES](#dev1f938e41a)                                     |
|                 | [LINK_WITH_STANDARD_LIBRARIES](#dev824b21548)                                      |
|                 | [MACH_O_TYPE](#dev5eb2828db)                                                       |
|                 | [MAC_OS_X_VERSION_MAX_ALLOWED](#MAC_OS_X_VERSION_MAX_ALLOWED)                      |
|                 | [MAC_OS_X_VERSION_MIN_REQUIRED](#MAC_OS_X_VERSION_MIN_REQUIRED)                    |
|                 | [MTL_HEADER_SEARCH_PATHS](#dev4b50e718e)                                           |
|                 | [NATIVE_ARCH](#devd22eac1e3)                                                       |
|                 | [NO_COMMON](#NO_COMMON)                                                            |
|                 | [OPTIMIZATION_CFLAGS](#OPTIMIZATION_CFLAGS)                                        |
|                 | [ORDER_FILE](#deva4dc41871)                                                        |
|                 | [OTHER_CFLAGS](#devfe44263e0)                                                      |
|                 | [OTHER_CPLUSPLUSFLAGS](#dev4aeb8200e)                                              |
|                 | [OTHER_LDFLAGS](#dev4fc8ef90a)                                                     |
|                 | [OTHER_LIBTOOLFLAGS](#dev9a0ecc53f)                                                |
|                 | [OTHER_PRECOMP_CFLAGS](#OTHER_PRECOMP_CFLAGS)                                      |
|                 | [OTHER_TAPI_FLAGS](#dev5d847a3ae)                                                  |
|                 | [PACKAGE_TYPE](#dev1174bc406)                                                      |
|                 | [PASCAL_STRINGS](#PASCAL_STRINGS)                                                  |
|                 | [PREFIX_FLAGS](#PREFIX_FLAGS)                                                      |
|                 | [PRELINK_FLAGS](#devba112d835)                                                     |
|                 | [PRELINK_LIBS](#dev0e5e578b9)                                                      |
|                 | [PRESERVE_DEAD_CODE_INITS_AND_TERMS](#devdea9a9ad6)                                |
|                 | [PRODUCT_DEFINITION_PLIST](#deve4ffd8a65)                                          |
|                 | [PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS](#PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS)        |
|                 | [PRODUCT_TYPE_LIBRARY_SEARCH_PATHS](#PRODUCT_TYPE_LIBRARY_SEARCH_PATHS)            |
|                 | [PROFILING_CODE](#PROFILING_CODE)                                                  |
|                 | [REEXPORTED_FRAMEWORK_NAMES](#dev5e490466e)                                        |
|                 | [REEXPORTED_LIBRARY_NAMES](#devc2a866441)                                          |
|                 | [REEXPORTED_LIBRARY_PATHS](#dev4d4c7988f)                                          |
|                 | [REZ_SEARCH_PATHS](#dev547a452a8)                                                  |
|                 | [SDKROOT](#devabcaadbaf)                                                           |
|                 | [SECTORDER_FLAGS](#dev2c8a64fcd)                                                   |
|                 | [SEPARATE_SYMBOL_EDIT](#dev5898a821a)                                              |
|                 | [SUPPORTS_TEXT_BASED_API](#dev8abad641c)                                           |
|                 | [SWIFT_INCLUDE_PATHS](#dev8f8e9cc00)                                               |
|                 | [SWIFT_TARGET_TRIPLE_VARIANTS](#SWIFT_TARGET_TRIPLE_VARIANTS)                      |
|                 | [SYSTEM_FRAMEWORK_SEARCH_PATHS](#dev9fa1aee62)                                     |
|                 | [SYSTEM_HEADER_SEARCH_PATHS](#devd69bd5ce8)                                        |
|                 | [TARGET_BUILD_DIR](#dev256404b3f)                                                  |
|                 | [UNEXPORTED_SYMBOLS_FILE](#devecf2a9cfe)                                           |
|                 | [USER_HEADER_SEARCH_PATHS](#deved642222b)                                          |
|                 | [USE_DYNAMIC_NO_PIC](#USE_DYNAMIC_NO_PIC)                                          |
|                 | [USE_HEADERMAP](#dev4e24a48e3)                                                     |
|                 | [WARNING_LDFLAGS](#dev29996e2b6)                                                   |
|                 | [__INPUT_FILE_LIST_PATH__](#__INPUT_FILE_LIST_PATH__)                              |
|                 | [__SWIFT_FILE_LIST_PATH_INDEXING__](#__SWIFT_FILE_LIST_PATH_INDEXING__)            |
|                 | [__SWIFT_FILE_LIST_PATH__](#__SWIFT_FILE_LIST_PATH__)                              |

</div>

<div id="diagnostic_message_length" class="Subhead">

## 🔐 diagnostic_message_length

|                       |                           |
|-----------------------|---------------------------|
| CommandLinePrefixFlag | -fmessage-length=         |
| DefaultValue          | 0                         |
| Name                  | diagnostic_message_length |
| Type                  | String                    |
| References            |                           |

</div>

<div id="print_note_include_stack" class="Subhead">

## 🔐 print_note_include_stack

|                 |                                       |
|-----------------|---------------------------------------|
| CommandLineArgs |                                       |
| `NO`            |                                       |
| `YES`           | -fdiagnostics-show-note-include-stack |
| DefaultValue    | YES                                   |
| Name            | print_note_include_stack              |
| Type            | Boolean                               |
| References      |                                       |

</div>

<div id="CLANG_MACRO_BACKTRACE_LIMIT" class="Subhead">

## 🔐 CLANG_MACRO_BACKTRACE_LIMIT

|                       |                             |
|-----------------------|-----------------------------|
| CommandLinePrefixFlag | -fmacro-backtrace-limit=    |
| DefaultValue          | 0                           |
| Name                  | CLANG_MACRO_BACKTRACE_LIMIT |
| Type                  | String                      |
| References            |                             |

</div>

<div id="CLANG_RETAIN_COMMENTS_FROM_SYSTEM_HEADERS" class="Subhead">

## 🔐 CLANG_RETAIN_COMMENTS_FROM_SYSTEM_HEADERS

|                 |                                           |
|-----------------|-------------------------------------------|
| CommandLineArgs |                                           |
| `NO`            |                                           |
| `YES`           | -fretain-comments-from-system-headers     |
| DefaultValue    | NO                                        |
| Name            | CLANG_RETAIN_COMMENTS_FROM_SYSTEM_HEADERS |
| Type            | Boolean                                   |
| References      |                                           |

</div>

<div id="CLANG_COLOR_DIAGNOSTICS" class="Subhead">

## 🔐 CLANG_COLOR_DIAGNOSTICS

|                 |                                             |
|-----------------|---------------------------------------------|
| CommandLineArgs |                                             |
| `NO`            |                                             |
| `YES`           | -fcolor-diagnostics                         |
| DefaultValue    | \$([COLOR_DIAGNOSTICS](#COLOR_DIAGNOSTICS)) |
| Name            | CLANG_COLOR_DIAGNOSTICS                     |
| Type            | Boolean                                     |
| References      |                                             |

</div>

<div id="GCC_OPERATION" class="Subhead">

## 🔐 GCC_OPERATION

|              |                       |
|--------------|-----------------------|
| DefaultValue | compile               |
| Name         | GCC_OPERATION         |
| Type         | Enumeration           |
| Values       | compile               |
|              | generate-preprocessed |
|              | generate-assembler    |
|              | precompile            |
|              | separate-symbols      |
| References   |                       |

</div>

<div id="CLANG_DEBUG_MODULES" class="Subhead">

## 🔐 CLANG_DEBUG_MODULES

|                        |                                                                                                                                                                                                                                            |
|------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs        |                                                                                                                                                                                                                                            |
| `NO`                   |                                                                                                                                                                                                                                            |
| `YES`                  | -gmodules                                                                                                                                                                                                                                  |
| Condition              | \$([GCC_GENERATE_DEBUGGING_SYMBOLS](#dev667b2f097)) == YES  &&  ( \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES  \|\|  ( \$([GCC_PREFIX_HEADER](#dev8622c506f)) != ''  &&  \$([GCC_PRECOMPILE_PREFIX_HEADER](#dev158433cad)) == YES ) ) |
| DefaultValue           | \$([CLANG_ENABLE_MODULE_DEBUGGING](#dev8ddca0338))                                                                                                                                                                                         |
| Name                   | CLANG_DEBUG_MODULES                                                                                                                                                                                                                        |
| SupportedVersionRanges | 800.0.0                                                                                                                                                                                                                                    |
| Type                   | Boolean                                                                                                                                                                                                                                    |
| References             |                                                                                                                                                                                                                                            |

</div>

<div id="CLANG_MODULE_CACHE_PATH" class="Subhead">

## 🔐 CLANG_MODULE_CACHE_PATH

|                 |                                                                              |
|-----------------|------------------------------------------------------------------------------|
| CommandLineArgs |                                                                              |
| `""`            |                                                                              |
| `<<otherwise>>` | -fmodules-cache-path=\$([CLANG_MODULE_CACHE_PATH](#CLANG_MODULE_CACHE_PATH)) |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES                             |
| DefaultValue    | \$([MODULE_CACHE_DIR](#dev433624abf))                                        |
| Name            | CLANG_MODULE_CACHE_PATH                                                      |
| Type            | String                                                                       |
| References      |                                                                              |

</div>

<div id="CLANG_MODULE_LSV" class="Subhead">

## 🔐 CLANG_MODULE_LSV

|                 |                                                  |
|-----------------|--------------------------------------------------|
| CommandLineArgs |                                                  |
| `NO`            |                                                  |
| `YES`           | -Xclang                                          |
|                 | -fmodules-local-submodule-visibility             |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES |
| DefaultValue    | NO                                               |
| Name            | CLANG_MODULE_LSV                                 |
| Type            | Boolean                                          |
| References      |                                                  |

</div>

<div id="CLANG_MODULES_PRUNE_INTERVAL" class="Subhead">

## 🔐 CLANG_MODULES_PRUNE_INTERVAL

|                 |                                                  |
|-----------------|--------------------------------------------------|
| CommandLineArgs |                                                  |
| `""`            |                                                  |
| `<<otherwise>>` | -fmodules-prune-interval=\$([value](#value))     |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES |
| DefaultValue    | 86400                                            |
| Name            | CLANG_MODULES_PRUNE_INTERVAL                     |
| Type            | String                                           |
| References      |                                                  |

</div>

<div id="CLANG_MODULES_PRUNE_AFTER" class="Subhead">

## 🔐 CLANG_MODULES_PRUNE_AFTER

|                 |                                                  |
|-----------------|--------------------------------------------------|
| CommandLineArgs |                                                  |
| `""`            |                                                  |
| `<<otherwise>>` | -fmodules-prune-after=\$([value](#value))        |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES |
| DefaultValue    | 345600                                           |
| Name            | CLANG_MODULES_PRUNE_AFTER                        |
| Type            | String                                           |
| References      |                                                  |

</div>

<div id="CLANG_MODULES_IGNORE_MACROS" class="Subhead">

## 🔐 CLANG_MODULES_IGNORE_MACROS

|                 |                                                                        |
|-----------------|------------------------------------------------------------------------|
| CommandLineArgs | -fmodules-ignore-macro=\$([value](#value))                             |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES                       |
| DefaultValue    | \$([GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS](#deve5cb410bb)) |
| Name            | CLANG_MODULES_IGNORE_MACROS                                            |
| Type            | StringList                                                             |
| References      |                                                                        |

</div>

<div id="CLANG_MODULES_VALIDATE_SYSTEM_HEADERS" class="Subhead">

## 🔐 CLANG_MODULES_VALIDATE_SYSTEM_HEADERS

|                 |                                                  |
|-----------------|--------------------------------------------------|
| CommandLineArgs |                                                  |
| `NO`            |                                                  |
| `YES`           | -fmodules-validate-system-headers                |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES |
| DefaultValue    | NO                                               |
| Name            | CLANG_MODULES_VALIDATE_SYSTEM_HEADERS            |
| Type            | Boolean                                          |
| References      |                                                  |

</div>

<div id="CLANG_MODULES_BUILD_SESSION_FILE" class="Subhead">

## 🔐 CLANG_MODULES_BUILD_SESSION_FILE

|                        |                                                  |
|------------------------|--------------------------------------------------|
| CommandLineArgs        |                                                  |
| `""`                   |                                                  |
| `<<otherwise>>`        | -fbuild-session-file=\$([value](#value))         |
|                        | -fmodules-validate-once-per-build-session        |
| Condition              | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES |
| DefaultValue           |                                                  |
| Name                   | CLANG_MODULES_BUILD_SESSION_FILE                 |
| SupportedVersionRanges | 602.0.0                                          |
| Type                   | String                                           |
| References             |                                                  |

</div>

<div id="CLANG_ENABLE_MODULE_IMPLEMENTATION_OF" class="Subhead">

## 🔐 CLANG_ENABLE_MODULE_IMPLEMENTATION_OF

|                 |                                                                                                |
|-----------------|------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                |
| `NO`            |                                                                                                |
| `YES`           | -fmodule-name=\$([PRODUCT_MODULE_NAME](#dev93497cfe4))                                         |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES && \$([DEFINES_MODULE](#dev82471c743)) == YES |
| DefaultValue    | YES                                                                                            |
| Name            | CLANG_ENABLE_MODULE_IMPLEMENTATION_OF                                                          |
| Type            | Boolean                                                                                        |
| References      |                                                                                                |

</div>

<div id="CLANG_ENABLE_APP_EXTENSION" class="Subhead">

## 🔐 CLANG_ENABLE_APP_EXTENSION

|                      |                                                     |
|----------------------|-----------------------------------------------------|
| AdditionalLinkerArgs |                                                     |
| `NO`                 |                                                     |
| `YES`                | -fapplication-extension                             |
| CommandLineArgs      |                                                     |
| `NO`                 |                                                     |
| `YES`                | -fapplication-extension                             |
| DefaultValue         | \$([APPLICATION_EXTENSION_API_ONLY](#devbe3df4109)) |
| Name                 | CLANG_ENABLE_APP_EXTENSION                          |
| Type                 | Boolean                                             |
| References           |                                                     |

</div>

<div id="CLANG_ENABLE_CPP_STATIC_DESTRUCTORS" class="Subhead">

## 🔐 CLANG_ENABLE_CPP_STATIC_DESTRUCTORS

|                 |                                     |
|-----------------|-------------------------------------|
| Category        | LanguageCXX                         |
| CommandLineArgs |                                     |
| `NO`            | -fno-c++-static-destructors         |
| `YES`           |                                     |
| DefaultValue    | YES                                 |
| FileTypes       | sourcecode.cpp.cpp                  |
|                 | sourcecode.cpp.objcpp               |
| Name            | CLANG_ENABLE_CPP_STATIC_DESTRUCTORS |
| Type            | Boolean                             |
| References      |                                     |

</div>

<div id="LLVM_OPTIMIZATION_LEVEL_VAL_0" class="Subhead">

## 🔐 LLVM_OPTIMIZATION_LEVEL_VAL_0

|              |                               |
|--------------|-------------------------------|
| DefaultValue | NO                            |
| Name         | LLVM_OPTIMIZATION_LEVEL_VAL_0 |
| Type         | Boolean                       |
| References   |                               |

</div>

<div id="LLVM_OPTIMIZATION_LEVEL_VAL_1" class="Subhead">

## 🔐 LLVM_OPTIMIZATION_LEVEL_VAL_1

|              |                               |
|--------------|-------------------------------|
| DefaultValue | NO                            |
| Name         | LLVM_OPTIMIZATION_LEVEL_VAL_1 |
| Type         | Boolean                       |
| References   |                               |

</div>

<div id="LLVM_OPTIMIZATION_LEVEL_VAL_2" class="Subhead">

## 🔐 LLVM_OPTIMIZATION_LEVEL_VAL_2

|              |                               |
|--------------|-------------------------------|
| DefaultValue | NO                            |
| Name         | LLVM_OPTIMIZATION_LEVEL_VAL_2 |
| Type         | Boolean                       |
| References   |                               |

</div>

<div id="LLVM_OPTIMIZATION_LEVEL_VAL_3" class="Subhead">

## 🔐 LLVM_OPTIMIZATION_LEVEL_VAL_3

|              |                               |
|--------------|-------------------------------|
| DefaultValue | NO                            |
| Name         | LLVM_OPTIMIZATION_LEVEL_VAL_3 |
| Type         | Boolean                       |
| References   |                               |

</div>

<div id="LLVM_OPTIMIZATION_LEVEL_VAL_s" class="Subhead">

## 🔐 LLVM_OPTIMIZATION_LEVEL_VAL_s

|              |                               |
|--------------|-------------------------------|
| DefaultValue | NO                            |
| Name         | LLVM_OPTIMIZATION_LEVEL_VAL_s |
| Type         | Boolean                       |
| References   |                               |

</div>

<div id="LLVM_OPTIMIZATION_LEVEL_VAL_fast" class="Subhead">

## 🔐 LLVM_OPTIMIZATION_LEVEL_VAL_fast

|              |                                  |
|--------------|----------------------------------|
| DefaultValue | YES                              |
| Name         | LLVM_OPTIMIZATION_LEVEL_VAL_fast |
| Type         | Boolean                          |
| References   |                                  |

</div>

<div id="LLVM_OPTIMIZATION_LEVEL_VAL_z" class="Subhead">

## 🔐 LLVM_OPTIMIZATION_LEVEL_VAL_z

|              |                               |
|--------------|-------------------------------|
| DefaultValue | NO                            |
| Name         | LLVM_OPTIMIZATION_LEVEL_VAL_z |
| Type         | Boolean                       |
| References   |                               |

</div>

<div id="LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS" class="Subhead">

## 🔐 LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS

|              |                                                                             |
|--------------|-----------------------------------------------------------------------------|
| DefaultValue | \$(LLVM_OPTIMIZATION_LEVEL_VAL_\$([GCC_OPTIMIZATION_LEVEL](#dev80f5ad208))) |
| Name         | LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS                                      |
| Type         | Boolean                                                                     |
| References   | [GCC_FAST_MATH](#devfaa514090)                                              |

</div>

<div id="CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER" class="Subhead">

## 🔐 CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER

|                 |                                               |
|-----------------|-----------------------------------------------|
| Category        | Warnings                                      |
| CommandLineArgs |                                               |
| `NO`            |                                               |
| `YES`           | -Wquoted-include-in-framework-header          |
| `YES_ERROR`     | -Wquoted-include-in-framework-header          |
|                 | -Werror=quoted-include-in-framework-header    |
| DefaultValue    | NO                                            |
| Name            | CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER |
| Type            | Enumeration                                   |
| Values          | YES                                           |
|                 | YES_ERROR                                     |
|                 | NO                                            |
| References      |                                               |

</div>

<div id="GCC_WARN_MULTIPLE_DEFINITION_TYPES_FOR_SELECTOR" class="Subhead">

## 🔐 GCC_WARN_MULTIPLE_DEFINITION_TYPES_FOR_SELECTOR

|                 |                                                 |
|-----------------|-------------------------------------------------|
| CommandLineArgs |                                                 |
| `NO`            | -Wno-selector                                   |
| `YES`           | -Wselector                                      |
| DefaultValue    | NO                                              |
| FileTypes       | sourcecode.c.objc                               |
|                 | sourcecode.cpp.objcpp                           |
| Name            | GCC_WARN_MULTIPLE_DEFINITION_TYPES_FOR_SELECTOR |
| Type            | Boolean                                         |
| References      |                                                 |

</div>

<div id="CLANG_WARN_ATOMIC_IMPLICIT_SEQ_CST" class="Subhead">

## 🔐 CLANG_WARN_ATOMIC_IMPLICIT_SEQ_CST

|                 |                                    |
|-----------------|------------------------------------|
| Category        | WarningsCXX                        |
| CommandLineArgs |                                    |
| `NO`            |                                    |
| `YES`           | -Watomic-implicit-seq-cst          |
| DefaultValue    | NO                                 |
| FileTypes       | sourcecode.c.c                     |
|                 | sourcecode.c.objc                  |
|                 | sourcecode.cpp.cpp                 |
|                 | sourcecode.cpp.objcpp              |
| Name            | CLANG_WARN_ATOMIC_IMPLICIT_SEQ_CST |
| Type            | Boolean                            |
| References      |                                    |

</div>

<div id="CLANG_TRIVIAL_AUTO_VAR_INIT" class="Subhead">

## 🔐 CLANG_TRIVIAL_AUTO_VAR_INIT

|                 |                                 |
|-----------------|---------------------------------|
| CommandLineArgs |                                 |
| `pattern`       | -ftrivial-auto-var-init=pattern |
| `uninitialized` |                                 |
| DefaultValue    | uninitialized                   |
| FileTypes       | sourcecode.c.c                  |
|                 | sourcecode.c.objc               |
|                 | sourcecode.cpp.cpp              |
|                 | sourcecode.cpp.objcpp           |
| Name            | CLANG_TRIVIAL_AUTO_VAR_INIT     |
| Type            | Enumeration                     |
| Values          | uninitialized                   |
|                 | pattern                         |
| References      |                                 |

</div>

<div id="GCC_PRODUCT_TYPE_PREPROCESSOR_DEFINITIONS" class="Subhead">

## 🔐 GCC_PRODUCT_TYPE_PREPROCESSOR_DEFINITIONS

|                 |                                           |
|-----------------|-------------------------------------------|
| CommandLineArgs | -D\$([value](#value))                     |
| DefaultValue    |                                           |
| Name            | GCC_PRODUCT_TYPE_PREPROCESSOR_DEFINITIONS |
| Type            | StringList                                |
| References      |                                           |

</div>

<div id="HEADERMAP_FILE_FORMAT" class="Subhead">

## 🔐 HEADERMAP_FILE_FORMAT

|              |                       |
|--------------|-----------------------|
| DefaultValue | traditional           |
| Name         | HEADERMAP_FILE_FORMAT |
| Type         | Enumeration           |
| Values       | traditional           |
| References   |                       |

</div>

<div id="CPP_HEADERMAP_FILE" class="Subhead">

## 🔐 CPP_HEADERMAP_FILE

|              |                                                                                                                     |
|--------------|---------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/\$([PRODUCT_NAME](#dev5c40d1d06)).hmap                                                    |
| Name         | CPP_HEADERMAP_FILE                                                                                                  |
| Type         | Path                                                                                                                |
| References   | [CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS) |
|              | [CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS)                             |
|              | [CPP_HEADERMAP_FILE_FOR_GENERATED_FILES](#CPP_HEADERMAP_FILE_FOR_GENERATED_FILES)                                   |
|              | [CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS)                             |
|              | [CPP_HEADERMAP_FILE_FOR_PROJECT_FILES](#CPP_HEADERMAP_FILE_FOR_PROJECT_FILES)                                       |

</div>

<div id="CPP_HEADERMAP_FILE_FOR_GENERATED_FILES" class="Subhead">

## 🔐 CPP_HEADERMAP_FILE_FOR_GENERATED_FILES

|              |                                                                                  |
|--------------|----------------------------------------------------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/\$([PRODUCT_NAME](#dev5c40d1d06))-generated-files.hmap |
| Name         | CPP_HEADERMAP_FILE_FOR_GENERATED_FILES                                           |
| Type         | Path                                                                             |
| References   |                                                                                  |

</div>

<div id="CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS" class="Subhead">

## 🔐 CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS

|              |                                                                                     |
|--------------|-------------------------------------------------------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/\$([PRODUCT_NAME](#dev5c40d1d06))-own-target-headers.hmap |
| Name         | CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS                                           |
| Type         | Path                                                                                |
| References   |                                                                                     |

</div>

<div id="CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS" class="Subhead">

## 🔐 CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS

|              |                                                                                     |
|--------------|-------------------------------------------------------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/\$([PRODUCT_NAME](#dev5c40d1d06))-all-target-headers.hmap |
| Name         | CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS                                           |
| Type         | Path                                                                                |
| References   |                                                                                     |

</div>

<div id="CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS" class="Subhead">

## 🔐 CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS

|              |                                                                                                   |
|--------------|---------------------------------------------------------------------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/\$([PRODUCT_NAME](#dev5c40d1d06))-all-non-framework-target-headers.hmap |
| Name         | CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS                                           |
| Type         | Path                                                                                              |
| References   |                                                                                                   |

</div>

<div id="CPP_HEADERMAP_FILE_FOR_PROJECT_FILES" class="Subhead">

## 🔐 CPP_HEADERMAP_FILE_FOR_PROJECT_FILES

|              |                                                                                  |
|--------------|----------------------------------------------------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/\$([PRODUCT_NAME](#dev5c40d1d06))-project-headers.hmap |
| Name         | CPP_HEADERMAP_FILE_FOR_PROJECT_FILES                                             |
| Type         | Path                                                                             |
| References   |                                                                                  |

</div>

<div id="CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE" class="Subhead">

## 🔐 CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE

|              |                                                                |
|--------------|----------------------------------------------------------------|
| DefaultValue | \$([PROJECT_TEMP_DIR](#dev583a73f21))/all-product-headers.yaml |
| Name         | CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE                         |
| Type         | Path                                                           |
| References   |                                                                |

</div>

<div id="USE_HEADER_SYMLINKS" class="Subhead">

## 🔐 USE_HEADER_SYMLINKS

|              |                     |
|--------------|---------------------|
| DefaultValue | NO                  |
| Name         | USE_HEADER_SYMLINKS |
| Type         | Boolean             |
| References   |                     |

</div>

<div id="CPP_HEADER_SYMLINKS_DIR" class="Subhead">

## 🔐 CPP_HEADER_SYMLINKS_DIR

|              |                                                                  |
|--------------|------------------------------------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/\$([PRODUCT_NAME](#dev5c40d1d06)).hdrs |
| Name         | CPP_HEADER_SYMLINKS_DIR                                          |
| Type         | Path                                                             |
| References   |                                                                  |

</div>

<div id="GCC_USE_GCC3_PFE_SUPPORT" class="Subhead">

## 🔐 GCC_USE_GCC3_PFE_SUPPORT

|              |                          |
|--------------|--------------------------|
| DefaultValue | YES                      |
| Name         | GCC_USE_GCC3_PFE_SUPPORT |
| Type         | Boolean                  |
| References   |                          |

</div>

<div id="GCC_PFE_FILE_C_DIALECTS" class="Subhead">

## 🔐 GCC_PFE_FILE_C_DIALECTS

|              |                                 |
|--------------|---------------------------------|
| DefaultValue | c objective-c c++ objective-c++ |
| Name         | GCC_PFE_FILE_C_DIALECTS         |
| Type         | StringList                      |
| References   |                                 |

</div>

<div id="ENABLE_APPLE_KEXT_CODE_GENERATION" class="Subhead">

## 🔐 ENABLE_APPLE_KEXT_CODE_GENERATION

|                 |                                   |
|-----------------|-----------------------------------|
| CommandLineArgs |                                   |
| `NO`            |                                   |
| `YES`           | -fapple-kext                      |
| DefaultValue    | NO                                |
| FileTypes       | sourcecode.cpp.cpp                |
|                 | sourcecode.cpp.objcpp             |
| Name            | ENABLE_APPLE_KEXT_CODE_GENERATION |
| Type            | Boolean                           |
| References      |                                   |

</div>

<div id="GCC_MACOSX_VERSION_MIN" class="Subhead">

## 🔐 GCC_MACOSX_VERSION_MIN

|                 |                                                                                                  |
|-----------------|--------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                  |
| `""`            |                                                                                                  |
| `<<otherwise>>` | -\$([DEPLOYMENT_TARGET_CLANG_FLAG_NAME](#DEPLOYMENT_TARGET_CLANG_FLAG_NAME))=\$([value](#value)) |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) != YES               |
| DefaultValue    | \$(\$([DEPLOYMENT_TARGET_SETTING_NAME](#DEPLOYMENT_TARGET_SETTING_NAME)))                        |
| Name            | GCC_MACOSX_VERSION_MIN                                                                           |
| Type            | String                                                                                           |
| References      |                                                                                                  |

</div>

<div id="GCC_DEBUG_INFORMATION_FORMAT" class="Subhead">

## 🔐 GCC_DEBUG_INFORMATION_FORMAT

|                   |                                                     |
|-------------------|-----------------------------------------------------|
| CommandLineArgs   |                                                     |
| `<<otherwise>>`   |                                                     |
| `dwarf`           | -g                                                  |
| `dwarf-with-dsym` | -g                                                  |
| CommonOption      | NO                                                  |
| Condition         | \$([GCC_GENERATE_DEBUGGING_SYMBOLS](#dev667b2f097)) |
| DefaultValue      | \$([DEBUG_INFORMATION_FORMAT](#dev881878d77))       |
| Name              | GCC_DEBUG_INFORMATION_FORMAT                        |
| Type              | Enumeration                                         |
| Values            | dwarf                                               |
|                   | dwarf-with-dsym                                     |
| References        |                                                     |

</div>

<div id="GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS" class="Subhead">

## 🔐 GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS

|                 |                                                       |
|-----------------|-------------------------------------------------------|
| Architectures   | i386                                                  |
|                 | x86_64                                                |
| CommandLineArgs |                                                       |
| `NO`            |                                                       |
| `YES`           |                                                       |
| DefaultValue    | NO                                                    |
| Name            | GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS             |
| Type            | Boolean                                               |
| References      | [DEFAULT_SSE_LEVEL_4_1_NO](#DEFAULT_SSE_LEVEL_4_1_NO) |

</div>

<div id="DEFAULT_SSE_LEVEL_3_YES" class="Subhead">

## 🔐 DEFAULT_SSE_LEVEL_3_YES

|              |                         |
|--------------|-------------------------|
| DefaultValue | sse3                    |
| Name         | DEFAULT_SSE_LEVEL_3_YES |
| Type         | String                  |
| References   |                         |

</div>

<div id="DEFAULT_SSE_LEVEL_3_NO" class="Subhead">

## 🔐 DEFAULT_SSE_LEVEL_3_NO

|              |                        |
|--------------|------------------------|
| DefaultValue | default                |
| Name         | DEFAULT_SSE_LEVEL_3_NO |
| Type         | String                 |
| References   |                        |

</div>

<div id="DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_YES" class="Subhead">

## 🔐 DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_YES

|              |                                      |
|--------------|--------------------------------------|
| DefaultValue | ssse3                                |
| Name         | DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_YES |
| Type         | String                               |
| References   |                                      |

</div>

<div id="DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_NO" class="Subhead">

## 🔐 DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_NO

|              |                                                                         |
|--------------|-------------------------------------------------------------------------|
| DefaultValue | \$(DEFAULT_SSE_LEVEL_3_\$([GCC_ENABLE_SSE3_EXTENSIONS](#dev525519085))) |
| Name         | DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_NO                                     |
| Type         | String                                                                  |
| References   |                                                                         |

</div>

<div id="DEFAULT_SSE_LEVEL_4_1_YES" class="Subhead">

## 🔐 DEFAULT_SSE_LEVEL_4_1_YES

|              |                           |
|--------------|---------------------------|
| DefaultValue | sse4.1                    |
| Name         | DEFAULT_SSE_LEVEL_4_1_YES |
| Type         | String                    |
| References   |                           |

</div>

<div id="DEFAULT_SSE_LEVEL_4_1_NO" class="Subhead">

## 🔐 DEFAULT_SSE_LEVEL_4_1_NO

|              |                                                                                                                                  |
|--------------|----------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$(DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_\$([GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS](#GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS))) |
| Name         | DEFAULT_SSE_LEVEL_4_1_NO                                                                                                         |
| Type         | String                                                                                                                           |
| References   |                                                                                                                                  |

</div>

<div id="DEFAULT_SSE_LEVEL_4_2_YES" class="Subhead">

## 🔐 DEFAULT_SSE_LEVEL_4_2_YES

|              |                           |
|--------------|---------------------------|
| DefaultValue | sse4.2                    |
| Name         | DEFAULT_SSE_LEVEL_4_2_YES |
| Type         | String                    |
| References   |                           |

</div>

<div id="DEFAULT_SSE_LEVEL_4_2_NO" class="Subhead">

## 🔐 DEFAULT_SSE_LEVEL_4_2_NO

|              |                                                                            |
|--------------|----------------------------------------------------------------------------|
| DefaultValue | \$(DEFAULT_SSE_LEVEL_4_1_\$([GCC_ENABLE_SSE41_EXTENSIONS](#dev770cb2698))) |
| Name         | DEFAULT_SSE_LEVEL_4_2_NO                                                   |
| Type         | String                                                                     |
| References   |                                                                            |

</div>

<div id="GCC_OBJC_ABI_VERSION" class="Subhead">

## 🔐 GCC_OBJC_ABI_VERSION

|                 |                                           |
|-----------------|-------------------------------------------|
| CommandLineArgs |                                           |
| `""`            |                                           |
| `<<otherwise>>` | -fobjc-abi-version=\$([value](#value))    |
| DefaultValue    | \$([OBJC_ABI_VERSION](#OBJC_ABI_VERSION)) |
| FileTypes       | sourcecode.c.objc                         |
|                 | sourcecode.cpp.objcpp                     |
| Name            | GCC_OBJC_ABI_VERSION                      |
| Type            | Enumeration                               |
| Values          | 1                                         |
|                 | 2                                         |
| References      |                                           |

</div>

<div id="GCC_OBJC_LEGACY_DISPATCH" class="Subhead">

## 🔐 GCC_OBJC_LEGACY_DISPATCH

|                 |                          |
|-----------------|--------------------------|
| CommandLineArgs |                          |
| `NO`            |                          |
| `YES`           | -fobjc-legacy-dispatch   |
| DefaultValue    | NO                       |
| FileTypes       | sourcecode.c.objc        |
|                 | sourcecode.cpp.objcpp    |
| Name            | GCC_OBJC_LEGACY_DISPATCH |
| Type            | Boolean                  |
| References      |                          |

</div>

<div id="CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING" class="Subhead">

## 🔐 CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING

|                      |                                                 |
|----------------------|-------------------------------------------------|
| AdditionalLinkerArgs |                                                 |
| `NO`                 |                                                 |
| `YES`                | -fprofile-instr-generate                        |
| CommandLineArgs      |                                                 |
| `NO`                 |                                                 |
| `YES`                | -fprofile-instr-generate                        |
| DefaultValue         | NO                                              |
| Name                 | CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING     |
| Type                 | Boolean                                         |
| References           | [CLANG_USE_OPTIMIZATION_PROFILE](#devb3d935f24) |

</div>

<div id="CLANG_COVERAGE_MAPPING" class="Subhead">

## 🔐 CLANG_COVERAGE_MAPPING

|                 |                                                                           |
|-----------------|---------------------------------------------------------------------------|
| CommandLineArgs |                                                                           |
| `NO`            |                                                                           |
| `YES`           | -fprofile-instr-generate                                                  |
|                 | -fcoverage-mapping                                                        |
| Condition       | \$([CLANG_ENABLE_CODE_COVERAGE](#devaec10c397))                           |
| DefaultValue    | NO                                                                        |
| Name            | CLANG_COVERAGE_MAPPING                                                    |
| Type            | Boolean                                                                   |
| References      | [CLANG_COVERAGE_MAPPING_LINKER_ARGS](#CLANG_COVERAGE_MAPPING_LINKER_ARGS) |
|                 | [CLANG_USE_OPTIMIZATION_PROFILE](#devb3d935f24)                           |

</div>

<div id="CLANG_COVERAGE_MAPPING_LINKER_ARGS" class="Subhead">

## 🔐 CLANG_COVERAGE_MAPPING_LINKER_ARGS

|                      |                                                       |
|----------------------|-------------------------------------------------------|
| AdditionalLinkerArgs |                                                       |
| `NO`                 |                                                       |
| `YES`                | -fprofile-instr-generate                              |
| DefaultValue         | \$([CLANG_COVERAGE_MAPPING](#CLANG_COVERAGE_MAPPING)) |
| Name                 | CLANG_COVERAGE_MAPPING_LINKER_ARGS                    |
| Type                 | Boolean                                               |
| References           |                                                       |

</div>

<div id="CLANG_BITCODE_GENERATION_MODE" class="Subhead">

## 🔐 CLANG_BITCODE_GENERATION_MODE

|                 |                                                         |
|-----------------|---------------------------------------------------------|
| Architectures   | arm64                                                   |
|                 | armv7                                                   |
|                 | armv7s                                                  |
|                 | armv7k                                                  |
| CommandLineArgs |                                                         |
| `bitcode`       | -fembed-bitcode                                         |
| `marker`        | -fembed-bitcode-marker                                  |
| Condition       | \$([ENABLE_BITCODE](#dev6ee230c11)) == YES              |
| DefaultValue    | \$([BITCODE_GENERATION_MODE](#BITCODE_GENERATION_MODE)) |
| Name            | CLANG_BITCODE_GENERATION_MODE                           |
| Type            | Enumeration                                             |
| Values          | none                                                    |
|                 | marker                                                  |
|                 | bitcode                                                 |
| References      |                                                         |

</div>

<div id="CLANG_ADDRESS_SANITIZER" class="Subhead">

## 🔐 CLANG_ADDRESS_SANITIZER

|                      |                                                                                     |
|----------------------|-------------------------------------------------------------------------------------|
| AdditionalLinkerArgs |                                                                                     |
| `NO`                 |                                                                                     |
| `YES`                | -fsanitize=address                                                                  |
| CommandLineArgs      |                                                                                     |
| `NO`                 |                                                                                     |
| `YES`                | -fsanitize=address                                                                  |
| DefaultValue         | \$([ENABLE_ADDRESS_SANITIZER](#ENABLE_ADDRESS_SANITIZER))                           |
| Name                 | CLANG_ADDRESS_SANITIZER                                                             |
| Type                 | Boolean                                                                             |
| References           | [CLANG_ADDRESS_SANITIZER_CONTAINER_OVERFLOW](#dev82671bc31)                         |
|                      | [CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE](#CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE) |

</div>

<div id="CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE" class="Subhead">

## 🔐 CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE

|                 |                                                                |
|-----------------|----------------------------------------------------------------|
| CommandLineArgs |                                                                |
| `NO`            |                                                                |
| `YES`           | -fsanitize-address-use-after-scope                             |
| Condition       | \$([CLANG_ADDRESS_SANITIZER](#CLANG_ADDRESS_SANITIZER)) == YES |
| DefaultValue    | NO                                                             |
| Name            | CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE                        |
| Type            | Boolean                                                        |
| References      |                                                                |

</div>

<div id="CLANG_UNDEFINED_BEHAVIOR_SANITIZER" class="Subhead">

## 🔐 CLANG_UNDEFINED_BEHAVIOR_SANITIZER

|                      |                                                                                 |
|----------------------|---------------------------------------------------------------------------------|
| AdditionalLinkerArgs |                                                                                 |
| `NO`                 |                                                                                 |
| `YES`                | -fsanitize=undefined                                                            |
| CommandLineArgs      |                                                                                 |
| `NO`                 |                                                                                 |
| `YES`                | -fsanitize=undefined                                                            |
|                      | -fno-sanitize=enum,return,float-divide-by-zero,function,vptr                    |
| DefaultValue         | \$([ENABLE_UNDEFINED_BEHAVIOR_SANITIZER](#ENABLE_UNDEFINED_BEHAVIOR_SANITIZER)) |
| Name                 | CLANG_UNDEFINED_BEHAVIOR_SANITIZER                                              |
| Type                 | Boolean                                                                         |
| References           | [CLANG_UNDEFINED_BEHAVIOR_SANITIZER_INTEGER](#dev11cdd52f0)                     |
|                      | [CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY](#dev91bb4ec91)                 |

</div>

<div id="CLANG_INDEX_STORE_PATH" class="Subhead">

## 🔐 CLANG_INDEX_STORE_PATH

|              |                                                       |
|--------------|-------------------------------------------------------|
| DefaultValue | \$([INDEX_DATA_STORE_DIR](#INDEX_DATA_STORE_DIR))     |
| Name         | CLANG_INDEX_STORE_PATH                                |
| Type         | Path                                                  |
| References   | [CLANG_INDEX_STORE_ENABLE](#CLANG_INDEX_STORE_ENABLE) |

</div>

<div id="CLANG_INDEX_STORE_ENABLE" class="Subhead">

## 🔐 CLANG_INDEX_STORE_ENABLE

|                 |                                                                                                                                                                                      |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                                                                                                      |
| `NO`            |                                                                                                                                                                                      |
| `YES`           | -index-store-path                                                                                                                                                                    |
|                 | \$([CLANG_INDEX_STORE_PATH](#CLANG_INDEX_STORE_PATH))                                                                                                                                |
| Condition       | \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == YES  \|\|  ( \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == Default  &&  \$([GCC_OPTIMIZATION_LEVEL](#dev80f5ad208)) == 0 ) |
| DefaultValue    | \$([INDEX_ENABLE_DATA_STORE](#INDEX_ENABLE_DATA_STORE))                                                                                                                              |
| Name            | CLANG_INDEX_STORE_ENABLE                                                                                                                                                             |
| Type            | Boolean                                                                                                                                                                              |
| References      |                                                                                                                                                                                      |

</div>

<div id="CLANG_THREAD_SANITIZER" class="Subhead">

## 🔐 CLANG_THREAD_SANITIZER

|                 |                                                         |
|-----------------|---------------------------------------------------------|
| Architectures   | x86_64                                                  |
|                 | arm64                                                   |
|                 | arm64e                                                  |
| CommandLineArgs |                                                         |
| `NO`            |                                                         |
| `YES`           | -fsanitize=thread                                       |
| DefaultValue    | \$([ENABLE_THREAD_SANITIZER](#ENABLE_THREAD_SANITIZER)) |
| Name            | CLANG_THREAD_SANITIZER                                  |
| Type            | Boolean                                                 |
| References      |                                                         |

</div>

<div id="CLANG_ARC_MIGRATE_PRECHECK" class="Subhead">

## 🔐 CLANG_ARC_MIGRATE_PRECHECK

|                 |                            |
|-----------------|----------------------------|
| CommandLineArgs |                            |
| `donothing`     |                            |
| `precheck`      | -ccc-arcmt-check           |
| DefaultValue    | donothing                  |
| Name            | CLANG_ARC_MIGRATE_PRECHECK |
| Type            | Enumeration                |
| Values          | donothing                  |
|                 | precheck                   |
| References      |                            |

</div>

<div id="CLANG_ARC_MIGRATE_DIR" class="Subhead">

## 🔐 CLANG_ARC_MIGRATE_DIR

|                 |                       |
|-----------------|-----------------------|
| CommandLineFlag | -ccc-arcmt-migrate    |
| Name            | CLANG_ARC_MIGRATE_DIR |
| Type            | Path                  |
| References      |                       |

</div>

<div id="CLANG_OBJC_MIGRATE_DIR" class="Subhead">

## 🔐 CLANG_OBJC_MIGRATE_DIR

|                 |                        |
|-----------------|------------------------|
| CommandLineFlag | -ccc-objcmt-migrate    |
| Name            | CLANG_OBJC_MIGRATE_DIR |
| Type            | Path                   |
| References      |                        |

</div>

<div id="CLANG_ARC_MIGRATE_EMIT_ERROR" class="Subhead">

## 🔐 CLANG_ARC_MIGRATE_EMIT_ERROR

|                 |                              |
|-----------------|------------------------------|
| CommandLineArgs |                              |
| `NO`            |                              |
| `YES`           | -arcmt-migrate-emit-errors   |
| DefaultValue    | NO                           |
| Name            | CLANG_ARC_MIGRATE_EMIT_ERROR |
| Type            | Boolean                      |
| References      |                              |

</div>

<div id="CLANG_ARC_MIGRATE_REPORT_OUTPUT" class="Subhead">

## 🔐 CLANG_ARC_MIGRATE_REPORT_OUTPUT

|                 |                                 |
|-----------------|---------------------------------|
| CommandLineFlag | -arcmt-migrate-report-output    |
| Name            | CLANG_ARC_MIGRATE_REPORT_OUTPUT |
| Type            | Path                            |
| References      |                                 |

</div>

<div id="CLANG_ANALYZER_EXEC" class="Subhead">

## 🔐 CLANG_ANALYZER_EXEC

|              |                     |
|--------------|---------------------|
| DefaultValue | clang               |
| Name         | CLANG_ANALYZER_EXEC |
| Type         | Path                |
| References   |                     |

</div>

<div id="CLANG_INDEX_STORE_ENABLE" class="Subhead">

## 🔐 CLANG_INDEX_STORE_ENABLE

|                 |                                                                                                                                                                                      |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                                                                                                      |
| `NO`            |                                                                                                                                                                                      |
| `YES`           | -index-store-path                                                                                                                                                                    |
|                 | \$([CLANG_INDEX_STORE_PATH](#CLANG_INDEX_STORE_PATH))                                                                                                                                |
| Condition       | \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == YES  \|\|  ( \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == Default  &&  \$([GCC_OPTIMIZATION_LEVEL](#dev80f5ad208)) == 0 ) |
| DefaultValue    | \$([INDEX_ENABLE_DATA_STORE](#INDEX_ENABLE_DATA_STORE))                                                                                                                              |
| Name            | CLANG_INDEX_STORE_ENABLE                                                                                                                                                             |
| Type            | Boolean                                                                                                                                                                              |
| References      |                                                                                                                                                                                      |

</div>

<div id="CLANG_ANALYZER_DEFINES" class="Subhead">

## 🔐 CLANG_ANALYZER_DEFINES

|                 |                        |
|-----------------|------------------------|
| CommandLineArgs | \$([value](#value))    |
| DefaultValue    | -D__clang_analyzer__   |
| Name            | CLANG_ANALYZER_DEFINES |
| Type            | String                 |
| References      |                        |

</div>

<div id="CLANG_ANALYZER_OUTPUT_DIR" class="Subhead">

## 🔐 CLANG_ANALYZER_OUTPUT_DIR

|              |                           |
|--------------|---------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR)) |
| Name         | CLANG_ANALYZER_OUTPUT_DIR |
| Type         | Path                      |
| References   |                           |

</div>

<div id="CLANG_ANALYZER_OUTPUT" class="Subhead">

## 🔐 CLANG_ANALYZER_OUTPUT

|                 |                                                         |
|-----------------|---------------------------------------------------------|
| CommandLineArgs |                                                         |
| `<<otherwise>>` | -Xclang                                                 |
|                 | -analyzer-output=\$([value](#value))                    |
| `default`       |                                                         |
| DefaultValue    | plist-multi-file                                        |
| Name            | CLANG_ANALYZER_OUTPUT                                   |
| Type            | Enumeration                                             |
| Values          | default                                                 |
|                 | plist-multi-file                                        |
| References      | [CLANG_ANALYZER_OUTPUT_DIR](#CLANG_ANALYZER_OUTPUT_DIR) |

</div>

<div id="CLANG_ANALYZER_ALTERNATE_EDGES" class="Subhead">

## 🔐 CLANG_ANALYZER_ALTERNATE_EDGES

|                 |                                  |
|-----------------|----------------------------------|
| CommandLineArgs |                                  |
| `NO`            | -Xclang                          |
|                 | -analyzer-config                 |
|                 | -Xclang                          |
|                 | path-diagnostics-alternate=false |
| `YES`           | -Xclang                          |
|                 | -analyzer-config                 |
|                 | -Xclang                          |
|                 | path-diagnostics-alternate=true  |
| DefaultValue    | YES                              |
| Name            | CLANG_ANALYZER_ALTERNATE_EDGES   |
| Type            | Boolean                          |
| References      |                                  |

</div>

<div id="CLANG_ANALYZER_REPORT_MAIN_SOURCE_FILE" class="Subhead">

## 🔐 CLANG_ANALYZER_REPORT_MAIN_SOURCE_FILE

|                 |                                        |
|-----------------|----------------------------------------|
| CommandLineArgs |                                        |
| `NO`            |                                        |
| `YES`           | -Xclang                                |
|                 | -analyzer-config                       |
|                 | -Xclang                                |
|                 | report-in-main-source-file=true        |
| DefaultValue    | YES                                    |
| Name            | CLANG_ANALYZER_REPORT_MAIN_SOURCE_FILE |
| Type            | Boolean                                |
| References      |                                        |

</div>

<div id="CLANG_STATIC_ANALYZER_MODE_ACTION_shallow" class="Subhead">

## 🔐 CLANG_STATIC_ANALYZER_MODE_ACTION_shallow

|              |                                           |
|--------------|-------------------------------------------|
| DefaultValue | Shallow                                   |
| Name         | CLANG_STATIC_ANALYZER_MODE_ACTION_shallow |
| Type         | String                                    |
| References   |                                           |

</div>

<div id="CLANG_STATIC_ANALYZER_MODE_ACTION_deep" class="Subhead">

## 🔐 CLANG_STATIC_ANALYZER_MODE_ACTION_deep

|              |                                        |
|--------------|----------------------------------------|
| DefaultValue |                                        |
| Name         | CLANG_STATIC_ANALYZER_MODE_ACTION_deep |
| Type         | String                                 |
| References   |                                        |

</div>

<div id="CLANG_ANALYZER_MALLOC" class="Subhead">

## 🔐 CLANG_ANALYZER_MALLOC

|              |                                                   |
|--------------|---------------------------------------------------|
| DefaultValue | YES                                               |
| Name         | CLANG_ANALYZER_MALLOC                             |
| Type         | Boolean                                           |
| References   | [CLANG_ANALYZER_MEMORY_MANAGEMENT](#dev6829dbf90) |

</div>

<div id="CLANG_ANALYZER_USE_AFTER_MOVE" class="Subhead">

## 🔐 CLANG_ANALYZER_USE_AFTER_MOVE

|                  |                                  |
|------------------|----------------------------------|
| Category         | SACheckers                       |
| CommandLineArgs  |                                  |
| `NO`             | -Xclang                          |
|                  | -analyzer-disable-checker        |
|                  | -Xclang                          |
|                  | cplusplus.Move                   |
| `YES`            | -Xclang                          |
|                  | -analyzer-config                 |
|                  | -Xclang                          |
|                  | cplusplus.Move:WarnOn=KnownsOnly |
| `YES_AGGRESSIVE` |                                  |
| DefaultValue     | YES_AGGRESSIVE                   |
| Name             | CLANG_ANALYZER_USE_AFTER_MOVE    |
| Type             | Enumeration                      |
| Values           | YES_AGGRESSIVE                   |
|                  | YES                              |
|                  | NO                               |
| References       |                                  |

</div>

<div id="CLANG_ANALYZER_MIG_CONVENTIONS" class="Subhead">

## 🔐 CLANG_ANALYZER_MIG_CONVENTIONS

|                 |                                |
|-----------------|--------------------------------|
| Category        | SAAppleAPICheckers             |
| CommandLineArgs |                                |
| `NO`            | -Xclang                        |
|                 | -analyzer-disable-checker      |
|                 | -Xclang                        |
|                 | osx.MIG                        |
| `YES`           |                                |
| DefaultValue    | YES                            |
| Name            | CLANG_ANALYZER_MIG_CONVENTIONS |
| Type            | Enumeration                    |
| Values          | YES                            |
|                 | NO                             |
| References      |                                |

</div>

<div id="CLANG_ANALYZER_LIBKERN_RETAIN_COUNT" class="Subhead">

## 🔐 CLANG_ANALYZER_LIBKERN_RETAIN_COUNT

|                 |                                           |
|-----------------|-------------------------------------------|
| Category        | SAAppleAPICheckers                        |
| CommandLineArgs |                                           |
| `NO`            | -Xclang                                   |
|                 | -analyzer-config                          |
|                 | -Xclang                                   |
|                 | osx.cocoa.RetainCount:CheckOSObject=false |
| `YES`           |                                           |
| DefaultValue    | YES                                       |
| Name            | CLANG_ANALYZER_LIBKERN_RETAIN_COUNT       |
| Type            | Boolean                                   |
| References      |                                           |

</div>

<div id="CLANG_ANALYZER_OTHER_CHECKERS" class="Subhead">

## 🔐 CLANG_ANALYZER_OTHER_CHECKERS

|                 |                               |
|-----------------|-------------------------------|
| CommandLineArgs | -Xclang                       |
|                 | -analyzer-checker             |
|                 | -Xclang                       |
|                 | \$([value](#value))           |
| FileTypes       | sourcecode.c.c                |
|                 | sourcecode.c.objc             |
|                 | sourcecode.cpp.cpp            |
|                 | sourcecode.cpp.objcpp         |
| Name            | CLANG_ANALYZER_OTHER_CHECKERS |
| Type            | StringList                    |
| References      |                               |

</div>

<div id="CLANG_ANALYZER_OTHER_FLAGS" class="Subhead">

## 🔐 CLANG_ANALYZER_OTHER_FLAGS

|                 |                            |
|-----------------|----------------------------|
| CommandLineArgs | -Xclang                    |
|                 | \$([value](#value))        |
| FileTypes       | sourcecode.c.c             |
|                 | sourcecode.c.objc          |
|                 | sourcecode.cpp.cpp         |
|                 | sourcecode.cpp.objcpp      |
| Name            | CLANG_ANALYZER_OTHER_FLAGS |
| Type            | StringList                 |
| References      |                            |

</div>

<div id="CLANG" class="Subhead">

## 🔐 CLANG

|              |                                                                                                 |
|--------------|-------------------------------------------------------------------------------------------------|
| DefaultValue | clang                                                                                           |
| Name         | CLANG                                                                                           |
| Type         | Path                                                                                            |
| References   | [CLANG_ADDRESS_SANITIZER](#CLANG_ADDRESS_SANITIZER)                                             |
|              | [CLANG_ADDRESS_SANITIZER_CONTAINER_OVERFLOW](#dev82671bc31)                                     |
|              | [CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE](#CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE)             |
|              | [CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES](#dev681c8d33f)                          |
|              | [CLANG_ANALYZER_ALTERNATE_EDGES](#CLANG_ANALYZER_ALTERNATE_EDGES)                               |
|              | [CLANG_ANALYZER_DEADCODE_DEADSTORES](#dev13d390204)                                             |
|              | [CLANG_ANALYZER_DEFINES](#CLANG_ANALYZER_DEFINES)                                               |
|              | [CLANG_ANALYZER_EXEC](#CLANG_ANALYZER_EXEC)                                                     |
|              | [CLANG_ANALYZER_GCD](#devb1795c367)                                                             |
|              | [CLANG_ANALYZER_GCD_PERFORMANCE](#dev169f5baf0)                                                 |
|              | [CLANG_ANALYZER_LIBKERN_RETAIN_COUNT](#CLANG_ANALYZER_LIBKERN_RETAIN_COUNT)                     |
|              | [CLANG_ANALYZER_LOCALIZABILITY_EMPTY_CONTEXT](#dev8a5b1ad3c)                                    |
|              | [CLANG_ANALYZER_LOCALIZABILITY_NONLOCALIZED](#dev6ac3afd8b)                                     |
|              | [CLANG_ANALYZER_MALLOC](#CLANG_ANALYZER_MALLOC)                                                 |
|              | [CLANG_ANALYZER_MEMORY_MANAGEMENT](#dev6829dbf90)                                               |
|              | [CLANG_ANALYZER_MIG_CONVENTIONS](#CLANG_ANALYZER_MIG_CONVENTIONS)                               |
|              | [CLANG_ANALYZER_NONNULL](#dev7b56133c7)                                                         |
|              | [CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION](#devf5ec1d2b2)                                        |
|              | [CLANG_ANALYZER_OBJC_ATSYNC](#dev956449180)                                                     |
|              | [CLANG_ANALYZER_OBJC_COLLECTIONS](#devee99cf812)                                                |
|              | [CLANG_ANALYZER_OBJC_DEALLOC](#dev2f0a5fa58)                                                    |
|              | [CLANG_ANALYZER_OBJC_GENERICS](#dev3504a78dd)                                                   |
|              | [CLANG_ANALYZER_OBJC_INCOMP_METHOD_TYPES](#dev17d7f881e)                                        |
|              | [CLANG_ANALYZER_OBJC_NSCFERROR](#deva200b5505)                                                  |
|              | [CLANG_ANALYZER_OBJC_RETAIN_COUNT](#dev1425c63b1)                                               |
|              | [CLANG_ANALYZER_OBJC_SELF_INIT](#deva8abac772)                                                  |
|              | [CLANG_ANALYZER_OBJC_UNUSED_IVARS](#dev74e40f8dd)                                               |
|              | [CLANG_ANALYZER_OTHER_CHECKERS](#CLANG_ANALYZER_OTHER_CHECKERS)                                 |
|              | [CLANG_ANALYZER_OTHER_FLAGS](#CLANG_ANALYZER_OTHER_FLAGS)                                       |
|              | [CLANG_ANALYZER_OUTPUT](#CLANG_ANALYZER_OUTPUT)                                                 |
|              | [CLANG_ANALYZER_OUTPUT_DIR](#CLANG_ANALYZER_OUTPUT_DIR)                                         |
|              | [CLANG_ANALYZER_REPORT_MAIN_SOURCE_FILE](#CLANG_ANALYZER_REPORT_MAIN_SOURCE_FILE)               |
|              | [CLANG_ANALYZER_SECURITY_BUFFER_OVERFLOW_EXPERIMENTAL](#dev21f7c3dec)                           |
|              | [CLANG_ANALYZER_SECURITY_FLOATLOOPCOUNTER](#devb2ae484e7)                                       |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_GETPW_GETS](#devfe5a6368e)                                 |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_MKSTEMP](#devfa2853b09)                                    |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_RAND](#dev1050059bf)                                       |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_STRCPY](#dev94df6a128)                                     |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_UNCHECKEDRETURN](#dev5d6ddc463)                            |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_VFORK](#deva42ba467a)                                      |
|              | [CLANG_ANALYZER_SECURITY_KEYCHAIN_API](#deva874ed373)                                           |
|              | [CLANG_ANALYZER_USE_AFTER_MOVE](#CLANG_ANALYZER_USE_AFTER_MOVE)                                 |
|              | [CLANG_ARC_MIGRATE_DIR](#CLANG_ARC_MIGRATE_DIR)                                                 |
|              | [CLANG_ARC_MIGRATE_EMIT_ERROR](#CLANG_ARC_MIGRATE_EMIT_ERROR)                                   |
|              | [CLANG_ARC_MIGRATE_PRECHECK](#CLANG_ARC_MIGRATE_PRECHECK)                                       |
|              | [CLANG_ARC_MIGRATE_REPORT_OUTPUT](#CLANG_ARC_MIGRATE_REPORT_OUTPUT)                             |
|              | [CLANG_BITCODE_GENERATION_MODE](#CLANG_BITCODE_GENERATION_MODE)                                 |
|              | [CLANG_COLOR_DIAGNOSTICS](#CLANG_COLOR_DIAGNOSTICS)                                             |
|              | [CLANG_COVERAGE_MAPPING](#CLANG_COVERAGE_MAPPING)                                               |
|              | [CLANG_COVERAGE_MAPPING_LINKER_ARGS](#CLANG_COVERAGE_MAPPING_LINKER_ARGS)                       |
|              | [CLANG_CXX_LANGUAGE_STANDARD](#dev69c9c24a6)                                                    |
|              | [CLANG_CXX_LIBRARY](#dev1c07266ef)                                                              |
|              | [CLANG_DEBUG_INFORMATION_LEVEL](#dev75a59f57c)                                                  |
|              | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES)                                                     |
|              | [CLANG_DIAGNOSTICS_FILE](#CLANG_DIAGNOSTICS_FILE)                                               |
|              | [CLANG_ENABLE_APP_EXTENSION](#CLANG_ENABLE_APP_EXTENSION)                                       |
|              | [CLANG_ENABLE_CODE_COVERAGE](#devaec10c397)                                                     |
|              | [CLANG_ENABLE_CPP_STATIC_DESTRUCTORS](#CLANG_ENABLE_CPP_STATIC_DESTRUCTORS)                     |
|              | [CLANG_ENABLE_MODULES](#dev342502821)                                                           |
|              | [CLANG_ENABLE_MODULE_DEBUGGING](#dev8ddca0338)                                                  |
|              | [CLANG_ENABLE_MODULE_IMPLEMENTATION_OF](#CLANG_ENABLE_MODULE_IMPLEMENTATION_OF)                 |
|              | [CLANG_ENABLE_OBJC_ARC](#dev38319e299)                                                          |
|              | [CLANG_ENABLE_OBJC_WEAK](#devd345182aa)                                                         |
|              | [CLANG_INDEX_STORE_ENABLE](#CLANG_INDEX_STORE_ENABLE)                                           |
|              | [CLANG_INDEX_STORE_PATH](#CLANG_INDEX_STORE_PATH)                                               |
|              | [CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING](#CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING)     |
|              | [CLANG_LINK_OBJC_RUNTIME](#dev154d026c7)                                                        |
|              | [CLANG_MACRO_BACKTRACE_LIMIT](#CLANG_MACRO_BACKTRACE_LIMIT)                                     |
|              | [CLANG_MIGRATOR_ANNOTATIONS](#dev155a58486)                                                     |
|              | [CLANG_MIGRATOR_INSTANCE_TYPE](#dev96a0344f5)                                                   |
|              | [CLANG_MIGRATOR_NSENUM_MACROS](#dev8ae0ba011)                                                   |
|              | [CLANG_MIGRATOR_OBJC_DESIGNATED_INIT](#dev77888612f)                                            |
|              | [CLANG_MIGRATOR_OBJC_LITERALS](#dev260be96f6)                                                   |
|              | [CLANG_MIGRATOR_OBJC_SUBSCRIPTING](#dev3f174b39f)                                               |
|              | [CLANG_MIGRATOR_PROPERTY_ATOMICITY](#dev59e943d6a)                                              |
|              | [CLANG_MIGRATOR_PROPERTY_DOT_SYNTAX](#dev62d5e0c42)                                             |
|              | [CLANG_MIGRATOR_PROTOCOL_CONFORMANCE](#dev3046d0054)                                            |
|              | [CLANG_MIGRATOR_PUBLIC_HEADERS_ONLY](#deva7fd4dc2a)                                             |
|              | [CLANG_MIGRATOR_READONLY_PROPERTY](#deva3e4d0d7e)                                               |
|              | [CLANG_MIGRATOR_READWRITE_PROPERTY](#dev4a396cca1)                                              |
|              | [CLANG_MODULES_AUTOLINK](#dev8af2e0c85)                                                         |
|              | [CLANG_MODULES_BUILD_SESSION_FILE](#CLANG_MODULES_BUILD_SESSION_FILE)                           |
|              | [CLANG_MODULES_DISABLE_PRIVATE_WARNING](#deve1588074c)                                          |
|              | [CLANG_MODULES_IGNORE_MACROS](#CLANG_MODULES_IGNORE_MACROS)                                     |
|              | [CLANG_MODULES_PRUNE_AFTER](#CLANG_MODULES_PRUNE_AFTER)                                         |
|              | [CLANG_MODULES_PRUNE_INTERVAL](#CLANG_MODULES_PRUNE_INTERVAL)                                   |
|              | [CLANG_MODULES_VALIDATE_SYSTEM_HEADERS](#CLANG_MODULES_VALIDATE_SYSTEM_HEADERS)                 |
|              | [CLANG_MODULE_CACHE_PATH](#CLANG_MODULE_CACHE_PATH)                                             |
|              | [CLANG_MODULE_LSV](#CLANG_MODULE_LSV)                                                           |
|              | [CLANG_OBJC_MIGRATE_DIR](#CLANG_OBJC_MIGRATE_DIR)                                               |
|              | [CLANG_OPTIMIZATION_PROFILE_FILE](#dev7f935916c)                                                |
|              | [CLANG_RETAIN_COMMENTS_FROM_SYSTEM_HEADERS](#CLANG_RETAIN_COMMENTS_FROM_SYSTEM_HEADERS)         |
|              | [CLANG_STATIC_ANALYZER_MODE](#dev6e81753b1)                                                     |
|              | [CLANG_STATIC_ANALYZER_MODE_ACTION_deep](#CLANG_STATIC_ANALYZER_MODE_ACTION_deep)               |
|              | [CLANG_STATIC_ANALYZER_MODE_ACTION_shallow](#CLANG_STATIC_ANALYZER_MODE_ACTION_shallow)         |
|              | [CLANG_STATIC_ANALYZER_MODE_ON_ANALYZE_ACTION](#dev965b782f3)                                   |
|              | [CLANG_TARGET_TRIPLE_ARCHS](#CLANG_TARGET_TRIPLE_ARCHS)                                         |
|              | [CLANG_TARGET_TRIPLE_VARIANTS](#CLANG_TARGET_TRIPLE_VARIANTS)                                   |
|              | [CLANG_THREAD_SANITIZER](#CLANG_THREAD_SANITIZER)                                               |
|              | [CLANG_TRIVIAL_AUTO_VAR_INIT](#CLANG_TRIVIAL_AUTO_VAR_INIT)                                     |
|              | [CLANG_UNDEFINED_BEHAVIOR_SANITIZER](#CLANG_UNDEFINED_BEHAVIOR_SANITIZER)                       |
|              | [CLANG_UNDEFINED_BEHAVIOR_SANITIZER_INTEGER](#dev11cdd52f0)                                     |
|              | [CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY](#dev91bb4ec91)                                 |
|              | [CLANG_USE_OPTIMIZATION_PROFILE](#devb3d935f24)                                                 |
|              | [CLANG_WARN_ASSIGN_ENUM](#dev156fad762)                                                         |
|              | [CLANG_WARN_ATOMIC_IMPLICIT_SEQ_CST](#CLANG_WARN_ATOMIC_IMPLICIT_SEQ_CST)                       |
|              | [CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING](#devbd065fb46)                                         |
|              | [CLANG_WARN_BOOL_CONVERSION](#dev7fdc71364)                                                     |
|              | [CLANG_WARN_COMMA](#dev4adf9047e)                                                               |
|              | [CLANG_WARN_CONSTANT_CONVERSION](#dev813da6ed5)                                                 |
|              | [CLANG_WARN_CXX0X_EXTENSIONS](#deve87099c47)                                                    |
|              | [CLANG_WARN_DELETE_NON_VIRTUAL_DTOR](#dev2e5bb0240)                                             |
|              | [CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS](#dev7d445c758)                                     |
|              | [CLANG_WARN_DIRECT_OBJC_ISA_USAGE](#dev3eeef651b)                                               |
|              | [CLANG_WARN_DOCUMENTATION_COMMENTS](#devcf351a146)                                              |
|              | [CLANG_WARN_EMPTY_BODY](#dev7c324a687)                                                          |
|              | [CLANG_WARN_ENUM_CONVERSION](#dev16cbe25b3)                                                     |
|              | [CLANG_WARN_FLOAT_CONVERSION](#dev90e0ab556)                                                    |
|              | [CLANG_WARN_IMPLICIT_SIGN_CONVERSION](#devd99476ddb)                                            |
|              | [CLANG_WARN_INFINITE_RECURSION](#dev371c2169f)                                                  |
|              | [CLANG_WARN_INT_CONVERSION](#dev7721afbda)                                                      |
|              | [CLANG_WARN_MISSING_NOESCAPE](#devd1fca57ed)                                                    |
|              | [CLANG_WARN_NON_LITERAL_NULL_CONVERSION](#dev0f46fbbee)                                         |
|              | [CLANG_WARN_NULLABLE_TO_NONNULL_CONVERSION](#dev7d4353bd0)                                      |
|              | [CLANG_WARN_OBJC_EXPLICIT_OWNERSHIP_TYPE](#dev9c07b2231)                                        |
|              | [CLANG_WARN_OBJC_IMPLICIT_ATOMIC_PROPERTIES](#devcb601b74f)                                     |
|              | [CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF](#dev24b4459e9)                                           |
|              | [CLANG_WARN_OBJC_INTERFACE_IVARS](#dev2734a43ca)                                                |
|              | [CLANG_WARN_OBJC_LITERAL_CONVERSION](#dev40efdf012)                                             |
|              | [CLANG_WARN_OBJC_MISSING_PROPERTY_SYNTHESIS](#dev7f502c3b2)                                     |
|              | [CLANG_WARN_OBJC_REPEATED_USE_OF_WEAK](#dev5b70653f7)                                           |
|              | [CLANG_WARN_OBJC_ROOT_CLASS](#dev04a3f8f81)                                                     |
|              | [CLANG_WARN_PRAGMA_PACK](#dev248b97a02)                                                         |
|              | [CLANG_WARN_PRIVATE_MODULE](#dev5b9f307d1)                                                      |
|              | [CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER](#CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER) |
|              | [CLANG_WARN_RANGE_LOOP_ANALYSIS](#dev6396e9262)                                                 |
|              | [CLANG_WARN_SEMICOLON_BEFORE_METHOD_BODY](#dev20dc51521)                                        |
|              | [CLANG_WARN_STRICT_PROTOTYPES](#deve2459c252)                                                   |
|              | [CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION](#deved57c5818)                                      |
|              | [CLANG_WARN_SUSPICIOUS_MOVE](#devfbce6202a)                                                     |
|              | [CLANG_WARN_UNGUARDED_AVAILABILITY](#dev6d835779d)                                              |
|              | [CLANG_WARN_UNREACHABLE_CODE](#deve11836916)                                                    |
|              | [CLANG_WARN_VEXING_PARSE](#dev0bb4ad307)                                                        |
|              | [CLANG_WARN__ARC_BRIDGE_CAST_NONARC](#dev8713c2992)                                             |
|              | [CLANG_WARN__DUPLICATE_METHOD_MATCH](#devc5a443195)                                             |
|              | [CLANG_WARN__EXIT_TIME_DESTRUCTORS](#dev459e1b68f)                                              |
|              | [CLANG_X86_VECTOR_INSTRUCTIONS](#dev39e2d7a5a)                                                  |
|              | [GCC_MACOSX_VERSION_MIN](#GCC_MACOSX_VERSION_MIN)                                               |
|              | [LD_DEPLOYMENT_TARGET](#LD_DEPLOYMENT_TARGET)                                                   |
|              | [MTL_DEPLOYMENT_TARGET](#MTL_DEPLOYMENT_TARGET)                                                 |
|              | [MTL_TARGET_TRIPLE](#MTL_TARGET_TRIPLE)                                                         |
|              | [RUN_CLANG_STATIC_ANALYZER](#dev454cbd652)                                                      |
|              | [USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)                         |
|              | [arch](#arch)                                                                                   |

</div>

<div id="CLANG_INDEX_STORE_ENABLE" class="Subhead">

## 🔐 CLANG_INDEX_STORE_ENABLE

|                 |                                                                                                                                                                                      |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                                                                                                      |
| `NO`            |                                                                                                                                                                                      |
| `YES`           | -index-store-path                                                                                                                                                                    |
|                 | \$([CLANG_INDEX_STORE_PATH](#CLANG_INDEX_STORE_PATH))                                                                                                                                |
| Condition       | \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == YES  \|\|  ( \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == Default  &&  \$([GCC_OPTIMIZATION_LEVEL](#dev80f5ad208)) == 0 ) |
| DefaultValue    | \$([INDEX_ENABLE_DATA_STORE](#INDEX_ENABLE_DATA_STORE))                                                                                                                              |
| Name            | CLANG_INDEX_STORE_ENABLE                                                                                                                                                             |
| Type            | Boolean                                                                                                                                                                              |
| References      |                                                                                                                                                                                      |

</div>

<div id="CLANG" class="Subhead">

## 🔐 CLANG

|              |                                                                                                 |
|--------------|-------------------------------------------------------------------------------------------------|
| DefaultValue | clang                                                                                           |
| Name         | CLANG                                                                                           |
| Type         | Path                                                                                            |
| References   | [CLANG_ADDRESS_SANITIZER](#CLANG_ADDRESS_SANITIZER)                                             |
|              | [CLANG_ADDRESS_SANITIZER_CONTAINER_OVERFLOW](#dev82671bc31)                                     |
|              | [CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE](#CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE)             |
|              | [CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES](#dev681c8d33f)                          |
|              | [CLANG_ANALYZER_ALTERNATE_EDGES](#CLANG_ANALYZER_ALTERNATE_EDGES)                               |
|              | [CLANG_ANALYZER_DEADCODE_DEADSTORES](#dev13d390204)                                             |
|              | [CLANG_ANALYZER_DEFINES](#CLANG_ANALYZER_DEFINES)                                               |
|              | [CLANG_ANALYZER_EXEC](#CLANG_ANALYZER_EXEC)                                                     |
|              | [CLANG_ANALYZER_GCD](#devb1795c367)                                                             |
|              | [CLANG_ANALYZER_GCD_PERFORMANCE](#dev169f5baf0)                                                 |
|              | [CLANG_ANALYZER_LIBKERN_RETAIN_COUNT](#CLANG_ANALYZER_LIBKERN_RETAIN_COUNT)                     |
|              | [CLANG_ANALYZER_LOCALIZABILITY_EMPTY_CONTEXT](#dev8a5b1ad3c)                                    |
|              | [CLANG_ANALYZER_LOCALIZABILITY_NONLOCALIZED](#dev6ac3afd8b)                                     |
|              | [CLANG_ANALYZER_MALLOC](#CLANG_ANALYZER_MALLOC)                                                 |
|              | [CLANG_ANALYZER_MEMORY_MANAGEMENT](#dev6829dbf90)                                               |
|              | [CLANG_ANALYZER_MIG_CONVENTIONS](#CLANG_ANALYZER_MIG_CONVENTIONS)                               |
|              | [CLANG_ANALYZER_NONNULL](#dev7b56133c7)                                                         |
|              | [CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION](#devf5ec1d2b2)                                        |
|              | [CLANG_ANALYZER_OBJC_ATSYNC](#dev956449180)                                                     |
|              | [CLANG_ANALYZER_OBJC_COLLECTIONS](#devee99cf812)                                                |
|              | [CLANG_ANALYZER_OBJC_DEALLOC](#dev2f0a5fa58)                                                    |
|              | [CLANG_ANALYZER_OBJC_GENERICS](#dev3504a78dd)                                                   |
|              | [CLANG_ANALYZER_OBJC_INCOMP_METHOD_TYPES](#dev17d7f881e)                                        |
|              | [CLANG_ANALYZER_OBJC_NSCFERROR](#deva200b5505)                                                  |
|              | [CLANG_ANALYZER_OBJC_RETAIN_COUNT](#dev1425c63b1)                                               |
|              | [CLANG_ANALYZER_OBJC_SELF_INIT](#deva8abac772)                                                  |
|              | [CLANG_ANALYZER_OBJC_UNUSED_IVARS](#dev74e40f8dd)                                               |
|              | [CLANG_ANALYZER_OTHER_CHECKERS](#CLANG_ANALYZER_OTHER_CHECKERS)                                 |
|              | [CLANG_ANALYZER_OTHER_FLAGS](#CLANG_ANALYZER_OTHER_FLAGS)                                       |
|              | [CLANG_ANALYZER_OUTPUT](#CLANG_ANALYZER_OUTPUT)                                                 |
|              | [CLANG_ANALYZER_OUTPUT_DIR](#CLANG_ANALYZER_OUTPUT_DIR)                                         |
|              | [CLANG_ANALYZER_REPORT_MAIN_SOURCE_FILE](#CLANG_ANALYZER_REPORT_MAIN_SOURCE_FILE)               |
|              | [CLANG_ANALYZER_SECURITY_BUFFER_OVERFLOW_EXPERIMENTAL](#dev21f7c3dec)                           |
|              | [CLANG_ANALYZER_SECURITY_FLOATLOOPCOUNTER](#devb2ae484e7)                                       |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_GETPW_GETS](#devfe5a6368e)                                 |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_MKSTEMP](#devfa2853b09)                                    |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_RAND](#dev1050059bf)                                       |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_STRCPY](#dev94df6a128)                                     |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_UNCHECKEDRETURN](#dev5d6ddc463)                            |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_VFORK](#deva42ba467a)                                      |
|              | [CLANG_ANALYZER_SECURITY_KEYCHAIN_API](#deva874ed373)                                           |
|              | [CLANG_ANALYZER_USE_AFTER_MOVE](#CLANG_ANALYZER_USE_AFTER_MOVE)                                 |
|              | [CLANG_ARC_MIGRATE_DIR](#CLANG_ARC_MIGRATE_DIR)                                                 |
|              | [CLANG_ARC_MIGRATE_EMIT_ERROR](#CLANG_ARC_MIGRATE_EMIT_ERROR)                                   |
|              | [CLANG_ARC_MIGRATE_PRECHECK](#CLANG_ARC_MIGRATE_PRECHECK)                                       |
|              | [CLANG_ARC_MIGRATE_REPORT_OUTPUT](#CLANG_ARC_MIGRATE_REPORT_OUTPUT)                             |
|              | [CLANG_BITCODE_GENERATION_MODE](#CLANG_BITCODE_GENERATION_MODE)                                 |
|              | [CLANG_COLOR_DIAGNOSTICS](#CLANG_COLOR_DIAGNOSTICS)                                             |
|              | [CLANG_COVERAGE_MAPPING](#CLANG_COVERAGE_MAPPING)                                               |
|              | [CLANG_COVERAGE_MAPPING_LINKER_ARGS](#CLANG_COVERAGE_MAPPING_LINKER_ARGS)                       |
|              | [CLANG_CXX_LANGUAGE_STANDARD](#dev69c9c24a6)                                                    |
|              | [CLANG_CXX_LIBRARY](#dev1c07266ef)                                                              |
|              | [CLANG_DEBUG_INFORMATION_LEVEL](#dev75a59f57c)                                                  |
|              | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES)                                                     |
|              | [CLANG_DIAGNOSTICS_FILE](#CLANG_DIAGNOSTICS_FILE)                                               |
|              | [CLANG_ENABLE_APP_EXTENSION](#CLANG_ENABLE_APP_EXTENSION)                                       |
|              | [CLANG_ENABLE_CODE_COVERAGE](#devaec10c397)                                                     |
|              | [CLANG_ENABLE_CPP_STATIC_DESTRUCTORS](#CLANG_ENABLE_CPP_STATIC_DESTRUCTORS)                     |
|              | [CLANG_ENABLE_MODULES](#dev342502821)                                                           |
|              | [CLANG_ENABLE_MODULE_DEBUGGING](#dev8ddca0338)                                                  |
|              | [CLANG_ENABLE_MODULE_IMPLEMENTATION_OF](#CLANG_ENABLE_MODULE_IMPLEMENTATION_OF)                 |
|              | [CLANG_ENABLE_OBJC_ARC](#dev38319e299)                                                          |
|              | [CLANG_ENABLE_OBJC_WEAK](#devd345182aa)                                                         |
|              | [CLANG_INDEX_STORE_ENABLE](#CLANG_INDEX_STORE_ENABLE)                                           |
|              | [CLANG_INDEX_STORE_PATH](#CLANG_INDEX_STORE_PATH)                                               |
|              | [CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING](#CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING)     |
|              | [CLANG_LINK_OBJC_RUNTIME](#dev154d026c7)                                                        |
|              | [CLANG_MACRO_BACKTRACE_LIMIT](#CLANG_MACRO_BACKTRACE_LIMIT)                                     |
|              | [CLANG_MIGRATOR_ANNOTATIONS](#dev155a58486)                                                     |
|              | [CLANG_MIGRATOR_INSTANCE_TYPE](#dev96a0344f5)                                                   |
|              | [CLANG_MIGRATOR_NSENUM_MACROS](#dev8ae0ba011)                                                   |
|              | [CLANG_MIGRATOR_OBJC_DESIGNATED_INIT](#dev77888612f)                                            |
|              | [CLANG_MIGRATOR_OBJC_LITERALS](#dev260be96f6)                                                   |
|              | [CLANG_MIGRATOR_OBJC_SUBSCRIPTING](#dev3f174b39f)                                               |
|              | [CLANG_MIGRATOR_PROPERTY_ATOMICITY](#dev59e943d6a)                                              |
|              | [CLANG_MIGRATOR_PROPERTY_DOT_SYNTAX](#dev62d5e0c42)                                             |
|              | [CLANG_MIGRATOR_PROTOCOL_CONFORMANCE](#dev3046d0054)                                            |
|              | [CLANG_MIGRATOR_PUBLIC_HEADERS_ONLY](#deva7fd4dc2a)                                             |
|              | [CLANG_MIGRATOR_READONLY_PROPERTY](#deva3e4d0d7e)                                               |
|              | [CLANG_MIGRATOR_READWRITE_PROPERTY](#dev4a396cca1)                                              |
|              | [CLANG_MODULES_AUTOLINK](#dev8af2e0c85)                                                         |
|              | [CLANG_MODULES_BUILD_SESSION_FILE](#CLANG_MODULES_BUILD_SESSION_FILE)                           |
|              | [CLANG_MODULES_DISABLE_PRIVATE_WARNING](#deve1588074c)                                          |
|              | [CLANG_MODULES_IGNORE_MACROS](#CLANG_MODULES_IGNORE_MACROS)                                     |
|              | [CLANG_MODULES_PRUNE_AFTER](#CLANG_MODULES_PRUNE_AFTER)                                         |
|              | [CLANG_MODULES_PRUNE_INTERVAL](#CLANG_MODULES_PRUNE_INTERVAL)                                   |
|              | [CLANG_MODULES_VALIDATE_SYSTEM_HEADERS](#CLANG_MODULES_VALIDATE_SYSTEM_HEADERS)                 |
|              | [CLANG_MODULE_CACHE_PATH](#CLANG_MODULE_CACHE_PATH)                                             |
|              | [CLANG_MODULE_LSV](#CLANG_MODULE_LSV)                                                           |
|              | [CLANG_OBJC_MIGRATE_DIR](#CLANG_OBJC_MIGRATE_DIR)                                               |
|              | [CLANG_OPTIMIZATION_PROFILE_FILE](#dev7f935916c)                                                |
|              | [CLANG_RETAIN_COMMENTS_FROM_SYSTEM_HEADERS](#CLANG_RETAIN_COMMENTS_FROM_SYSTEM_HEADERS)         |
|              | [CLANG_STATIC_ANALYZER_MODE](#dev6e81753b1)                                                     |
|              | [CLANG_STATIC_ANALYZER_MODE_ACTION_deep](#CLANG_STATIC_ANALYZER_MODE_ACTION_deep)               |
|              | [CLANG_STATIC_ANALYZER_MODE_ACTION_shallow](#CLANG_STATIC_ANALYZER_MODE_ACTION_shallow)         |
|              | [CLANG_STATIC_ANALYZER_MODE_ON_ANALYZE_ACTION](#dev965b782f3)                                   |
|              | [CLANG_TARGET_TRIPLE_ARCHS](#CLANG_TARGET_TRIPLE_ARCHS)                                         |
|              | [CLANG_TARGET_TRIPLE_VARIANTS](#CLANG_TARGET_TRIPLE_VARIANTS)                                   |
|              | [CLANG_THREAD_SANITIZER](#CLANG_THREAD_SANITIZER)                                               |
|              | [CLANG_TRIVIAL_AUTO_VAR_INIT](#CLANG_TRIVIAL_AUTO_VAR_INIT)                                     |
|              | [CLANG_UNDEFINED_BEHAVIOR_SANITIZER](#CLANG_UNDEFINED_BEHAVIOR_SANITIZER)                       |
|              | [CLANG_UNDEFINED_BEHAVIOR_SANITIZER_INTEGER](#dev11cdd52f0)                                     |
|              | [CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY](#dev91bb4ec91)                                 |
|              | [CLANG_USE_OPTIMIZATION_PROFILE](#devb3d935f24)                                                 |
|              | [CLANG_WARN_ASSIGN_ENUM](#dev156fad762)                                                         |
|              | [CLANG_WARN_ATOMIC_IMPLICIT_SEQ_CST](#CLANG_WARN_ATOMIC_IMPLICIT_SEQ_CST)                       |
|              | [CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING](#devbd065fb46)                                         |
|              | [CLANG_WARN_BOOL_CONVERSION](#dev7fdc71364)                                                     |
|              | [CLANG_WARN_COMMA](#dev4adf9047e)                                                               |
|              | [CLANG_WARN_CONSTANT_CONVERSION](#dev813da6ed5)                                                 |
|              | [CLANG_WARN_CXX0X_EXTENSIONS](#deve87099c47)                                                    |
|              | [CLANG_WARN_DELETE_NON_VIRTUAL_DTOR](#dev2e5bb0240)                                             |
|              | [CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS](#dev7d445c758)                                     |
|              | [CLANG_WARN_DIRECT_OBJC_ISA_USAGE](#dev3eeef651b)                                               |
|              | [CLANG_WARN_DOCUMENTATION_COMMENTS](#devcf351a146)                                              |
|              | [CLANG_WARN_EMPTY_BODY](#dev7c324a687)                                                          |
|              | [CLANG_WARN_ENUM_CONVERSION](#dev16cbe25b3)                                                     |
|              | [CLANG_WARN_FLOAT_CONVERSION](#dev90e0ab556)                                                    |
|              | [CLANG_WARN_IMPLICIT_SIGN_CONVERSION](#devd99476ddb)                                            |
|              | [CLANG_WARN_INFINITE_RECURSION](#dev371c2169f)                                                  |
|              | [CLANG_WARN_INT_CONVERSION](#dev7721afbda)                                                      |
|              | [CLANG_WARN_MISSING_NOESCAPE](#devd1fca57ed)                                                    |
|              | [CLANG_WARN_NON_LITERAL_NULL_CONVERSION](#dev0f46fbbee)                                         |
|              | [CLANG_WARN_NULLABLE_TO_NONNULL_CONVERSION](#dev7d4353bd0)                                      |
|              | [CLANG_WARN_OBJC_EXPLICIT_OWNERSHIP_TYPE](#dev9c07b2231)                                        |
|              | [CLANG_WARN_OBJC_IMPLICIT_ATOMIC_PROPERTIES](#devcb601b74f)                                     |
|              | [CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF](#dev24b4459e9)                                           |
|              | [CLANG_WARN_OBJC_INTERFACE_IVARS](#dev2734a43ca)                                                |
|              | [CLANG_WARN_OBJC_LITERAL_CONVERSION](#dev40efdf012)                                             |
|              | [CLANG_WARN_OBJC_MISSING_PROPERTY_SYNTHESIS](#dev7f502c3b2)                                     |
|              | [CLANG_WARN_OBJC_REPEATED_USE_OF_WEAK](#dev5b70653f7)                                           |
|              | [CLANG_WARN_OBJC_ROOT_CLASS](#dev04a3f8f81)                                                     |
|              | [CLANG_WARN_PRAGMA_PACK](#dev248b97a02)                                                         |
|              | [CLANG_WARN_PRIVATE_MODULE](#dev5b9f307d1)                                                      |
|              | [CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER](#CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER) |
|              | [CLANG_WARN_RANGE_LOOP_ANALYSIS](#dev6396e9262)                                                 |
|              | [CLANG_WARN_SEMICOLON_BEFORE_METHOD_BODY](#dev20dc51521)                                        |
|              | [CLANG_WARN_STRICT_PROTOTYPES](#deve2459c252)                                                   |
|              | [CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION](#deved57c5818)                                      |
|              | [CLANG_WARN_SUSPICIOUS_MOVE](#devfbce6202a)                                                     |
|              | [CLANG_WARN_UNGUARDED_AVAILABILITY](#dev6d835779d)                                              |
|              | [CLANG_WARN_UNREACHABLE_CODE](#deve11836916)                                                    |
|              | [CLANG_WARN_VEXING_PARSE](#dev0bb4ad307)                                                        |
|              | [CLANG_WARN__ARC_BRIDGE_CAST_NONARC](#dev8713c2992)                                             |
|              | [CLANG_WARN__DUPLICATE_METHOD_MATCH](#devc5a443195)                                             |
|              | [CLANG_WARN__EXIT_TIME_DESTRUCTORS](#dev459e1b68f)                                              |
|              | [CLANG_X86_VECTOR_INSTRUCTIONS](#dev39e2d7a5a)                                                  |
|              | [GCC_MACOSX_VERSION_MIN](#GCC_MACOSX_VERSION_MIN)                                               |
|              | [LD_DEPLOYMENT_TARGET](#LD_DEPLOYMENT_TARGET)                                                   |
|              | [MTL_DEPLOYMENT_TARGET](#MTL_DEPLOYMENT_TARGET)                                                 |
|              | [MTL_TARGET_TRIPLE](#MTL_TARGET_TRIPLE)                                                         |
|              | [RUN_CLANG_STATIC_ANALYZER](#dev454cbd652)                                                      |
|              | [USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)                         |
|              | [arch](#arch)                                                                                   |

</div>

<div id="CLANG_INDEX_STORE_ENABLE" class="Subhead">

## 🔐 CLANG_INDEX_STORE_ENABLE

|                 |                                                                                                                                                                                      |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                                                                                                      |
| `NO`            |                                                                                                                                                                                      |
| `YES`           | -index-store-path                                                                                                                                                                    |
|                 | \$([CLANG_INDEX_STORE_PATH](#CLANG_INDEX_STORE_PATH))                                                                                                                                |
| Condition       | \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == YES  \|\|  ( \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == Default  &&  \$([GCC_OPTIMIZATION_LEVEL](#dev80f5ad208)) == 0 ) |
| DefaultValue    | \$([INDEX_ENABLE_DATA_STORE](#INDEX_ENABLE_DATA_STORE))                                                                                                                              |
| Name            | CLANG_INDEX_STORE_ENABLE                                                                                                                                                             |
| Type            | Boolean                                                                                                                                                                              |
| References      |                                                                                                                                                                                      |

</div>

<div id="MOMC_OUTPUT_SUFFIX" class="Subhead">

## 🔐 MOMC_OUTPUT_SUFFIX

|              |                                                                       |
|--------------|-----------------------------------------------------------------------|
| DefaultValue | \$(MOMC_OUTPUT_SUFFIX_\$([InputFileSuffix](#InputFileSuffix)))        |
| Name         | MOMC_OUTPUT_SUFFIX                                                    |
| Type         | String                                                                |
| References   | [MOMC_OUTPUT_SUFFIX_.xcdatamodel](#MOMC_OUTPUT_SUFFIX_.xcdatamodel)   |
|              | [MOMC_OUTPUT_SUFFIX_.xcdatamodeld](#MOMC_OUTPUT_SUFFIX_.xcdatamodeld) |

</div>

<div id="MOMC_OUTPUT_SUFFIX_.xcdatamodeld" class="Subhead">

## 🔐 MOMC_OUTPUT_SUFFIX_.xcdatamodeld

|              |                                  |
|--------------|----------------------------------|
| DefaultValue | .momd                            |
| Name         | MOMC_OUTPUT_SUFFIX_.xcdatamodeld |
| Type         | String                           |
| References   |                                  |

</div>

<div id="MOMC_OUTPUT_SUFFIX_.xcdatamodel" class="Subhead">

## 🔐 MOMC_OUTPUT_SUFFIX_.xcdatamodel

|              |                                                                       |
|--------------|-----------------------------------------------------------------------|
| DefaultValue | .mom                                                                  |
| Name         | MOMC_OUTPUT_SUFFIX_.xcdatamodel                                       |
| Type         | String                                                                |
| References   | [MOMC_OUTPUT_SUFFIX_.xcdatamodeld](#MOMC_OUTPUT_SUFFIX_.xcdatamodeld) |

</div>

<div id="DEPLOYMENT_TARGET" class="Subhead">

## 🔐 DEPLOYMENT_TARGET

|                 |                                                                                 |
|-----------------|---------------------------------------------------------------------------------|
| CommandLineFlag | --\$([PLATFORM_NAME](#PLATFORM_NAME))-deployment-target                         |
| DefaultValue    | \$(\$([DEPLOYMENT_TARGET_SETTING_NAME](#DEPLOYMENT_TARGET_SETTING_NAME)))       |
| Name            | DEPLOYMENT_TARGET                                                               |
| Type            | String                                                                          |
| References      | [GCC_MACOSX_VERSION_MIN](#GCC_MACOSX_VERSION_MIN)                               |
|                 | [LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS](#LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS) |
|                 | [LD_DEPLOYMENT_TARGET](#LD_DEPLOYMENT_TARGET)                                   |
|                 | [LLVM_TARGET_TRIPLE_OS_VERSION](#LLVM_TARGET_TRIPLE_OS_VERSION)                 |
|                 | [MTL_DEPLOYMENT_TARGET](#MTL_DEPLOYMENT_TARGET)                                 |
|                 | [MTL_TARGET_TRIPLE](#MTL_TARGET_TRIPLE)                                         |
|                 | [SWIFT_DEPLOYMENT_TARGET](#SWIFT_DEPLOYMENT_TARGET)                             |
|                 | [SWIFT_TARGET_TRIPLE](#SWIFT_TARGET_TRIPLE)                                     |

</div>

<div id="MOMC_MODULE" class="Subhead">

## 🔐 MOMC_MODULE

|                 |                                          |
|-----------------|------------------------------------------|
| CommandLineFlag | --module                                 |
| DefaultValue    | \$([PRODUCT_MODULE_NAME](#dev93497cfe4)) |
| Name            | MOMC_MODULE                              |
| Type            | String                                   |
| References      |                                          |

</div>

<div id="build_file_compiler_flags" class="Subhead">

## 🔐 build_file_compiler_flags

|                       |                           |
|-----------------------|---------------------------|
| CommandLinePrefixFlag |                           |
| DefaultValue          |                           |
| Name                  | build_file_compiler_flags |
| Type                  | StringList                |
| References            |                           |

</div>

<div id="DEPLOYMENT_TARGET" class="Subhead">

## 🔐 DEPLOYMENT_TARGET

|                 |                                                                                 |
|-----------------|---------------------------------------------------------------------------------|
| CommandLineFlag | --\$([PLATFORM_NAME](#PLATFORM_NAME))-deployment-target                         |
| DefaultValue    | \$(\$([DEPLOYMENT_TARGET_SETTING_NAME](#DEPLOYMENT_TARGET_SETTING_NAME)))       |
| Name            | DEPLOYMENT_TARGET                                                               |
| Type            | String                                                                          |
| References      | [GCC_MACOSX_VERSION_MIN](#GCC_MACOSX_VERSION_MIN)                               |
|                 | [LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS](#LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS) |
|                 | [LD_DEPLOYMENT_TARGET](#LD_DEPLOYMENT_TARGET)                                   |
|                 | [LLVM_TARGET_TRIPLE_OS_VERSION](#LLVM_TARGET_TRIPLE_OS_VERSION)                 |
|                 | [MTL_DEPLOYMENT_TARGET](#MTL_DEPLOYMENT_TARGET)                                 |
|                 | [MTL_TARGET_TRIPLE](#MTL_TARGET_TRIPLE)                                         |
|                 | [SWIFT_DEPLOYMENT_TARGET](#SWIFT_DEPLOYMENT_TARGET)                             |
|                 | [SWIFT_TARGET_TRIPLE](#SWIFT_TARGET_TRIPLE)                                     |

</div>

<div id="build_file_compiler_flags" class="Subhead">

## 🔐 build_file_compiler_flags

|                       |                           |
|-----------------------|---------------------------|
| CommandLinePrefixFlag |                           |
| DefaultValue          |                           |
| Name                  | build_file_compiler_flags |
| Type                  | StringList                |
| References            |                           |

</div>

<div id="MAPC_MODULE" class="Subhead">

## 🔐 MAPC_MODULE

|                 |                                          |
|-----------------|------------------------------------------|
| CommandLineFlag | --module                                 |
| DefaultValue    | \$([PRODUCT_MODULE_NAME](#dev93497cfe4)) |
| Name            | MAPC_MODULE                              |
| Type            | String                                   |
| References      |                                          |

</div>

<div id="ENABLE_DEFAULT_HEADER_SEARCH_PATHS" class="Subhead">

## 🔐 ENABLE_DEFAULT_HEADER_SEARCH_PATHS

|              |                                    |
|--------------|------------------------------------|
| DefaultValue | YES                                |
| Name         | ENABLE_DEFAULT_HEADER_SEARCH_PATHS |
| Type         | Boolean                            |
| References   |                                    |

</div>

<div id="PRECOMP_DESTINATION_DIR" class="Subhead">

## 🔐 PRECOMP_DESTINATION_DIR

|              |                                         |
|--------------|-----------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/PrefixHeaders |
| Name         | PRECOMP_DESTINATION_DIR                 |
| Type         | String                                  |
| References   |                                         |

</div>

<div id="MARKETING_VERSION" class="Subhead">

## 🔐 MARKETING_VERSION

|              |                   |
|--------------|-------------------|
| DefaultValue |                   |
| Name         | MARKETING_VERSION |
| Type         | String            |
| References   |                   |

</div>

<div id="DWARF_DSYM_FILE_NAME" class="Subhead">

## 🔐 DWARF_DSYM_FILE_NAME

|              |                                                  |
|--------------|--------------------------------------------------|
| DefaultValue | \$([FULL_PRODUCT_NAME](#FULL_PRODUCT_NAME)).dSYM |
| Name         | DWARF_DSYM_FILE_NAME                             |
| Type         | String                                           |
| UIType       | String                                           |
| References   |                                                  |

</div>

<div id="DWARF_DSYM_FOLDER_PATH" class="Subhead">

## 🔐 DWARF_DSYM_FOLDER_PATH

|              |                                              |
|--------------|----------------------------------------------|
| DefaultValue | \$([CONFIGURATION_BUILD_DIR](#dev1eb1f6acb)) |
| Name         | DWARF_DSYM_FOLDER_PATH                       |
| Type         | String                                       |
| UIType       | String                                       |
| References   |                                              |

</div>

<div id="DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT" class="Subhead">

## 🔐 DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT

|              |                                          |
|--------------|------------------------------------------|
| DefaultValue | NO                                       |
| Name         | DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT |
| Type         | Boolean                                  |
| References   |                                          |

</div>

<div id="COLOR_DIAGNOSTICS" class="Subhead">

## 🔐 COLOR_DIAGNOSTICS

|              |                                                     |
|--------------|-----------------------------------------------------|
| DefaultValue | NO                                                  |
| Name         | COLOR_DIAGNOSTICS                                   |
| Type         | Boolean                                             |
| References   | [CLANG_COLOR_DIAGNOSTICS](#CLANG_COLOR_DIAGNOSTICS) |

</div>

<div id="HIDE_BITCODE_SYMBOLS" class="Subhead">

## 🔐 HIDE_BITCODE_SYMBOLS

|              |                                                                   |
|--------------|-------------------------------------------------------------------|
| DefaultValue | YES                                                               |
| Name         | HIDE_BITCODE_SYMBOLS                                              |
| Type         | Boolean                                                           |
| References   | [LD_GENERATE_BITCODE_SYMBOL_MAP](#LD_GENERATE_BITCODE_SYMBOL_MAP) |
|              | [LD_HIDE_BITCODE_SYMBOLS](#LD_HIDE_BITCODE_SYMBOLS)               |

</div>

<div id="BITCODE_GENERATION_MODE" class="Subhead">

## 🔐 BITCODE_GENERATION_MODE

|              |                                                                   |
|--------------|-------------------------------------------------------------------|
| DefaultValue | marker                                                            |
| Name         | BITCODE_GENERATION_MODE                                           |
| Type         | enum                                                              |
| Values       | marker                                                            |
|              | bitcode                                                           |
| References   | [CLANG_BITCODE_GENERATION_MODE](#CLANG_BITCODE_GENERATION_MODE)   |
|              | [LD_BITCODE_GENERATION_MODE](#LD_BITCODE_GENERATION_MODE)         |
|              | [LD_GENERATE_BITCODE_SYMBOL_MAP](#LD_GENERATE_BITCODE_SYMBOL_MAP) |
|              | [LD_HIDE_BITCODE_SYMBOLS](#LD_HIDE_BITCODE_SYMBOLS)               |
|              | [LD_VERIFY_BITCODE](#LD_VERIFY_BITCODE)                           |
|              | [SWIFT_BITCODE_GENERATION_MODE](#SWIFT_BITCODE_GENERATION_MODE)   |

</div>

<div id="STRIP_BITCODE_FROM_COPIED_FILES" class="Subhead">

## 🔐 STRIP_BITCODE_FROM_COPIED_FILES

|              |                                 |
|--------------|---------------------------------|
| DefaultValue | NO                              |
| Name         | STRIP_BITCODE_FROM_COPIED_FILES |
| Type         | Boolean                         |
| References   |                                 |

</div>

<div id="EXCLUDED_INSTALLSRC_SUBDIRECTORY_PATTERNS" class="Subhead">

## 🔐 EXCLUDED_INSTALLSRC_SUBDIRECTORY_PATTERNS

|              |                                           |
|--------------|-------------------------------------------|
| DefaultValue | .DS_Store .svn .git .hg CVS               |
| Name         | EXCLUDED_INSTALLSRC_SUBDIRECTORY_PATTERNS |
| Type         | StringList                                |
| References   |                                           |

</div>

<div id="LD_DYLIB_ALLOWABLE_CLIENTS" class="Subhead">

## 🔐 LD_DYLIB_ALLOWABLE_CLIENTS

|                  |                            |
|------------------|----------------------------|
| ConditionFlavors | arch                       |
|                  | sdk                        |
| DefaultValue     |                            |
| Name             | LD_DYLIB_ALLOWABLE_CLIENTS |
| Type             | StringList                 |
| References       |                            |

</div>

<div id="CURRENT_VERSION" class="Subhead">

## 🔐 CURRENT_VERSION

|              |                                        |
|--------------|----------------------------------------|
| DefaultValue |                                        |
| Name         | CURRENT_VERSION                        |
| Type         | String                                 |
| References   | [DYLIB_CURRENT_VERSION](#dev914a80989) |

</div>

<div id="VERSIONS_FOLDER_PATH" class="Subhead">

## 🔐 VERSIONS_FOLDER_PATH

|              |                      |
|--------------|----------------------|
| DefaultValue |                      |
| Name         | VERSIONS_FOLDER_PATH |
| Type         | String               |
| References   |                      |

</div>

<div id="DONT_GENERATE_INFOPLIST_FILE" class="Subhead">

## 🔐 DONT_GENERATE_INFOPLIST_FILE

|              |                              |
|--------------|------------------------------|
| DefaultValue | NO                           |
| Name         | DONT_GENERATE_INFOPLIST_FILE |
| Type         | Boolean                      |
| References   |                              |

</div>

<div id="REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES" class="Subhead">

## 🔐 REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES

|              |                                      |
|--------------|--------------------------------------|
| DefaultValue | YES                                  |
| Name         | REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES |
| Type         | Boolean                              |
| References   |                                      |

</div>

<div id="SYSTEM_KEXT_INSTALL_PATH" class="Subhead">

## 🔐 SYSTEM_KEXT_INSTALL_PATH

|              |                                                          |
|--------------|----------------------------------------------------------|
| DefaultValue | \$([SYSTEM_LIBRARY_DIR](#SYSTEM_LIBRARY_DIR))/Extensions |
| Name         | SYSTEM_KEXT_INSTALL_PATH                                 |
| Type         | String                                                   |
| References   | [DEFAULT_KEXT_INSTALL_PATH](#DEFAULT_KEXT_INSTALL_PATH)  |

</div>

<div id="SYSTEM_DEXT_INSTALL_PATH" class="Subhead">

## 🔐 SYSTEM_DEXT_INSTALL_PATH

|              |                                                                |
|--------------|----------------------------------------------------------------|
| DefaultValue | \$([SYSTEM_LIBRARY_DIR](#SYSTEM_LIBRARY_DIR))/DriverExtensions |
| Name         | SYSTEM_DEXT_INSTALL_PATH                                       |
| Type         | String                                                         |
| References   | [DEFAULT_DEXT_INSTALL_PATH](#DEFAULT_DEXT_INSTALL_PATH)        |

</div>

<div id="LIBRARY_KEXT_INSTALL_PATH" class="Subhead">

## 🔐 LIBRARY_KEXT_INSTALL_PATH

|              |                                                        |
|--------------|--------------------------------------------------------|
| DefaultValue | \$([LOCAL_LIBRARY_DIR](#LOCAL_LIBRARY_DIR))/Extensions |
| Name         | LIBRARY_KEXT_INSTALL_PATH                              |
| Type         | String                                                 |
| References   |                                                        |

</div>

<div id="LIBRARY_DEXT_INSTALL_PATH" class="Subhead">

## 🔐 LIBRARY_DEXT_INSTALL_PATH

|              |                                                              |
|--------------|--------------------------------------------------------------|
| DefaultValue | \$([LOCAL_LIBRARY_DIR](#LOCAL_LIBRARY_DIR))/DriverExtensions |
| Name         | LIBRARY_DEXT_INSTALL_PATH                                    |
| Type         | String                                                       |
| References   |                                                              |

</div>

<div id="DEFAULT_KEXT_INSTALL_PATH" class="Subhead">

## 🔐 DEFAULT_KEXT_INSTALL_PATH

|              |                                                           |
|--------------|-----------------------------------------------------------|
| DefaultValue | \$([SYSTEM_KEXT_INSTALL_PATH](#SYSTEM_KEXT_INSTALL_PATH)) |
| Name         | DEFAULT_KEXT_INSTALL_PATH                                 |
| Type         | String                                                    |
| References   |                                                           |

</div>

<div id="DEFAULT_DEXT_INSTALL_PATH" class="Subhead">

## 🔐 DEFAULT_DEXT_INSTALL_PATH

|              |                                                           |
|--------------|-----------------------------------------------------------|
| DefaultValue | \$([SYSTEM_DEXT_INSTALL_PATH](#SYSTEM_DEXT_INSTALL_PATH)) |
| Name         | DEFAULT_DEXT_INSTALL_PATH                                 |
| Type         | String                                                    |
| References   |                                                           |

</div>

<div id="SEPARATE_STRIP" class="Subhead">

## 🔐 SEPARATE_STRIP

|              |                |
|--------------|----------------|
| DefaultValue | NO             |
| Name         | SEPARATE_STRIP |
| Type         | Boolean        |
| References   |                |

</div>

<div id="HOME" class="Subhead">

## 🔐 HOME

|            |      |
|------------|------|
| Name       | HOME |
| Type       | Path |
| References |      |

</div>

<div id="LOGNAME" class="Subhead">

## 🔐 LOGNAME

|            |         |
|------------|---------|
| Name       | LOGNAME |
| Type       | String  |
| References |         |

</div>

<div id="PWD" class="Subhead">

## 🔐 PWD

|            |      |
|------------|------|
| Name       | PWD  |
| Type       | Path |
| References |      |

</div>

<div id="SHELL" class="Subhead">

## 🔐 SHELL

|            |       |
|------------|-------|
| Name       | SHELL |
| Type       | Path  |
| References |       |

</div>

<div id="USER" class="Subhead">

## 🔐 USER

|            |                                           |
|------------|-------------------------------------------|
| Name       | USER                                      |
| Type       | String                                    |
| References | [ALWAYS_SEARCH_USER_PATHS](#devc34d7d3e9) |
|            | [INSTALL_OWNER](#dev13346c313)            |
|            | [USER_HEADER_SEARCH_PATHS](#deved642222b) |
|            | [VERSION_INFO_BUILDER](#devf83b76fe0)     |

</div>

<div id="XCODE_DEVELOPER_DIR_PATH" class="Subhead">

## 🔐 XCODE_DEVELOPER_DIR_PATH

|            |                          |
|------------|--------------------------|
| Name       | XCODE_DEVELOPER_DIR_PATH |
| Type       | Path                     |
| References |                          |

</div>

<div id="METAL_LIBRARY_FILE_BASE" class="Subhead">

## 🔐 METAL_LIBRARY_FILE_BASE

|              |                                                 |
|--------------|-------------------------------------------------|
| DefaultValue | default                                         |
| Name         | METAL_LIBRARY_FILE_BASE                         |
| Type         | String                                          |
| References   | [MTLLINKER_OUTPUT_FILE](#MTLLINKER_OUTPUT_FILE) |

</div>

<div id="METAL_LIBRARY_OUTPUT_DIR" class="Subhead">

## 🔐 METAL_LIBRARY_OUTPUT_DIR

|              |                                                                                              |
|--------------|----------------------------------------------------------------------------------------------|
| DefaultValue | \$([TARGET_BUILD_DIR](#dev256404b3f))/\$([UNLOCALIZED_RESOURCES_FOLDER_PATH](#deva946e3ce6)) |
| Name         | METAL_LIBRARY_OUTPUT_DIR                                                                     |
| Type         | String                                                                                       |
| References   | [MTLLINKER_OUTPUT_FILE](#MTLLINKER_OUTPUT_FILE)                                              |

</div>

<div id="EXCLUDED_ARCHS" class="Subhead">

## 🔐 EXCLUDED_ARCHS

|                  |                |
|------------------|----------------|
| ConditionFlavors | sdk            |
| Name             | EXCLUDED_ARCHS |
| Type             | StringList     |
| References       |                |

</div>

<div id="ARCHS_STANDARD_32_64_BIT" class="Subhead">

## 🔐 ARCHS_STANDARD_32_64_BIT

|            |                          |
|------------|--------------------------|
| Name       | ARCHS_STANDARD_32_64_BIT |
| Type       | StringList               |
| References |                          |

</div>

<div id="ARCHS_STANDARD_32_BIT" class="Subhead">

## 🔐 ARCHS_STANDARD_32_BIT

|            |                       |
|------------|-----------------------|
| Name       | ARCHS_STANDARD_32_BIT |
| Type       | StringList            |
| References |                       |

</div>

<div id="ARCHS_STANDARD_64_BIT" class="Subhead">

## 🔐 ARCHS_STANDARD_64_BIT

|            |                       |
|------------|-----------------------|
| Name       | ARCHS_STANDARD_64_BIT |
| Type       | StringList            |
| References |                       |

</div>

<div id="LOCROOT" class="Subhead">

## 🔐 LOCROOT

|              |         |
|--------------|---------|
| DefaultValue |         |
| Name         | LOCROOT |
| Type         | Path    |
| References   |         |

</div>

<div id="LOCSYMROOT" class="Subhead">

## 🔐 LOCSYMROOT

|              |            |
|--------------|------------|
| DefaultValue |            |
| Name         | LOCSYMROOT |
| Type         | Path       |
| References   |            |

</div>

<div id="MARKETING_VERSION" class="Subhead">

## 🔐 MARKETING_VERSION

|              |                   |
|--------------|-------------------|
| DefaultValue |                   |
| Name         | MARKETING_VERSION |
| Type         | String            |
| References   |                   |

</div>

<div id="BITCODE_GENERATION_MODE" class="Subhead">

## 🔐 BITCODE_GENERATION_MODE

|              |                                                                   |
|--------------|-------------------------------------------------------------------|
| DefaultValue | marker                                                            |
| Name         | BITCODE_GENERATION_MODE                                           |
| Type         | enum                                                              |
| Values       | marker                                                            |
|              | bitcode                                                           |
| References   | [CLANG_BITCODE_GENERATION_MODE](#CLANG_BITCODE_GENERATION_MODE)   |
|              | [LD_BITCODE_GENERATION_MODE](#LD_BITCODE_GENERATION_MODE)         |
|              | [LD_GENERATE_BITCODE_SYMBOL_MAP](#LD_GENERATE_BITCODE_SYMBOL_MAP) |
|              | [LD_HIDE_BITCODE_SYMBOLS](#LD_HIDE_BITCODE_SYMBOLS)               |
|              | [LD_VERIFY_BITCODE](#LD_VERIFY_BITCODE)                           |
|              | [SWIFT_BITCODE_GENERATION_MODE](#SWIFT_BITCODE_GENERATION_MODE)   |

</div>

<div id="HIDE_BITCODE_SYMBOLS" class="Subhead">

## 🔐 HIDE_BITCODE_SYMBOLS

|              |                                                                   |
|--------------|-------------------------------------------------------------------|
| DefaultValue | YES                                                               |
| Name         | HIDE_BITCODE_SYMBOLS                                              |
| Type         | Boolean                                                           |
| References   | [LD_GENERATE_BITCODE_SYMBOL_MAP](#LD_GENERATE_BITCODE_SYMBOL_MAP) |
|              | [LD_HIDE_BITCODE_SYMBOLS](#LD_HIDE_BITCODE_SYMBOLS)               |

</div>

<div id="STRIP_BITCODE_FROM_COPIED_FILES" class="Subhead">

## 🔐 STRIP_BITCODE_FROM_COPIED_FILES

|              |                                 |
|--------------|---------------------------------|
| DefaultValue | NO                              |
| Name         | STRIP_BITCODE_FROM_COPIED_FILES |
| Type         | Boolean                         |
| References   |                                 |

</div>

<div id="REEXPORTED_LIBRARY_INSTALL_NAMES" class="Subhead">

## 🔐 REEXPORTED_LIBRARY_INSTALL_NAMES

|            |                                  |
|------------|----------------------------------|
| Name       | REEXPORTED_LIBRARY_INSTALL_NAMES |
| Type       | PathList                         |
| References |                                  |

</div>

<div id="REEXPORTED_FRAMEWORK_INSTALL_NAMES" class="Subhead">

## 🔐 REEXPORTED_FRAMEWORK_INSTALL_NAMES

|            |                                    |
|------------|------------------------------------|
| Name       | REEXPORTED_FRAMEWORK_INSTALL_NAMES |
| Type       | StringList                         |
| References |                                    |

</div>

<div id="LD_DYLIB_ALLOWABLE_CLIENTS" class="Subhead">

## 🔐 LD_DYLIB_ALLOWABLE_CLIENTS

|                  |                            |
|------------------|----------------------------|
| ConditionFlavors | arch                       |
|                  | sdk                        |
| DefaultValue     |                            |
| Name             | LD_DYLIB_ALLOWABLE_CLIENTS |
| Type             | StringList                 |
| References       |                            |

</div>

<div id="LIBRARY_FLAG_NOSPACE" class="Subhead">

## 🔐 LIBRARY_FLAG_NOSPACE

|              |                      |
|--------------|----------------------|
| DefaultValue | YES                  |
| Name         | LIBRARY_FLAG_NOSPACE |
| Type         | Boolean              |
| References   |                      |

</div>

<div id="LIBRARY_FLAG_PREFIX" class="Subhead">

## 🔐 LIBRARY_FLAG_PREFIX

|              |                     |
|--------------|---------------------|
| DefaultValue |                     |
| Name         | LIBRARY_FLAG_PREFIX |
| Type         | String              |
| References   |                     |

</div>

<div id="CODE_SIGNING_ALLOWED" class="Subhead">

## 🔐 CODE_SIGNING_ALLOWED

|              |                      |
|--------------|----------------------|
| DefaultValue | NO                   |
| Name         | CODE_SIGNING_ALLOWED |
| Type         | Boolean              |
| References   |                      |

</div>

<div id="CODE_SIGN_LOCAL_EXECUTION_IDENTITY" class="Subhead">

## 🔐 CODE_SIGN_LOCAL_EXECUTION_IDENTITY

|              |                                    |
|--------------|------------------------------------|
| DefaultValue |                                    |
| Name         | CODE_SIGN_LOCAL_EXECUTION_IDENTITY |
| Type         | Enumeration                        |
| Values       |                                    |
|              | Ad Hoc                             |
|              | Local Certificate                  |
| References   |                                    |

</div>

<div id="ENTITLEMENTS_DESTINATION" class="Subhead">

## 🔐 ENTITLEMENTS_DESTINATION

|              |                          |
|--------------|--------------------------|
| DefaultValue |                          |
| Name         | ENTITLEMENTS_DESTINATION |
| Type         | Enumeration              |
| Values       |                          |
|              | Signature                |
|              | __entitlements           |
| References   |                          |

</div>

<div id="EMBEDDED_PROFILE_NAME" class="Subhead">

## 🔐 EMBEDDED_PROFILE_NAME

|              |                       |
|--------------|-----------------------|
| DefaultValue |                       |
| Name         | EMBEDDED_PROFILE_NAME |
| Type         | String                |
| References   |                       |

</div>

<div id="FULL_PRODUCT_NAME" class="Subhead">

## 🔐 FULL_PRODUCT_NAME

|              |                                                     |
|--------------|-----------------------------------------------------|
| DefaultValue |                                                     |
| Name         | FULL_PRODUCT_NAME                                   |
| Type         | String                                              |
| References   | [CODESIGNING_FOLDER_PATH](#CODESIGNING_FOLDER_PATH) |
|              | [DWARF_DSYM_FILE_NAME](#DWARF_DSYM_FILE_NAME)       |

</div>

<div id="DONT_GENERATE_INFOPLIST_FILE" class="Subhead">

## 🔐 DONT_GENERATE_INFOPLIST_FILE

|              |                              |
|--------------|------------------------------|
| DefaultValue | NO                           |
| Name         | DONT_GENERATE_INFOPLIST_FILE |
| Type         | Boolean                      |
| References   |                              |

</div>

<div id="APPLY_RULES_IN_COPY_HEADERS" class="Subhead">

## 🔐 APPLY_RULES_IN_COPY_HEADERS

|                  |                             |
|------------------|-----------------------------|
| Category         | Packaging                   |
| ConditionFlavors | sdk                         |
| DefaultValue     | NO                          |
| Name             | APPLY_RULES_IN_COPY_HEADERS |
| Type             | Boolean                     |
| References       |                             |

</div>

<div id="REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES" class="Subhead">

## 🔐 REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES

|              |                                      |
|--------------|--------------------------------------|
| DefaultValue | YES                                  |
| Name         | REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES |
| Type         | Boolean                              |
| References   |                                      |

</div>

<div id="DEVELOPMENT_ASSET_PATHS" class="Subhead">

## 🔐 DEVELOPMENT_ASSET_PATHS

|              |                                                                                                        |
|--------------|--------------------------------------------------------------------------------------------------------|
| Category     | Deployment                                                                                             |
| DefaultValue |                                                                                                        |
| Description  | Files and directories used only for development. Archive and install builds will exclude this content. |
| DisplayName  | Development Assets                                                                                     |
| Name         | DEVELOPMENT_ASSET_PATHS                                                                                |
| Type         | StringList                                                                                             |
| References   |                                                                                                        |

</div>

<div id="SEPARATE_STRIP" class="Subhead">

## 🔐 SEPARATE_STRIP

|              |                |
|--------------|----------------|
| DefaultValue | NO             |
| Name         | SEPARATE_STRIP |
| Type         | Boolean        |
| References   |                |

</div>

<div id="BUILD_STYLE" class="Subhead">

## 🔐 BUILD_STYLE

|              |             |
|--------------|-------------|
| DefaultValue |             |
| Name         | BUILD_STYLE |
| Type         | String      |
| References   |             |

</div>

<div id="SOURCE_ROOT" class="Subhead">

## 🔐 SOURCE_ROOT

|              |                              |
|--------------|------------------------------|
| DefaultValue | \$([SRCROOT](#dev7fd11f2da)) |
| Name         | SOURCE_ROOT                  |
| Type         | Path                         |
| References   |                              |

</div>

<div id="TEMP_ROOT" class="Subhead">

## 🔐 TEMP_ROOT

|              |                                         |
|--------------|-----------------------------------------|
| DefaultValue | \$([OBJROOT](#devad6c72289))            |
| Name         | TEMP_ROOT                               |
| Type         | Path                                    |
| References   | [PROJECT_TEMP_DIR](#dev583a73f21)       |
|              | [PROJECT_TEMP_ROOT](#PROJECT_TEMP_ROOT) |

</div>

<div id="BUILD_ROOT" class="Subhead">

## 🔐 BUILD_ROOT

|              |                              |
|--------------|------------------------------|
| DefaultValue | \$([SYMROOT](#dev181ede51f)) |
| Name         | BUILD_ROOT                   |
| Type         | Path                         |
| References   |                              |

</div>

<div id="INSTALL_ROOT" class="Subhead">

## 🔐 INSTALL_ROOT

|              |                              |
|--------------|------------------------------|
| DefaultValue | \$([DSTROOT](#dev438d356c2)) |
| Name         | INSTALL_ROOT                 |
| Type         | Path                         |
| References   |                              |

</div>

<div id="PROJECT_DIR" class="Subhead">

## 🔐 PROJECT_DIR

|              |                              |
|--------------|------------------------------|
| DefaultValue | \$([SRCROOT](#dev7fd11f2da)) |
| Name         | PROJECT_DIR                  |
| Type         | Path                         |
| References   |                              |

</div>

<div id="BUILD_DIR" class="Subhead">

## 🔐 BUILD_DIR

|              |                                                       |
|--------------|-------------------------------------------------------|
| DefaultValue | \$([SYMROOT](#dev181ede51f))                          |
| Name         | BUILD_DIR                                             |
| Type         | Path                                                  |
| References   | [BUILT_PRODUCTS_DIR](#devffde5700e)                   |
|              | [CLANG_MIGRATOR_PUBLIC_HEADERS_ONLY](#deva7fd4dc2a)   |
|              | [CODESIGNING_FOLDER_PATH](#CODESIGNING_FOLDER_PATH)   |
|              | [CONFIGURATION_BUILD_DIR](#dev1eb1f6acb)              |
|              | [DWARF_DSYM_FOLDER_PATH](#DWARF_DSYM_FOLDER_PATH)     |
|              | [METAL_LIBRARY_OUTPUT_DIR](#METAL_LIBRARY_OUTPUT_DIR) |
|              | [TARGET_BUILD_DIR](#dev256404b3f)                     |

</div>

<div id="PROJECT_TEMP_ROOT" class="Subhead">

## 🔐 PROJECT_TEMP_ROOT

|              |                                   |
|--------------|-----------------------------------|
| DefaultValue | \$([OBJROOT](#devad6c72289))      |
| Name         | PROJECT_TEMP_ROOT                 |
| Type         | Path                              |
| References   | [PROJECT_TEMP_DIR](#dev583a73f21) |

</div>

<div id="TEMP_DIR" class="Subhead">

## 🔐 TEMP_DIR

|              |                                                                                                                     |
|--------------|---------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([TARGET_TEMP_DIR](#dev4ad1824fb))                                                                                |
| Name         | TEMP_DIR                                                                                                            |
| Type         | Path                                                                                                                |
| References   | [CLANG_ANALYZER_OUTPUT_DIR](#CLANG_ANALYZER_OUTPUT_DIR)                                                             |
|              | [CLASS_FILE_DIR](#CLASS_FILE_DIR)                                                                                   |
|              | [CONFIGURATION_TEMP_DIR](#devdb4863c50)                                                                             |
|              | [COREML_COMPILER_INFOPLIST_CONTENT_FILE](#COREML_COMPILER_INFOPLIST_CONTENT_FILE)                                   |
|              | [CPP_HEADERMAP_FILE](#CPP_HEADERMAP_FILE)                                                                           |
|              | [CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS) |
|              | [CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS)                             |
|              | [CPP_HEADERMAP_FILE_FOR_GENERATED_FILES](#CPP_HEADERMAP_FILE_FOR_GENERATED_FILES)                                   |
|              | [CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS)                             |
|              | [CPP_HEADERMAP_FILE_FOR_PROJECT_FILES](#CPP_HEADERMAP_FILE_FOR_PROJECT_FILES)                                       |
|              | [CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE](#CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE)                                   |
|              | [CPP_HEADER_SYMLINKS_DIR](#CPP_HEADER_SYMLINKS_DIR)                                                                 |
|              | [DERIVED_FILE_DIR](#devcdbd943f2)                                                                                   |
|              | [FIXED_FILES_DIR](#FIXED_FILES_DIR)                                                                                 |
|              | [LD_MAP_FILE_PATH](#dev0f5aa9fe1)                                                                                   |
|              | [MTLCOMPILER_DEPENDENCY_INFO_FILE](#MTLCOMPILER_DEPENDENCY_INFO_FILE)                                               |
|              | [MTLCOMPILER_OUTPUT_FILE](#MTLCOMPILER_OUTPUT_FILE)                                                                 |
|              | [OBJECT_FILE_DIR](#devddf692c48)                                                                                    |
|              | [PRECOMP_DESTINATION_DIR](#PRECOMP_DESTINATION_DIR)                                                                 |
|              | [PROJECT_TEMP_DIR](#dev583a73f21)                                                                                   |
|              | [REZ_COLLECTOR_DIR](#dev7ced986ee)                                                                                  |
|              | [TARGET_TEMP_DIR](#dev4ad1824fb)                                                                                    |
|              | [TEMP_FILE_DIR](#TEMP_FILE_DIR)                                                                                     |

</div>

<div id="CLASS_FILE_DIR" class="Subhead">

## 🔐 CLASS_FILE_DIR

|              |                                       |
|--------------|---------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/JavaClasses |
| Name         | CLASS_FILE_DIR                        |
| Type         | Path                                  |
| References   |                                       |

</div>

<div id="FILE_LIST" class="Subhead">

## 🔐 FILE_LIST

|              |                                                                         |
|--------------|-------------------------------------------------------------------------|
| DefaultValue | \$([OBJECT_FILE_DIR](#devddf692c48))/LinkFileList                       |
| Name         | FILE_LIST                                                               |
| Type         | Path                                                                    |
| References   | [__INPUT_FILE_LIST_PATH__](#__INPUT_FILE_LIST_PATH__)                   |
|              | [__SWIFT_FILE_LIST_PATH_INDEXING__](#__SWIFT_FILE_LIST_PATH_INDEXING__) |
|              | [__SWIFT_FILE_LIST_PATH__](#__SWIFT_FILE_LIST_PATH__)                   |

</div>

<div id="LOCALIZABLE_CONTENT_DIR" class="Subhead">

## 🔐 LOCALIZABLE_CONTENT_DIR

|              |                         |
|--------------|-------------------------|
| DefaultValue |                         |
| Name         | LOCALIZABLE_CONTENT_DIR |
| Type         | Path                    |
| References   |                         |

</div>

<div id="PROJECT_DERIVED_FILE_DIR" class="Subhead">

## 🔐 PROJECT_DERIVED_FILE_DIR

|              |                                                                                     |
|--------------|-------------------------------------------------------------------------------------|
| DefaultValue | \$([OBJROOT](#devad6c72289))/\$([PROJECT_NAME](#dev1d2022a00)).build/DerivedSources |
| Name         | PROJECT_DERIVED_FILE_DIR                                                            |
| Type         | Path                                                                                |
| References   |                                                                                     |

</div>

<div id="SHARED_DERIVED_FILE_DIR" class="Subhead">

## 🔐 SHARED_DERIVED_FILE_DIR

|              |                                                        |
|--------------|--------------------------------------------------------|
| DefaultValue | \$([BUILT_PRODUCTS_DIR](#devffde5700e))/DerivedSources |
| Name         | SHARED_DERIVED_FILE_DIR                                |
| Type         | Path                                                   |
| References   |                                                        |

</div>

<div id="TARGET_BUILD_SUBPATH" class="Subhead">

## 🔐 TARGET_BUILD_SUBPATH

|              |                                   |
|--------------|-----------------------------------|
| DefaultValue |                                   |
| Name         | TARGET_BUILD_SUBPATH              |
| Type         | Path                              |
| References   | [TARGET_BUILD_DIR](#dev256404b3f) |

</div>

<div id="PATH_PREFIXES_EXCLUDED_FROM_HEADER_DEPENDENCIES" class="Subhead">

## 🔐 PATH_PREFIXES_EXCLUDED_FROM_HEADER_DEPENDENCIES

|              |                                                                                                                                                                                                                                                                           |
|--------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | /usr/include /usr/local/include /System/Library/Frameworks /System/Library/PrivateFrameworks \$([SYSTEM_DEVELOPER_DIR](#SYSTEM_DEVELOPER_DIR))/Headers \$([SYSTEM_DEVELOPER_DIR](#SYSTEM_DEVELOPER_DIR))/SDKs \$([SYSTEM_DEVELOPER_DIR](#SYSTEM_DEVELOPER_DIR))/Platforms |
| Name         | PATH_PREFIXES_EXCLUDED_FROM_HEADER_DEPENDENCIES                                                                                                                                                                                                                           |
| Type         | PathList                                                                                                                                                                                                                                                                  |
| References   |                                                                                                                                                                                                                                                                           |

</div>

<div id="DO_HEADER_SCANNING_IN_JAM" class="Subhead">

## 🔐 DO_HEADER_SCANNING_IN_JAM

|              |                           |
|--------------|---------------------------|
| DefaultValue | NO                        |
| Name         | DO_HEADER_SCANNING_IN_JAM |
| Type         | Boolean                   |
| References   |                           |

</div>

<div id="TEMP_FILE_DIR" class="Subhead">

## 🔐 TEMP_FILE_DIR

|              |                                   |
|--------------|-----------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))         |
| Name         | TEMP_FILE_DIR                     |
| Type         | Path                              |
| References   | [TEMP_FILES_DIR](#TEMP_FILES_DIR) |

</div>

<div id="TEMP_FILES_DIR" class="Subhead">

## 🔐 TEMP_FILES_DIR

|              |                                     |
|--------------|-------------------------------------|
| DefaultValue | \$([TEMP_FILE_DIR](#TEMP_FILE_DIR)) |
| Name         | TEMP_FILES_DIR                      |
| Type         | Path                                |
| References   |                                     |

</div>

<div id="DERIVED_SOURCES_DIR" class="Subhead">

## 🔐 DERIVED_SOURCES_DIR

|              |                                       |
|--------------|---------------------------------------|
| DefaultValue | \$([DERIVED_FILE_DIR](#devcdbd943f2)) |
| Name         | DERIVED_SOURCES_DIR                   |
| Type         | Path                                  |
| References   |                                       |

</div>

<div id="NATIVE_ARCH_32_BIT" class="Subhead">

## 🔐 NATIVE_ARCH_32_BIT

|            |                    |
|------------|--------------------|
| Name       | NATIVE_ARCH_32_BIT |
| Type       | String             |
| References |                    |

</div>

<div id="NATIVE_ARCH_64_BIT" class="Subhead">

## 🔐 NATIVE_ARCH_64_BIT

|            |                    |
|------------|--------------------|
| Name       | NATIVE_ARCH_64_BIT |
| Type       | String             |
| References |                    |

</div>

<div id="NATIVE_ARCH_ACTUAL" class="Subhead">

## 🔐 NATIVE_ARCH_ACTUAL

|            |                    |
|------------|--------------------|
| Name       | NATIVE_ARCH_ACTUAL |
| Type       | String             |
| References |                    |

</div>

<div id="DEBUGGING_SYMBOLS" class="Subhead">

## 🔐 DEBUGGING_SYMBOLS

|                  |                                                               |
|------------------|---------------------------------------------------------------|
| ConditionFlavors | arch                                                          |
|                  | sdk                                                           |
| DefaultValue     | YES                                                           |
| Name             | DEBUGGING_SYMBOLS                                             |
| Type             | Boolean                                                       |
| References       | [CLANG_DEBUG_INFORMATION_LEVEL](#dev75a59f57c)                |
|                  | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES)                   |
|                  | [GCC_DEBUG_INFORMATION_FORMAT](#GCC_DEBUG_INFORMATION_FORMAT) |
|                  | [GCC_GENERATE_DEBUGGING_SYMBOLS](#dev667b2f097)               |
|                  | [LD_LTO_OBJECT_FILE](#LD_LTO_OBJECT_FILE)                     |

</div>

<div id="PROFILING_CODE" class="Subhead">

## 🔐 PROFILING_CODE

|                  |                                          |
|------------------|------------------------------------------|
| ConditionFlavors | arch                                     |
|                  | sdk                                      |
| DefaultValue     | NO                                       |
| Name             | PROFILING_CODE                           |
| Type             | Boolean                                  |
| References       | [GENERATE_PROFILING_CODE](#dev0d5823497) |

</div>

<div id="KEXT_CFLAGS" class="Subhead">

## 🔐 KEXT_CFLAGS

|              |                                             |
|--------------|---------------------------------------------|
| DefaultValue |                                             |
| Name         | KEXT_CFLAGS                                 |
| Type         | StringList                                  |
| References   | [KEXT_CPLUSPLUSFLAGS](#KEXT_CPLUSPLUSFLAGS) |

</div>

<div id="KEXT_CPLUSPLUSFLAGS" class="Subhead">

## 🔐 KEXT_CPLUSPLUSFLAGS

|              |                                 |
|--------------|---------------------------------|
| DefaultValue | \$([KEXT_CFLAGS](#KEXT_CFLAGS)) |
| Name         | KEXT_CPLUSPLUSFLAGS             |
| Type         | StringList                      |
| References   |                                 |

</div>

<div id="CC" class="Subhead">

## 🔐 CC

|                  |                                                                                                                           |
|------------------|---------------------------------------------------------------------------------------------------------------------------|
| ConditionFlavors | arch                                                                                                                      |
|                  | sdk                                                                                                                       |
| Name             | CC                                                                                                                        |
| Type             | Path                                                                                                                      |
| References       | [CCHROOT](#CCHROOT)                                                                                                       |
|                  | [CLANG_ANALYZER_OBJC_ATSYNC](#dev956449180)                                                                               |
|                  | [CLANG_ANALYZER_OBJC_DEALLOC](#dev2f0a5fa58)                                                                              |
|                  | [CLANG_ANALYZER_OBJC_GENERICS](#dev3504a78dd)                                                                             |
|                  | [CLANG_ANALYZER_OBJC_INCOMP_METHOD_TYPES](#dev17d7f881e)                                                                  |
|                  | [CLANG_ANALYZER_OBJC_RETAIN_COUNT](#dev1425c63b1)                                                                         |
|                  | [CLANG_ANALYZER_OBJC_SELF_INIT](#deva8abac772)                                                                            |
|                  | [CLANG_ANALYZER_OBJC_UNUSED_IVARS](#dev74e40f8dd)                                                                         |
|                  | [CLANG_DEBUG_INFORMATION_LEVEL](#dev75a59f57c)                                                                            |
|                  | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES)                                                                               |
|                  | [CLANG_INDEX_STORE_ENABLE](#CLANG_INDEX_STORE_ENABLE)                                                                     |
|                  | [CLANG_MODULES_IGNORE_MACROS](#CLANG_MODULES_IGNORE_MACROS)                                                               |
|                  | [CLANG_X86_VECTOR_INSTRUCTIONS](#dev39e2d7a5a)                                                                            |
|                  | [DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_NO](#DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_NO)                                               |
|                  | [DEFAULT_SSE_LEVEL_4_1_NO](#DEFAULT_SSE_LEVEL_4_1_NO)                                                                     |
|                  | [DEFAULT_SSE_LEVEL_4_2_NO](#DEFAULT_SSE_LEVEL_4_2_NO)                                                                     |
|                  | [DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT](#DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT)                                     |
|                  | [GCC3_VERSION](#GCC3_VERSION)                                                                                             |
|                  | [GCC_CHAR_IS_UNSIGNED_CHAR](#dev8040f1852)                                                                                |
|                  | [GCC_CW_ASM_SYNTAX](#dev2c30143c0)                                                                                        |
|                  | [GCC_C_LANGUAGE_STANDARD](#devec7a0f555)                                                                                  |
|                  | [GCC_DEBUG_INFORMATION_FORMAT](#GCC_DEBUG_INFORMATION_FORMAT)                                                             |
|                  | [GCC_DYNAMIC_NO_PIC](#dev97e9d806e)                                                                                       |
|                  | [GCC_ENABLE_ASM_KEYWORD](#devacb931162)                                                                                   |
|                  | [GCC_ENABLE_BUILTIN_FUNCTIONS](#deva6b49de2f)                                                                             |
|                  | [GCC_ENABLE_CPP_EXCEPTIONS](#dev02f832e65)                                                                                |
|                  | [GCC_ENABLE_CPP_RTTI](#dev049efca71)                                                                                      |
|                  | [GCC_ENABLE_EXCEPTIONS](#dev8253fe395)                                                                                    |
|                  | [GCC_ENABLE_FLOATING_POINT_LIBRARY_CALLS](#deve550de002)                                                                  |
|                  | [GCC_ENABLE_KERNEL_DEVELOPMENT](#devf28aeb2f5)                                                                            |
|                  | [GCC_ENABLE_OBJC_EXCEPTIONS](#deve6adf64bf)                                                                               |
|                  | [GCC_ENABLE_PASCAL_STRINGS](#devd446ab334)                                                                                |
|                  | [GCC_ENABLE_SSE3_EXTENSIONS](#dev525519085)                                                                               |
|                  | [GCC_ENABLE_SSE41_EXTENSIONS](#dev770cb2698)                                                                              |
|                  | [GCC_ENABLE_SSE42_EXTENSIONS](#dev02000b5df)                                                                              |
|                  | [GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS](#GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS)                                   |
|                  | [GCC_ENABLE_TRIGRAPHS](#dev9c0e68f79)                                                                                     |
|                  | [GCC_FAST_MATH](#devfaa514090)                                                                                            |
|                  | [GCC_GENERATE_DEBUGGING_SYMBOLS](#dev667b2f097)                                                                           |
|                  | [GCC_GENERATE_TEST_COVERAGE_FILES](#dev5d764bc4d)                                                                         |
|                  | [GCC_INCREASE_PRECOMPILED_HEADER_SHARING](#devac02bcf03)                                                                  |
|                  | [GCC_INLINES_ARE_PRIVATE_EXTERN](#devb678649f4)                                                                           |
|                  | [GCC_INPUT_FILETYPE](#dev2be0fc588)                                                                                       |
|                  | [GCC_INSTRUMENT_PROGRAM_FLOW_ARCS](#dev86a18f5a0)                                                                         |
|                  | [GCC_LINK_WITH_DYNAMIC_LIBRARIES](#dev0c8bdc4b3)                                                                          |
|                  | [GCC_MACOSX_VERSION_MIN](#GCC_MACOSX_VERSION_MIN)                                                                         |
|                  | [GCC_NO_COMMON_BLOCKS](#dev377aef9cd)                                                                                     |
|                  | [GCC_OBJC_ABI_VERSION](#GCC_OBJC_ABI_VERSION)                                                                             |
|                  | [GCC_OBJC_LEGACY_DISPATCH](#GCC_OBJC_LEGACY_DISPATCH)                                                                     |
|                  | [GCC_OPERATION](#GCC_OPERATION)                                                                                           |
|                  | [GCC_OPTIMIZATION_LEVEL](#dev80f5ad208)                                                                                   |
|                  | [GCC_PFE_FILE_C_DIALECTS](#GCC_PFE_FILE_C_DIALECTS)                                                                       |
|                  | [GCC_PRECOMPILE_PREFIX_HEADER](#dev158433cad)                                                                             |
|                  | [GCC_PREFIX_HEADER](#dev8622c506f)                                                                                        |
|                  | [GCC_PREPROCESSOR_DEFINITIONS](#deve851742a0)                                                                             |
|                  | [GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS](#deve5cb410bb)                                                        |
|                  | [GCC_PRODUCT_TYPE_PREPROCESSOR_DEFINITIONS](#GCC_PRODUCT_TYPE_PREPROCESSOR_DEFINITIONS)                                   |
|                  | [GCC_REUSE_STRINGS](#deva240c361f)                                                                                        |
|                  | [GCC_SHORT_ENUMS](#deveab0eb93d)                                                                                          |
|                  | [GCC_STRICT_ALIASING](#dev51d30bd71)                                                                                      |
|                  | [GCC_SYMBOLS_PRIVATE_EXTERN](#dev7faa5bb1c)                                                                               |
|                  | [GCC_THREADSAFE_STATICS](#dev3418fa358)                                                                                   |
|                  | [GCC_TREAT_IMPLICIT_FUNCTION_DECLARATIONS_AS_ERRORS](#dev70810b123)                                                       |
|                  | [GCC_TREAT_INCOMPATIBLE_POINTER_TYPE_WARNINGS_AS_ERRORS](#devb7687aeb6)                                                   |
|                  | [GCC_TREAT_WARNINGS_AS_ERRORS](#deva4a32754d)                                                                             |
|                  | [GCC_UNROLL_LOOPS](#dev03165418c)                                                                                         |
|                  | [GCC_USE_GCC3_PFE_SUPPORT](#GCC_USE_GCC3_PFE_SUPPORT)                                                                     |
|                  | [GCC_USE_STANDARD_INCLUDE_SEARCHING](#dev07951d123)                                                                       |
|                  | [GCC_VERSION](#dev1fad541c9)                                                                                              |
|                  | [GCC_VERSION_IDENTIFIER](#GCC_VERSION_IDENTIFIER)                                                                         |
|                  | [GCC_WARN_64_TO_32_BIT_CONVERSION](#deveed28d600)                                                                         |
|                  | [GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS](#dev459d7247f)                                                                      |
|                  | [GCC_WARN_ABOUT_INVALID_OFFSETOF_MACRO](#dev9d1df0542)                                                                    |
|                  | [GCC_WARN_ABOUT_MISSING_FIELD_INITIALIZERS](#devf22e44547)                                                                |
|                  | [GCC_WARN_ABOUT_MISSING_NEWLINE](#dev9e424feac)                                                                           |
|                  | [GCC_WARN_ABOUT_MISSING_PROTOTYPES](#dev3d461e0f5)                                                                        |
|                  | [GCC_WARN_ABOUT_POINTER_SIGNEDNESS](#dev90927d824)                                                                        |
|                  | [GCC_WARN_ABOUT_RETURN_TYPE](#deved0e7fffc)                                                                               |
|                  | [GCC_WARN_ALLOW_INCOMPLETE_PROTOCOL](#dev089a278f1)                                                                       |
|                  | [GCC_WARN_CHECK_SWITCH_STATEMENTS](#dev5ee988319)                                                                         |
|                  | [GCC_WARN_FOUR_CHARACTER_CONSTANTS](#dev738a8189f)                                                                        |
|                  | [GCC_WARN_HIDDEN_VIRTUAL_FUNCTIONS](#dev2f3b1a48b)                                                                        |
|                  | [GCC_WARN_INHIBIT_ALL_WARNINGS](#dev7a1e3e912)                                                                            |
|                  | [GCC_WARN_INITIALIZER_NOT_FULLY_BRACKETED](#devbc8ce22b4)                                                                 |
|                  | [GCC_WARN_MISSING_PARENTHESES](#dev817b7acd2)                                                                             |
|                  | [GCC_WARN_MULTIPLE_DEFINITION_TYPES_FOR_SELECTOR](#GCC_WARN_MULTIPLE_DEFINITION_TYPES_FOR_SELECTOR)                       |
|                  | [GCC_WARN_NON_VIRTUAL_DESTRUCTOR](#devd590ac5a1)                                                                          |
|                  | [GCC_WARN_PEDANTIC](#dev4f1d8b027)                                                                                        |
|                  | [GCC_WARN_SHADOW](#devf77078427)                                                                                          |
|                  | [GCC_WARN_SIGN_COMPARE](#devd72ec5001)                                                                                    |
|                  | [GCC_WARN_STRICT_SELECTOR_MATCH](#dev424cdb777)                                                                           |
|                  | [GCC_WARN_TYPECHECK_CALLS_TO_PRINTF](#dev1ff8cc105)                                                                       |
|                  | [GCC_WARN_UNDECLARED_SELECTOR](#dev202fc74cd)                                                                             |
|                  | [GCC_WARN_UNINITIALIZED_AUTOS](#dev7b70e07c9)                                                                             |
|                  | [GCC_WARN_UNKNOWN_PRAGMAS](#devedc10376a)                                                                                 |
|                  | [GCC_WARN_UNUSED_FUNCTION](#devc7766c536)                                                                                 |
|                  | [GCC_WARN_UNUSED_LABEL](#dev5dc46b82a)                                                                                    |
|                  | [GCC_WARN_UNUSED_PARAMETER](#dev362f7320e)                                                                                |
|                  | [GCC_WARN_UNUSED_VALUE](#dev6f61a24f6)                                                                                    |
|                  | [GCC_WARN_UNUSED_VARIABLE](#dev73464afa2)                                                                                 |
|                  | [LD_DONT_RUN_DEDUPLICATION](#LD_DONT_RUN_DEDUPLICATION)                                                                   |
|                  | [LD_LTO_OBJECT_FILE](#LD_LTO_OBJECT_FILE)                                                                                 |
|                  | [LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS](#LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS)                                         |
|                  | [SWIFT_ENFORCE_EXCLUSIVE_ACCESS](#deva2d710b82)                                                                           |
|                  | [USE_GCC3_PFE_SUPPORT](#USE_GCC3_PFE_SUPPORT)                                                                             |
|                  | [YACC](#YACC)                                                                                                             |
|                  | [YACCFLAGS](#dev71955b427)                                                                                                |
|                  | [YACC_GENERATED_FILE_STEM](#devc5f9de1d7)                                                                                 |
|                  | [YACC_GENERATE_DEBUGGING_DIRECTIVES](#dev0dc5f3400)                                                                       |
|                  | [YACC_INSERT_LINE_DIRECTIVES](#devb874c9914)                                                                              |
|                  | [__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_DEBUG](#__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_DEBUG)     |
|                  | [__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_RELEASE](#__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_RELEASE) |

</div>

<div id="JAVA_COMPILER" class="Subhead">

## 🔐 JAVA_COMPILER

|              |                |
|--------------|----------------|
| DefaultValue | /usr/bin/javac |
| Name         | JAVA_COMPILER  |
| Type         | Path           |
| References   |                |

</div>

<div id="JAVA_ARCHIVE_CLASSES" class="Subhead">

## 🔐 JAVA_ARCHIVE_CLASSES

|              |                      |
|--------------|----------------------|
| DefaultValue | YES                  |
| Name         | JAVA_ARCHIVE_CLASSES |
| Type         | Boolean              |
| References   |                      |

</div>

<div id="JAVA_ARCHIVE_TYPE" class="Subhead">

## 🔐 JAVA_ARCHIVE_TYPE

|              |                   |
|--------------|-------------------|
| DefaultValue | JAR               |
| Name         | JAVA_ARCHIVE_TYPE |
| Type         | String            |
| References   |                   |

</div>

<div id="JAVA_APP_STUB" class="Subhead">

## 🔐 JAVA_APP_STUB

|              |                                                                                                               |
|--------------|---------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([SYSTEM_LIBRARY_DIR](#SYSTEM_LIBRARY_DIR))/Frameworks/JavaVM.framework/Resources/MacOS/JavaApplicationStub |
| Name         | JAVA_APP_STUB                                                                                                 |
| Type         | Path                                                                                                          |
| References   |                                                                                                               |

</div>

<div id="JAVA_JAR_FLAGS" class="Subhead">

## 🔐 JAVA_JAR_FLAGS

|              |                |
|--------------|----------------|
| DefaultValue | cv             |
| Name         | JAVA_JAR_FLAGS |
| Type         | StringList     |
| References   |                |

</div>

<div id="JAVA_SOURCE_SUBDIR" class="Subhead">

## 🔐 JAVA_SOURCE_SUBDIR

|              |                    |
|--------------|--------------------|
| DefaultValue | .                  |
| Name         | JAVA_SOURCE_SUBDIR |
| Type         | Path               |
| References   |                    |

</div>

<div id="JAVA_FRAMEWORK_RESOURCES_DIRS" class="Subhead">

## 🔐 JAVA_FRAMEWORK_RESOURCES_DIRS

|              |                               |
|--------------|-------------------------------|
| DefaultValue | Resources                     |
| Name         | JAVA_FRAMEWORK_RESOURCES_DIRS |
| Type         | PathList                      |
| References   |                               |

</div>

<div id="JAVA_FRAMEWORK_JARS" class="Subhead">

## 🔐 JAVA_FRAMEWORK_JARS

|              |                     |
|--------------|---------------------|
| DefaultValue |                     |
| Name         | JAVA_FRAMEWORK_JARS |
| Type         | PathList            |
| References   |                     |

</div>

<div id="JAVA_USE_DEPENDENCIES" class="Subhead">

## 🔐 JAVA_USE_DEPENDENCIES

|              |                       |
|--------------|-----------------------|
| DefaultValue | YES                   |
| Name         | JAVA_USE_DEPENDENCIES |
| Type         | Boolean               |
| References   |                       |

</div>

<div id="JAVA_ZIP_FLAGS" class="Subhead">

## 🔐 JAVA_ZIP_FLAGS

|              |                |
|--------------|----------------|
| DefaultValue | -urg           |
| Name         | JAVA_ZIP_FLAGS |
| Type         | StringList     |
| References   |                |

</div>

<div id="CLONE_HEADERS" class="Subhead">

## 🔐 CLONE_HEADERS

|              |               |
|--------------|---------------|
| DefaultValue | NO            |
| Name         | CLONE_HEADERS |
| Type         | Boolean       |
| References   |               |

</div>

<div id="GCC3_VERSION" class="Subhead">

## 🔐 GCC3_VERSION

|              |              |
|--------------|--------------|
| DefaultValue | 3.3          |
| Name         | GCC3_VERSION |
| Type         | String       |
| References   |              |

</div>

<div id="DEFAULT_COMPILER" class="Subhead">

## 🔐 DEFAULT_COMPILER

|              |                  |
|--------------|------------------|
| DefaultValue |                  |
| Name         | DEFAULT_COMPILER |
| Type         | String           |
| References   |                  |

</div>

<div id="MAC_OS_X_VERSION_MAX_ALLOWED" class="Subhead">

## 🔐 MAC_OS_X_VERSION_MAX_ALLOWED

|                  |                              |
|------------------|------------------------------|
| ConditionFlavors | arch                         |
| Name             | MAC_OS_X_VERSION_MAX_ALLOWED |
| Type             | String                       |
| References       |                              |

</div>

<div id="MAC_OS_X_VERSION_MIN_REQUIRED" class="Subhead">

## 🔐 MAC_OS_X_VERSION_MIN_REQUIRED

|                  |                               |
|------------------|-------------------------------|
| ConditionFlavors | arch                          |
| Name             | MAC_OS_X_VERSION_MIN_REQUIRED |
| Type             | String                        |
| References       |                               |

</div>

<div id="USE_HEADER_SYMLINKS" class="Subhead">

## 🔐 USE_HEADER_SYMLINKS

|              |                     |
|--------------|---------------------|
| DefaultValue | NO                  |
| Name         | USE_HEADER_SYMLINKS |
| Type         | Boolean             |
| References   |                     |

</div>

<div id="HEADERMAP_INCLUDES_NONPUBLIC_NONPRIVATE_HEADERS" class="Subhead">

## 🔐 HEADERMAP_INCLUDES_NONPUBLIC_NONPRIVATE_HEADERS

|              |                                                         |
|--------------|---------------------------------------------------------|
| DefaultValue | \$([HEADERMAP_INCLUDES_PROJECT_HEADERS](#devb66740539)) |
| Name         | HEADERMAP_INCLUDES_NONPUBLIC_NONPRIVATE_HEADERS         |
| Type         | Boolean                                                 |
| References   |                                                         |

</div>

<div id="HEADERMAP_USES_FRAMEWORK_PREFIX_ENTRIES" class="Subhead">

## 🔐 HEADERMAP_USES_FRAMEWORK_PREFIX_ENTRIES

|              |                                         |
|--------------|-----------------------------------------|
| DefaultValue | YES                                     |
| Name         | HEADERMAP_USES_FRAMEWORK_PREFIX_ENTRIES |
| Type         | Boolean                                 |
| References   |                                         |

</div>

<div id="HEADERMAP_USES_VFS" class="Subhead">

## 🔐 HEADERMAP_USES_VFS

|              |                                     |
|--------------|-------------------------------------|
| DefaultValue | \$([DEFINES_MODULE](#dev82471c743)) |
| Name         | HEADERMAP_USES_VFS                  |
| Type         | Boolean                             |
| References   |                                     |

</div>

<div id="DWARF_DSYM_FOLDER_PATH" class="Subhead">

## 🔐 DWARF_DSYM_FOLDER_PATH

|              |                                              |
|--------------|----------------------------------------------|
| DefaultValue | \$([CONFIGURATION_BUILD_DIR](#dev1eb1f6acb)) |
| Name         | DWARF_DSYM_FOLDER_PATH                       |
| Type         | String                                       |
| UIType       | String                                       |
| References   |                                              |

</div>

<div id="DWARF_DSYM_FILE_NAME" class="Subhead">

## 🔐 DWARF_DSYM_FILE_NAME

|              |                                                  |
|--------------|--------------------------------------------------|
| DefaultValue | \$([FULL_PRODUCT_NAME](#FULL_PRODUCT_NAME)).dSYM |
| Name         | DWARF_DSYM_FILE_NAME                             |
| Type         | String                                           |
| UIType       | String                                           |
| References   |                                                  |

</div>

<div id="DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT" class="Subhead">

## 🔐 DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT

|              |                                          |
|--------------|------------------------------------------|
| DefaultValue | NO                                       |
| Name         | DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT |
| Type         | Boolean                                  |
| References   |                                          |

</div>

<div id="PRECOMP_DESTINATION_DIR" class="Subhead">

## 🔐 PRECOMP_DESTINATION_DIR

|              |                                         |
|--------------|-----------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/PrefixHeaders |
| Name         | PRECOMP_DESTINATION_DIR                 |
| Type         | String                                  |
| References   |                                         |

</div>

<div id="LLVM_TARGET_TRIPLE_OS_VERSION" class="Subhead">

## 🔐 LLVM_TARGET_TRIPLE_OS_VERSION

|              |                                                                                                                                            |
|--------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([SWIFT_PLATFORM_TARGET_PREFIX](#SWIFT_PLATFORM_TARGET_PREFIX))\$(\$([DEPLOYMENT_TARGET_SETTING_NAME](#DEPLOYMENT_TARGET_SETTING_NAME))) |
| Name         | LLVM_TARGET_TRIPLE_OS_VERSION                                                                                                              |
| Type         | String                                                                                                                                     |
| References   | [CLANG_TARGET_TRIPLE_ARCHS](#CLANG_TARGET_TRIPLE_ARCHS)                                                                                    |
|              | [LD_TARGET_TRIPLE_ARCHS](#LD_TARGET_TRIPLE_ARCHS)                                                                                          |
|              | [MTL_TARGET_TRIPLE](#MTL_TARGET_TRIPLE)                                                                                                    |

</div>

<div id="LLVM_TARGET_TRIPLE_VENDOR" class="Subhead">

## 🔐 LLVM_TARGET_TRIPLE_VENDOR

|              |                                                         |
|--------------|---------------------------------------------------------|
| DefaultValue | apple                                                   |
| Name         | LLVM_TARGET_TRIPLE_VENDOR                               |
| Type         | String                                                  |
| References   | [CLANG_TARGET_TRIPLE_ARCHS](#CLANG_TARGET_TRIPLE_ARCHS) |
|              | [LD_TARGET_TRIPLE_ARCHS](#LD_TARGET_TRIPLE_ARCHS)       |
|              | [MTL_TARGET_TRIPLE](#MTL_TARGET_TRIPLE)                 |

</div>

<div id="LLVM_TARGET_TRIPLE_SUFFIX" class="Subhead">

## 🔐 LLVM_TARGET_TRIPLE_SUFFIX

|              |                                                         |
|--------------|---------------------------------------------------------|
| DefaultValue |                                                         |
| Name         | LLVM_TARGET_TRIPLE_SUFFIX                               |
| Type         | String                                                  |
| References   | [CLANG_TARGET_TRIPLE_ARCHS](#CLANG_TARGET_TRIPLE_ARCHS) |
|              | [LD_TARGET_TRIPLE_ARCHS](#LD_TARGET_TRIPLE_ARCHS)       |
|              | [MTL_TARGET_TRIPLE](#MTL_TARGET_TRIPLE)                 |
|              | [SWIFT_TARGET_TRIPLE](#SWIFT_TARGET_TRIPLE)             |

</div>

<div id="SWIFT_PLATFORM_TARGET_PREFIX" class="Subhead">

## 🔐 SWIFT_PLATFORM_TARGET_PREFIX

|              |                                                                 |
|--------------|-----------------------------------------------------------------|
| DefaultValue |                                                                 |
| Name         | SWIFT_PLATFORM_TARGET_PREFIX                                    |
| Type         | String                                                          |
| References   | [LLVM_TARGET_TRIPLE_OS_VERSION](#LLVM_TARGET_TRIPLE_OS_VERSION) |
|              | [SWIFT_TARGET_TRIPLE](#SWIFT_TARGET_TRIPLE)                     |

</div>

<div id="USE_LLVM_TARGET_TRIPLES" class="Subhead">

## 🔐 USE_LLVM_TARGET_TRIPLES

|              |                                                                         |
|--------------|-------------------------------------------------------------------------|
| DefaultValue | YES                                                                     |
| Name         | USE_LLVM_TARGET_TRIPLES                                                 |
| Type         | Boolean                                                                 |
| References   | [CLANG_TARGET_TRIPLE_ARCHS](#CLANG_TARGET_TRIPLE_ARCHS)                 |
|              | [CLANG_TARGET_TRIPLE_VARIANTS](#CLANG_TARGET_TRIPLE_VARIANTS)           |
|              | [GCC_MACOSX_VERSION_MIN](#GCC_MACOSX_VERSION_MIN)                       |
|              | [LD_DEPLOYMENT_TARGET](#LD_DEPLOYMENT_TARGET)                           |
|              | [LD_TARGET_TRIPLE_ARCHS](#LD_TARGET_TRIPLE_ARCHS)                       |
|              | [LD_TARGET_TRIPLE_VARIANTS](#LD_TARGET_TRIPLE_VARIANTS)                 |
|              | [MTL_DEPLOYMENT_TARGET](#MTL_DEPLOYMENT_TARGET)                         |
|              | [MTL_TARGET_TRIPLE](#MTL_TARGET_TRIPLE)                                 |
|              | [USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG) |
|              | [USE_LLVM_TARGET_TRIPLES_FOR_LD](#USE_LLVM_TARGET_TRIPLES_FOR_LD)       |
|              | [USE_LLVM_TARGET_TRIPLES_FOR_TAPI](#USE_LLVM_TARGET_TRIPLES_FOR_TAPI)   |
|              | [arch](#arch)                                                           |

</div>

<div id="USE_LLVM_TARGET_TRIPLES_FOR_CLANG" class="Subhead">

## 🔐 USE_LLVM_TARGET_TRIPLES_FOR_CLANG

|              |                                                               |
|--------------|---------------------------------------------------------------|
| DefaultValue | \$([USE_LLVM_TARGET_TRIPLES](#USE_LLVM_TARGET_TRIPLES))       |
| Name         | USE_LLVM_TARGET_TRIPLES_FOR_CLANG                             |
| Type         | Boolean                                                       |
| References   | [CLANG_TARGET_TRIPLE_ARCHS](#CLANG_TARGET_TRIPLE_ARCHS)       |
|              | [CLANG_TARGET_TRIPLE_VARIANTS](#CLANG_TARGET_TRIPLE_VARIANTS) |
|              | [GCC_MACOSX_VERSION_MIN](#GCC_MACOSX_VERSION_MIN)             |
|              | [MTL_DEPLOYMENT_TARGET](#MTL_DEPLOYMENT_TARGET)               |
|              | [MTL_TARGET_TRIPLE](#MTL_TARGET_TRIPLE)                       |
|              | [arch](#arch)                                                 |

</div>

<div id="USE_LLVM_TARGET_TRIPLES_FOR_LD" class="Subhead">

## 🔐 USE_LLVM_TARGET_TRIPLES_FOR_LD

|              |                                                         |
|--------------|---------------------------------------------------------|
| DefaultValue | \$([USE_LLVM_TARGET_TRIPLES](#USE_LLVM_TARGET_TRIPLES)) |
| Name         | USE_LLVM_TARGET_TRIPLES_FOR_LD                          |
| Type         | Boolean                                                 |
| References   | [LD_DEPLOYMENT_TARGET](#LD_DEPLOYMENT_TARGET)           |
|              | [LD_TARGET_TRIPLE_ARCHS](#LD_TARGET_TRIPLE_ARCHS)       |
|              | [LD_TARGET_TRIPLE_VARIANTS](#LD_TARGET_TRIPLE_VARIANTS) |
|              | [arch](#arch)                                           |

</div>

<div id="USE_LLVM_TARGET_TRIPLES_FOR_TAPI" class="Subhead">

## 🔐 USE_LLVM_TARGET_TRIPLES_FOR_TAPI

|              |                                                         |
|--------------|---------------------------------------------------------|
| DefaultValue | \$([USE_LLVM_TARGET_TRIPLES](#USE_LLVM_TARGET_TRIPLES)) |
| Name         | USE_LLVM_TARGET_TRIPLES_FOR_TAPI                        |
| Type         | Boolean                                                 |
| References   |                                                         |

</div>

<div id="TOOLCHAINS" class="Subhead">

## 🔐 TOOLCHAINS

|              |            |
|--------------|------------|
| DefaultValue |            |
| Name         | TOOLCHAINS |
| Type         | StringList |
| References   |            |

</div>

<div id="REZ_EXECUTABLE" class="Subhead">

## 🔐 REZ_EXECUTABLE

|              |                |
|--------------|----------------|
| DefaultValue |                |
| Name         | REZ_EXECUTABLE |
| Type         | String         |
| References   |                |

</div>

<div id="BUILD_LIBRARY_FOR_DISTRIBUTION" class="Subhead">

## 🔐 BUILD_LIBRARY_FOR_DISTRIBUTION

|              |                                                                                                                                                          |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category     | BuildOptions                                                                                                                                             |
| DefaultValue | NO                                                                                                                                                       |
| Description  | Ensures that your libraries are built for distribution. For Swift, this enables support for library evolution and generation of a module interface file. |
| DisplayName  | Build Libraries for Distribution                                                                                                                         |
| Name         | BUILD_LIBRARY_FOR_DISTRIBUTION                                                                                                                           |
| Type         | Boolean                                                                                                                                                  |
| References   | [SWIFT_EMIT_MODULE_INTERFACE](#SWIFT_EMIT_MODULE_INTERFACE)                                                                                              |
|              | [SWIFT_ENABLE_LIBRARY_EVOLUTION](#SWIFT_ENABLE_LIBRARY_EVOLUTION)                                                                                        |

</div>

<div id="BUILD_ACTIVE_RESOURCES_ONLY" class="Subhead">

## 🔐 BUILD_ACTIVE_RESOURCES_ONLY

|              |                             |
|--------------|-----------------------------|
| DefaultValue | NO                          |
| Name         | BUILD_ACTIVE_RESOURCES_ONLY |
| Type         | Boolean                     |
| References   |                             |

</div>

<div id="WRAP_ASSET_PACKS_IN_SEPARATE_DIRECTORIES" class="Subhead">

## 🔐 WRAP_ASSET_PACKS_IN_SEPARATE_DIRECTORIES

|              |                                          |
|--------------|------------------------------------------|
| DefaultValue | NO                                       |
| Name         | WRAP_ASSET_PACKS_IN_SEPARATE_DIRECTORIES |
| Type         | Boolean                                  |
| References   |                                          |

</div>

<div id="VALIDATE_WORKSPACE" class="Subhead">

## 🔐 VALIDATE_WORKSPACE

|              |                    |
|--------------|--------------------|
| Category     | BuildOptions       |
| DefaultValue | YES_ERROR          |
| Name         | VALIDATE_WORKSPACE |
| Type         | Enumeration        |
| Values       | YES                |
|              | NO                 |
|              | YES_ERROR          |
| References   |                    |

</div>

<div id="ENABLE_PREVIEWS" class="Subhead">

## 🔐 ENABLE_PREVIEWS

|             |                                                                                         |
|-------------|-----------------------------------------------------------------------------------------|
| Category    | BuildOptions                                                                            |
| Description | If enabled, the product will be built with options appropriate for supporting previews. |
| DisplayName | Enable Previews                                                                         |
| Name        | ENABLE_PREVIEWS                                                                         |
| Type        | Boolean                                                                                 |
| References  |                                                                                         |

</div>

<div id="DTRACE_OUTPUT_FILE_TYPE" class="Subhead">

## 🔐 DTRACE_OUTPUT_FILE_TYPE

|              |                                              |
|--------------|----------------------------------------------|
| DefaultValue | Header                                       |
| Name         | DTRACE_OUTPUT_FILE_TYPE                      |
| Type         | Enumeration                                  |
| Values       | {"CommandLineFlag"=>"-h", "Value"=>"Header"} |
| References   |                                              |

</div>

<div id="build_file_compiler_flags" class="Subhead">

## 🔐 build_file_compiler_flags

|                       |                           |
|-----------------------|---------------------------|
| CommandLinePrefixFlag |                           |
| DefaultValue          |                           |
| Name                  | build_file_compiler_flags |
| Type                  | StringList                |
| References            |                           |

</div>

<div id="LD_TARGET_TRIPLE_ARCHS" class="Subhead">

## 🔐 LD_TARGET_TRIPLE_ARCHS

|                 |                                                                                                                                                                                                                |
|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs | -target                                                                                                                                                                                                        |
|                 | \$([value](#value))-\$([LLVM_TARGET_TRIPLE_VENDOR](#LLVM_TARGET_TRIPLE_VENDOR))-\$([LLVM_TARGET_TRIPLE_OS_VERSION](#LLVM_TARGET_TRIPLE_OS_VERSION))\$([LLVM_TARGET_TRIPLE_SUFFIX](#LLVM_TARGET_TRIPLE_SUFFIX)) |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_LD](#USE_LLVM_TARGET_TRIPLES_FOR_LD)) == YES                                                                                                                                   |
| DefaultValue    | \$([CURRENT_ARCH](#dev23cfef338))                                                                                                                                                                              |
| Name            | LD_TARGET_TRIPLE_ARCHS                                                                                                                                                                                         |
| Type            | StringList                                                                                                                                                                                                     |
| References      |                                                                                                                                                                                                                |

</div>

<div id="LD_TARGET_TRIPLE_VARIANTS" class="Subhead">

## 🔐 LD_TARGET_TRIPLE_VARIANTS

|                  |                                                                              |
|------------------|------------------------------------------------------------------------------|
| CommandLineFlag  | -target-variant                                                              |
| Condition        | \$([USE_LLVM_TARGET_TRIPLES_FOR_LD](#USE_LLVM_TARGET_TRIPLES_FOR_LD)) == YES |
| ConditionFlavors | arch                                                                         |
| Name             | LD_TARGET_TRIPLE_VARIANTS                                                    |
| Type             | StringList                                                                   |
| References       |                                                                              |

</div>

<div id="LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS" class="Subhead">

## 🔐 LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS

|                  |                                       |
|------------------|---------------------------------------|
| CommandLineArgs  | \$([value](#value))                   |
| ConditionFlavors | arch                                  |
| Name             | LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS |
| Type             | StringList                            |
| References       |                                       |

</div>

<div id="arch" class="Subhead">

## 🔐 arch

|                 |                                                                                    |
|-----------------|------------------------------------------------------------------------------------|
| CommandLineFlag | -arch                                                                              |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) != YES |
| Name            | arch                                                                               |
| Type            | String                                                                             |
| References      | [ADDITIONAL_SDKS](#deva1a5b1b82)                                                   |
|                 | [ALL_OTHER_LDFLAGS](#ALL_OTHER_LDFLAGS)                                            |
|                 | [ALWAYS_SEARCH_USER_PATHS](#devc34d7d3e9)                                          |
|                 | [ALWAYS_USE_SEPARATE_HEADERMAPS](#ALWAYS_USE_SEPARATE_HEADERMAPS)                  |
|                 | [BUILT_PRODUCTS_DIR](#devffde5700e)                                                |
|                 | [BUNDLE_LOADER](#devc8b269790)                                                     |
|                 | [CC](#CC)                                                                          |
|                 | [CLANG_TARGET_TRIPLE_VARIANTS](#CLANG_TARGET_TRIPLE_VARIANTS)                      |
|                 | [CLANG_X86_VECTOR_INSTRUCTIONS](#dev39e2d7a5a)                                     |
|                 | [CURRENT_ARCH](#dev23cfef338)                                                      |
|                 | [DEAD_CODE_STRIPPING](#dev9ed8cb7ad)                                               |
|                 | [DEBUGGING_SYMBOLS](#DEBUGGING_SYMBOLS)                                            |
|                 | [DYLIB_COMPATIBILITY_VERSION](#dev318c57173)                                       |
|                 | [DYLIB_CURRENT_VERSION](#dev914a80989)                                             |
|                 | [DYLIB_INSTALL_NAME_BASE](#devf51fa1133)                                           |
|                 | [EXCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES](#dev454fb3164)                     |
|                 | [EXCLUDED_SOURCE_FILE_NAMES](#devd20926192)                                        |
|                 | [EXPORTED_SYMBOLS_FILE](#dev8fda87f60)                                             |
|                 | [FRAMEWORK_SEARCH_PATHS](#dev1b27fb3da)                                            |
|                 | [GCC_ENABLE_SSE3_EXTENSIONS](#dev525519085)                                        |
|                 | [GCC_ENABLE_SSE41_EXTENSIONS](#dev770cb2698)                                       |
|                 | [GCC_ENABLE_SSE42_EXTENSIONS](#dev02000b5df)                                       |
|                 | [GCC_VERSION](#dev1fad541c9)                                                       |
|                 | [GENERATE_MASTER_OBJECT_FILE](#dev6dda25963)                                       |
|                 | [GENERATE_TEXT_BASED_STUBS](#devc83e790c1)                                         |
|                 | [GLOBAL_CFLAGS](#GLOBAL_CFLAGS)                                                    |
|                 | [HEADER_SEARCH_PATHS](#dev3c9f85d97)                                               |
|                 | [INCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES](#devd335e28f6)                     |
|                 | [INCLUDED_SOURCE_FILE_NAMES](#dev278eb3050)                                        |
|                 | [INIT_ROUTINE](#devdf90c3a3b)                                                      |
|                 | [INLINE_PRIVATE_FRAMEWORKS](#dev29d4705f5)                                         |
|                 | [KEEP_PRIVATE_EXTERNS](#dev5b2832bba)                                              |
|                 | [LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS](#LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS)    |
|                 | [LD_DYLIB_ALLOWABLE_CLIENTS](#LD_DYLIB_ALLOWABLE_CLIENTS)                          |
|                 | [LD_DYLIB_INSTALL_NAME](#devbb966571b)                                             |
|                 | [LD_FLAGS](#LD_FLAGS)                                                              |
|                 | [LD_GENERATE_MAP_FILE](#devc1145996b)                                              |
|                 | [LD_MAP_FILE_PATH](#dev0f5aa9fe1)                                                  |
|                 | [LD_NO_PIE](#dev36448687c)                                                         |
|                 | [LD_QUOTE_LINKER_ARGUMENTS_FOR_COMPILER_DRIVER](#devee7d8a07a)                     |
|                 | [LD_RUNPATH_SEARCH_PATHS](#devd6f61be24)                                           |
|                 | [LD_TARGET_TRIPLE_VARIANTS](#LD_TARGET_TRIPLE_VARIANTS)                            |
|                 | [LIBRARY_SEARCH_PATHS](#dev353243827)                                              |
|                 | [LINKER_DISPLAYS_MANGLED_NAMES](#dev1f938e41a)                                     |
|                 | [LINK_WITH_STANDARD_LIBRARIES](#dev824b21548)                                      |
|                 | [MACH_O_TYPE](#dev5eb2828db)                                                       |
|                 | [MAC_OS_X_VERSION_MAX_ALLOWED](#MAC_OS_X_VERSION_MAX_ALLOWED)                      |
|                 | [MAC_OS_X_VERSION_MIN_REQUIRED](#MAC_OS_X_VERSION_MIN_REQUIRED)                    |
|                 | [MTL_HEADER_SEARCH_PATHS](#dev4b50e718e)                                           |
|                 | [NATIVE_ARCH](#devd22eac1e3)                                                       |
|                 | [NO_COMMON](#NO_COMMON)                                                            |
|                 | [OPTIMIZATION_CFLAGS](#OPTIMIZATION_CFLAGS)                                        |
|                 | [ORDER_FILE](#deva4dc41871)                                                        |
|                 | [OTHER_CFLAGS](#devfe44263e0)                                                      |
|                 | [OTHER_CPLUSPLUSFLAGS](#dev4aeb8200e)                                              |
|                 | [OTHER_LDFLAGS](#dev4fc8ef90a)                                                     |
|                 | [OTHER_LIBTOOLFLAGS](#dev9a0ecc53f)                                                |
|                 | [OTHER_PRECOMP_CFLAGS](#OTHER_PRECOMP_CFLAGS)                                      |
|                 | [OTHER_TAPI_FLAGS](#dev5d847a3ae)                                                  |
|                 | [PACKAGE_TYPE](#dev1174bc406)                                                      |
|                 | [PASCAL_STRINGS](#PASCAL_STRINGS)                                                  |
|                 | [PREFIX_FLAGS](#PREFIX_FLAGS)                                                      |
|                 | [PRELINK_FLAGS](#devba112d835)                                                     |
|                 | [PRELINK_LIBS](#dev0e5e578b9)                                                      |
|                 | [PRESERVE_DEAD_CODE_INITS_AND_TERMS](#devdea9a9ad6)                                |
|                 | [PRODUCT_DEFINITION_PLIST](#deve4ffd8a65)                                          |
|                 | [PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS](#PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS)        |
|                 | [PRODUCT_TYPE_LIBRARY_SEARCH_PATHS](#PRODUCT_TYPE_LIBRARY_SEARCH_PATHS)            |
|                 | [PROFILING_CODE](#PROFILING_CODE)                                                  |
|                 | [REEXPORTED_FRAMEWORK_NAMES](#dev5e490466e)                                        |
|                 | [REEXPORTED_LIBRARY_NAMES](#devc2a866441)                                          |
|                 | [REEXPORTED_LIBRARY_PATHS](#dev4d4c7988f)                                          |
|                 | [REZ_SEARCH_PATHS](#dev547a452a8)                                                  |
|                 | [SDKROOT](#devabcaadbaf)                                                           |
|                 | [SECTORDER_FLAGS](#dev2c8a64fcd)                                                   |
|                 | [SEPARATE_SYMBOL_EDIT](#dev5898a821a)                                              |
|                 | [SUPPORTS_TEXT_BASED_API](#dev8abad641c)                                           |
|                 | [SWIFT_INCLUDE_PATHS](#dev8f8e9cc00)                                               |
|                 | [SWIFT_TARGET_TRIPLE_VARIANTS](#SWIFT_TARGET_TRIPLE_VARIANTS)                      |
|                 | [SYSTEM_FRAMEWORK_SEARCH_PATHS](#dev9fa1aee62)                                     |
|                 | [SYSTEM_HEADER_SEARCH_PATHS](#devd69bd5ce8)                                        |
|                 | [TARGET_BUILD_DIR](#dev256404b3f)                                                  |
|                 | [UNEXPORTED_SYMBOLS_FILE](#devecf2a9cfe)                                           |
|                 | [USER_HEADER_SEARCH_PATHS](#deved642222b)                                          |
|                 | [USE_DYNAMIC_NO_PIC](#USE_DYNAMIC_NO_PIC)                                          |
|                 | [USE_HEADERMAP](#dev4e24a48e3)                                                     |
|                 | [WARNING_LDFLAGS](#dev29996e2b6)                                                   |
|                 | [__INPUT_FILE_LIST_PATH__](#__INPUT_FILE_LIST_PATH__)                              |
|                 | [__SWIFT_FILE_LIST_PATH_INDEXING__](#__SWIFT_FILE_LIST_PATH_INDEXING__)            |
|                 | [__SWIFT_FILE_LIST_PATH__](#__SWIFT_FILE_LIST_PATH__)                              |

</div>

<div id="PRODUCT_TYPE_LIBRARY_SEARCH_PATHS" class="Subhead">

## 🔐 PRODUCT_TYPE_LIBRARY_SEARCH_PATHS

|                                    |                                   |
|------------------------------------|-----------------------------------|
| CommandLinePrefixFlag              | -L                                |
| FlattenRecursiveSearchPathsInValue | Yes                               |
| Name                               | PRODUCT_TYPE_LIBRARY_SEARCH_PATHS |
| Type                               | PathList                          |
| References                         |                                   |

</div>

<div id="PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS" class="Subhead">

## 🔐 PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS

|                                    |                                     |
|------------------------------------|-------------------------------------|
| CommandLinePrefixFlag              | -F                                  |
| FlattenRecursiveSearchPathsInValue | Yes                                 |
| Name                               | PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS |
| Type                               | PathList                            |
| References                         |                                     |

</div>

<div id="__INPUT_FILE_LIST_PATH__" class="Subhead">

## 🔐 __INPUT_FILE_LIST_PATH__

|                   |                                                              |
|-------------------|--------------------------------------------------------------|
| CommandLineFlag   | -filelist                                                    |
| DefaultValue      | \$(LINK_FILE_LIST_\$([variant](#variant))_\$([arch](#arch))) |
| IsInputDependency | Yes                                                          |
| Name              | __INPUT_FILE_LIST_PATH__                                     |
| Type              | Path                                                         |
| References        |                                                              |

</div>

<div id="LD_DEPLOYMENT_TARGET" class="Subhead">

## 🔐 LD_DEPLOYMENT_TARGET

|                               |                                                                                                  |
|-------------------------------|--------------------------------------------------------------------------------------------------|
| CommandLineArgs               |                                                                                                  |
| `""`                          |                                                                                                  |
| `<<otherwise>>`               | -\$([DEPLOYMENT_TARGET_CLANG_FLAG_NAME](#DEPLOYMENT_TARGET_CLANG_FLAG_NAME))=\$([value](#value)) |
| Condition                     | \$([USE_LLVM_TARGET_TRIPLES_FOR_LD](#USE_LLVM_TARGET_TRIPLES_FOR_LD)) != YES                     |
| DefaultValue                  | \$(\$([DEPLOYMENT_TARGET_SETTING_NAME](#DEPLOYMENT_TARGET_SETTING_NAME)))                        |
| Name                          | LD_DEPLOYMENT_TARGET                                                                             |
| SetValueInEnvironmentVariable | \$([DEPLOYMENT_TARGET_CLANG_ENV_NAME](#DEPLOYMENT_TARGET_CLANG_ENV_NAME))                        |
| Type                          | String                                                                                           |
| References                    |                                                                                                  |

</div>

<div id="LD_LTO_OBJECT_FILE" class="Subhead">

## 🔐 LD_LTO_OBJECT_FILE

|                 |                                                                                                                                    |
|-----------------|------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                                                    |
| `""`            |                                                                                                                                    |
| `<<otherwise>>` | -Xlinker                                                                                                                           |
|                 | -object_path_lto                                                                                                                   |
|                 | -Xlinker                                                                                                                           |
|                 | \$([value](#value))                                                                                                                |
| Condition       | \$([GCC_GENERATE_DEBUGGING_SYMBOLS](#dev667b2f097))                                                                                |
| DefaultValue    | \$(OBJECT_FILE_DIR_\$([CURRENT_VARIANT](#dev659e12181)))/\$([CURRENT_ARCH](#dev23cfef338))/\$([PRODUCT_NAME](#dev5c40d1d06))_lto.o |
| Name            | LD_LTO_OBJECT_FILE                                                                                                                 |
| Type            | Path                                                                                                                               |
| References      |                                                                                                                                    |

</div>

<div id="LD_EXPORT_GLOBAL_SYMBOLS" class="Subhead">

## 🔐 LD_EXPORT_GLOBAL_SYMBOLS

|                 |                          |
|-----------------|--------------------------|
| CommandLineArgs |                          |
| `NO`            |                          |
| `YES`           | -Xlinker                 |
|                 | -export_dynamic          |
| DefaultValue    | NO                       |
| Name            | LD_EXPORT_GLOBAL_SYMBOLS |
| Type            | Boolean                  |
| References      |                          |

</div>

<div id="LD_DONT_RUN_DEDUPLICATION" class="Subhead">

## 🔐 LD_DONT_RUN_DEDUPLICATION

|                        |                                                    |
|------------------------|----------------------------------------------------|
| CommandLineArgs        |                                                    |
| `NO`                   |                                                    |
| `YES`                  | -Xlinker                                           |
|                        | -no_deduplicate                                    |
| Condition              | \$([GCC_OPTIMIZATION_LEVEL](#dev80f5ad208)) == '0' |
| DefaultValue           | YES                                                |
| Name                   | LD_DONT_RUN_DEDUPLICATION                          |
| SupportedVersionRanges | 262.1                                              |
| Type                   | Boolean                                            |
| References             |                                                    |

</div>

<div id="LD_OBJC_ABI_VERSION" class="Subhead">

## 🔐 LD_OBJC_ABI_VERSION

|                 |                                           |
|-----------------|-------------------------------------------|
| CommandLineArgs |                                           |
| `""`            |                                           |
| `<<otherwise>>` | -Xlinker                                  |
|                 | -objc_abi_version                         |
|                 | -Xlinker                                  |
|                 | \$([value](#value))                       |
| DefaultValue    | \$([OBJC_ABI_VERSION](#OBJC_ABI_VERSION)) |
| Name            | LD_OBJC_ABI_VERSION                       |
| Type            | Enumeration                               |
| Values          | 1                                         |
|                 | 2                                         |
| References      |                                           |

</div>

<div id="LD_BITCODE_GENERATION_MODE" class="Subhead">

## 🔐 LD_BITCODE_GENERATION_MODE

|                 |                                                         |
|-----------------|---------------------------------------------------------|
| Architectures   | arm64                                                   |
|                 | armv7                                                   |
|                 | armv7s                                                  |
|                 | armv7k                                                  |
| CommandLineArgs |                                                         |
| `bitcode`       | -fembed-bitcode                                         |
| `marker`        | -fembed-bitcode-marker                                  |
| Condition       | \$([ENABLE_BITCODE](#dev6ee230c11)) == YES              |
| DefaultValue    | \$([BITCODE_GENERATION_MODE](#BITCODE_GENERATION_MODE)) |
| Name            | LD_BITCODE_GENERATION_MODE                              |
| Type            | Enumeration                                             |
| Values          | marker                                                  |
|                 | bitcode                                                 |
| References      |                                                         |

</div>

<div id="LD_VERIFY_BITCODE" class="Subhead">

## 🔐 LD_VERIFY_BITCODE

|                 |                                                                                                                    |
|-----------------|--------------------------------------------------------------------------------------------------------------------|
| Architectures   | arm64                                                                                                              |
|                 | armv7                                                                                                              |
|                 | armv7s                                                                                                             |
|                 | armv7k                                                                                                             |
| CommandLineArgs |                                                                                                                    |
| `NO`            |                                                                                                                    |
| `YES`           | -Xlinker                                                                                                           |
|                 | -bitcode_verify                                                                                                    |
| Condition       | \$([ENABLE_BITCODE](#dev6ee230c11)) == YES  &&  \$([BITCODE_GENERATION_MODE](#BITCODE_GENERATION_MODE)) == bitcode |
| DefaultValue    | YES                                                                                                                |
| Name            | LD_VERIFY_BITCODE                                                                                                  |
| Type            | Boolean                                                                                                            |
| References      |                                                                                                                    |

</div>

<div id="LD_HIDE_BITCODE_SYMBOLS" class="Subhead">

## 🔐 LD_HIDE_BITCODE_SYMBOLS

|                 |                                                                                                                    |
|-----------------|--------------------------------------------------------------------------------------------------------------------|
| Architectures   | arm64                                                                                                              |
|                 | armv7                                                                                                              |
|                 | armv7s                                                                                                             |
|                 | armv7k                                                                                                             |
| CommandLineArgs |                                                                                                                    |
| `NO`            |                                                                                                                    |
| `YES`           | -Xlinker                                                                                                           |
|                 | -bitcode_hide_symbols                                                                                              |
| Condition       | \$([ENABLE_BITCODE](#dev6ee230c11)) == YES  &&  \$([BITCODE_GENERATION_MODE](#BITCODE_GENERATION_MODE)) == bitcode |
| DefaultValue    | \$([HIDE_BITCODE_SYMBOLS](#HIDE_BITCODE_SYMBOLS))                                                                  |
| Name            | LD_HIDE_BITCODE_SYMBOLS                                                                                            |
| Type            | Boolean                                                                                                            |
| References      |                                                                                                                    |

</div>

<div id="LD_GENERATE_BITCODE_SYMBOL_MAP" class="Subhead">

## 🔐 LD_GENERATE_BITCODE_SYMBOL_MAP

|                 |                                                                                                                                                                       |
|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Architectures   | arm64                                                                                                                                                                 |
|                 | armv7                                                                                                                                                                 |
|                 | armv7s                                                                                                                                                                |
|                 | armv7k                                                                                                                                                                |
| CommandLineArgs |                                                                                                                                                                       |
| `NO`            |                                                                                                                                                                       |
| `YES`           | -Xlinker                                                                                                                                                              |
|                 | -bitcode_symbol_map                                                                                                                                                   |
|                 | -Xlinker                                                                                                                                                              |
|                 | \$([BUILT_PRODUCTS_DIR](#devffde5700e))                                                                                                                               |
| Condition       | \$([ENABLE_BITCODE](#dev6ee230c11)) == YES  &&  \$([BITCODE_GENERATION_MODE](#BITCODE_GENERATION_MODE)) == bitcode  &&  \$([MACH_O_TYPE](#dev5eb2828db)) != mh_object |
| DefaultValue    | \$([HIDE_BITCODE_SYMBOLS](#HIDE_BITCODE_SYMBOLS))                                                                                                                     |
| Name            | LD_GENERATE_BITCODE_SYMBOL_MAP                                                                                                                                        |
| Type            | Boolean                                                                                                                                                               |
| References      |                                                                                                                                                                       |

</div>

<div id="LD_THREAD_SANITIZER" class="Subhead">

## 🔐 LD_THREAD_SANITIZER

|                 |                                                         |
|-----------------|---------------------------------------------------------|
| Architectures   | x86_64                                                  |
|                 | arm64                                                   |
|                 | arm64e                                                  |
| CommandLineArgs |                                                         |
| `NO`            |                                                         |
| `YES`           | -fsanitize=thread                                       |
| DefaultValue    | \$([ENABLE_THREAD_SANITIZER](#ENABLE_THREAD_SANITIZER)) |
| Name            | LD_THREAD_SANITIZER                                     |
| Type            | Boolean                                                 |
| References      |                                                         |

</div>

<div id="LD_DEBUG_VARIANT" class="Subhead">

## 🔐 LD_DEBUG_VARIANT

|                        |                                                                                                                                                                                                                                  |
|------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs        |                                                                                                                                                                                                                                  |
| `NO`                   |                                                                                                                                                                                                                                  |
| `YES`                  | -Xlinker                                                                                                                                                                                                                         |
|                        | -debug_variant                                                                                                                                                                                                                   |
| Condition              | \$([ENABLE_ADDRESS_SANITIZER](#ENABLE_ADDRESS_SANITIZER)) == YES \|\| \$([ENABLE_THREAD_SANITIZER](#ENABLE_THREAD_SANITIZER)) == YES \|\| \$([ENABLE_UNDEFINED_BEHAVIOR_SANITIZER](#ENABLE_UNDEFINED_BEHAVIOR_SANITIZER)) == YES |
| DefaultValue           | YES                                                                                                                                                                                                                              |
| Name                   | LD_DEBUG_VARIANT                                                                                                                                                                                                                 |
| SupportedVersionRanges | 407                                                                                                                                                                                                                              |
| Type                   | Boolean                                                                                                                                                                                                                          |
| References             |                                                                                                                                                                                                                                  |

</div>

<div id="LD_FINAL_OUTPUT_FILE" class="Subhead">

## 🔐 LD_FINAL_OUTPUT_FILE

|                 |                                                                                                                                                 |
|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                                                                 |
| `""`            |                                                                                                                                                 |
| `<<otherwise>>` | -Xlinker                                                                                                                                        |
|                 | -final_output                                                                                                                                   |
|                 | -Xlinker                                                                                                                                        |
|                 | \$([value](#value))                                                                                                                             |
| Condition       | \$([DEPLOYMENT_POSTPROCESSING](#dev3d6a55e30)) == YES  &&  \$([SKIP_INSTALL](#devfeb7a0695)) == NO  &&  \$([INSTALL_PATH](#devabd541cd5)) != "" |
| DefaultValue    | \$([INSTALL_PATH](#devabd541cd5))/\$([EXECUTABLE_PATH](#dev5a0a1bb80))                                                                          |
| Name            | LD_FINAL_OUTPUT_FILE                                                                                                                            |
| Type            | Path                                                                                                                                            |
| References      |                                                                                                                                                 |

</div>

<div id="CLANG_ARC_MIGRATE_PRECHECK" class="Subhead">

## 🔐 CLANG_ARC_MIGRATE_PRECHECK

|                 |                            |
|-----------------|----------------------------|
| CommandLineArgs |                            |
| `donothing`     |                            |
| `precheck`      | -ccc-arcmt-check           |
| DefaultValue    | donothing                  |
| Name            | CLANG_ARC_MIGRATE_PRECHECK |
| Type            | Enumeration                |
| Values          | donothing                  |
|                 | precheck                   |
| References      |                            |

</div>

<div id="CLANG_ARC_MIGRATE_DIR" class="Subhead">

## 🔐 CLANG_ARC_MIGRATE_DIR

|                 |                       |
|-----------------|-----------------------|
| CommandLineFlag | -ccc-arcmt-migrate    |
| Name            | CLANG_ARC_MIGRATE_DIR |
| Type            | Path                  |
| References      |                       |

</div>

<div id="LD_DYLIB_ALLOWABLE_CLIENTS" class="Subhead">

## 🔐 LD_DYLIB_ALLOWABLE_CLIENTS

|                  |                            |
|------------------|----------------------------|
| ConditionFlavors | arch                       |
|                  | sdk                        |
| DefaultValue     |                            |
| Name             | LD_DYLIB_ALLOWABLE_CLIENTS |
| Type             | StringList                 |
| References       |                            |

</div>

<div id="AdditionalCommandLineArguments" class="Subhead">

## 🔐 AdditionalCommandLineArguments

|                       |                                |
|-----------------------|--------------------------------|
| CommandLinePrefixFlag |                                |
| Name                  | AdditionalCommandLineArguments |
| Type                  | StringList                     |
| References            |                                |

</div>

<div id="ALL_OTHER_LDFLAGS" class="Subhead">

## 🔐 ALL_OTHER_LDFLAGS

|                       |                                                                                                                                                                                                                                                                                                       |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLinePrefixFlag |                                                                                                                                                                                                                                                                                                       |
| Condition             | \$([MACH_O_TYPE](#dev5eb2828db)) != mh_object                                                                                                                                                                                                                                                         |
| DefaultValue          | \$([LD_FLAGS](#LD_FLAGS)) \$([SECTORDER_FLAGS](#dev2c8a64fcd)) \$([OTHER_LDFLAGS](#dev4fc8ef90a)) \$(OTHER_LDFLAGS_\$([variant](#variant))) \$(OTHER_LDFLAGS_\$([arch](#arch))) \$(OTHER_LDFLAGS_\$([variant](#variant))_\$([arch](#arch))) \$([PRODUCT_SPECIFIC_LDFLAGS](#PRODUCT_SPECIFIC_LDFLAGS)) |
| Name                  | ALL_OTHER_LDFLAGS                                                                                                                                                                                                                                                                                     |
| Type                  | StringList                                                                                                                                                                                                                                                                                            |
| References            |                                                                                                                                                                                                                                                                                                       |

</div>

<div id="OTHER_LDRFLAGS" class="Subhead">

## 🔐 OTHER_LDRFLAGS

|                       |                                               |
|-----------------------|-----------------------------------------------|
| CommandLinePrefixFlag |                                               |
| Condition             | \$([MACH_O_TYPE](#dev5eb2828db)) == mh_object |
| DefaultValue          | \$([OTHER_LDFLAGS](#dev4fc8ef90a))            |
| Name                  | OTHER_LDRFLAGS                                |
| Type                  | StringList                                    |
| References            |                                               |

</div>

<div id="ALTERNATE_LINKER" class="Subhead">

## 🔐 ALTERNATE_LINKER

|                 |                              |
|-----------------|------------------------------|
| CommandLineArgs |                              |
| `""`            |                              |
| `<<otherwise>>` | -fuse-ld=\$([value](#value)) |
| Name            | ALTERNATE_LINKER             |
| Type            | String                       |
| References      |                              |

</div>

<div id="MTL_TARGET_TRIPLE" class="Subhead">

## 🔐 MTL_TARGET_TRIPLE

|                 |                                                                                                                                                                                                  |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs | -target                                                                                                                                                                                          |
|                 | \$([value](#value))                                                                                                                                                                              |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) == YES                                                                                                               |
| DefaultValue    | air64-\$([LLVM_TARGET_TRIPLE_VENDOR](#LLVM_TARGET_TRIPLE_VENDOR))-\$([LLVM_TARGET_TRIPLE_OS_VERSION](#LLVM_TARGET_TRIPLE_OS_VERSION))\$([LLVM_TARGET_TRIPLE_SUFFIX](#LLVM_TARGET_TRIPLE_SUFFIX)) |
| Name            | MTL_TARGET_TRIPLE                                                                                                                                                                                |
| Type            | String                                                                                                                                                                                           |
| References      |                                                                                                                                                                                                  |

</div>

<div id="MTL_HEADER_SEARCH_PATH_BUILT_PRODUCTS_DIR" class="Subhead">

## 🔐 MTL_HEADER_SEARCH_PATH_BUILT_PRODUCTS_DIR

|                 |                                                   |
|-----------------|---------------------------------------------------|
| CommandLineArgs | -I\$([BUILT_PRODUCTS_DIR](#devffde5700e))/include |
| Name            | MTL_HEADER_SEARCH_PATH_BUILT_PRODUCTS_DIR         |
| Type            | Path                                              |
| References      |                                                   |

</div>

<div id="MTL_FRAMEWORK_SEARCH_PATH_BUILT_PRODUCTS_DIR" class="Subhead">

## 🔐 MTL_FRAMEWORK_SEARCH_PATH_BUILT_PRODUCTS_DIR

|                 |                                              |
|-----------------|----------------------------------------------|
| CommandLineArgs | -F\$([BUILT_PRODUCTS_DIR](#devffde5700e))    |
| Name            | MTL_FRAMEWORK_SEARCH_PATH_BUILT_PRODUCTS_DIR |
| Type            | Path                                         |
| References      |                                              |

</div>

<div id="MTL_ENABLE_MODULES" class="Subhead">

## 🔐 MTL_ENABLE_MODULES

|                 |                    |
|-----------------|--------------------|
| Category        | BuildOptions       |
| CommandLineArgs |                    |
| `NO`            |                    |
| `YES`           | -fmodules          |
| DefaultValue    | NO                 |
| Name            | MTL_ENABLE_MODULES |
| Type            | Boolean            |
| References      |                    |

</div>

<div id="CLANG_DIAGNOSTICS_FILE" class="Subhead">

## 🔐 CLANG_DIAGNOSTICS_FILE

|                 |                                                                                                                               |
|-----------------|-------------------------------------------------------------------------------------------------------------------------------|
| CommandLineFlag | -serialize-diagnostics                                                                                                        |
| DefaultValue    | \$(MTLCOMPILER_OUTPUT_FILE:dir)\$([InputFileBase](#InputFileBase))\$([InputFileBaseUniquefier](#InputFileBaseUniquefier)).dia |
| Name            | CLANG_DIAGNOSTICS_FILE                                                                                                        |
| Type            | Path                                                                                                                          |
| References      |                                                                                                                               |

</div>

<div id="MTLCOMPILER_OUTPUT_FILE" class="Subhead">

## 🔐 MTLCOMPILER_OUTPUT_FILE

|                 |                                                                                                                                           |
|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs | -o                                                                                                                                        |
|                 | \$([value](#value))                                                                                                                       |
| DefaultValue    | \$([TARGET_TEMP_DIR](#dev4ad1824fb))/Metal/\$([InputFileBase](#InputFileBase))\$([InputFileBaseUniquefier](#InputFileBaseUniquefier)).air |
| Name            | MTLCOMPILER_OUTPUT_FILE                                                                                                                   |
| Type            | String                                                                                                                                    |
| References      | [CLANG_DIAGNOSTICS_FILE](#CLANG_DIAGNOSTICS_FILE)                                                                                         |

</div>

<div id="MTLCOMPILER_DEPENDENCY_INFO_FILE" class="Subhead">

## 🔐 MTLCOMPILER_DEPENDENCY_INFO_FILE

|              |                                                                                                                                           |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | \$([TARGET_TEMP_DIR](#dev4ad1824fb))/Metal/\$([InputFileBase](#InputFileBase))\$([InputFileBaseUniquefier](#InputFileBaseUniquefier)).dat |
| Name         | MTLCOMPILER_DEPENDENCY_INFO_FILE                                                                                                          |
| Type         | String                                                                                                                                    |
| References   |                                                                                                                                           |

</div>

<div id="build_file_compiler_flags" class="Subhead">

## 🔐 build_file_compiler_flags

|                       |                           |
|-----------------------|---------------------------|
| CommandLinePrefixFlag |                           |
| DefaultValue          |                           |
| Name                  | build_file_compiler_flags |
| Type                  | StringList                |
| References            |                           |

</div>

<div id="MTL_INDEX_STORE_PATH" class="Subhead">

## 🔐 MTL_INDEX_STORE_PATH

|              |                                                   |
|--------------|---------------------------------------------------|
| DefaultValue | \$([INDEX_DATA_STORE_DIR](#INDEX_DATA_STORE_DIR)) |
| Name         | MTL_INDEX_STORE_PATH                              |
| Type         | Path                                              |
| References   | [MTL_ENABLE_INDEX_STORE](#MTL_ENABLE_INDEX_STORE) |

</div>

<div id="MTL_ENABLE_INDEX_STORE" class="Subhead">

## 🔐 MTL_ENABLE_INDEX_STORE

|                 |                                                                                                                                                                                     |
|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category        | BuildOptions                                                                                                                                                                        |
| CommandLineArgs |                                                                                                                                                                                     |
| `NO`            |                                                                                                                                                                                     |
| `YES`           | -index-store-path                                                                                                                                                                   |
|                 | \$([MTL_INDEX_STORE_PATH](#MTL_INDEX_STORE_PATH))                                                                                                                                   |
| Condition       | \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == YES  \|\| ( \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == Default  &&  \$([MTL_ENABLE_DEBUG_INFO](#dev2afe86b0e)) != NO ) |
| DefaultValue    | \$([INDEX_ENABLE_DATA_STORE](#INDEX_ENABLE_DATA_STORE))                                                                                                                             |
| Name            | MTL_ENABLE_INDEX_STORE                                                                                                                                                              |
| Type            | Boolean                                                                                                                                                                             |
| References      |                                                                                                                                                                                     |

</div>

<div id="MTL_DEPLOYMENT_TARGET" class="Subhead">

## 🔐 MTL_DEPLOYMENT_TARGET

|                 |                                                                                    |
|-----------------|------------------------------------------------------------------------------------|
| CommandLineArgs | -mios-version-min=\$([IPHONEOS_DEPLOYMENT_TARGET](#IPHONEOS_DEPLOYMENT_TARGET))    |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) != YES |
| Name            | MTL_DEPLOYMENT_TARGET                                                              |
| Type            | String                                                                             |
| References      |                                                                                    |

</div>

<div id="MTL_DEPLOYMENT_TARGET" class="Subhead">

## 🔐 MTL_DEPLOYMENT_TARGET

|                 |                                                                                    |
|-----------------|------------------------------------------------------------------------------------|
| CommandLineArgs | -mios-version-min=\$([IPHONEOS_DEPLOYMENT_TARGET](#IPHONEOS_DEPLOYMENT_TARGET))    |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) != YES |
| Name            | MTL_DEPLOYMENT_TARGET                                                              |
| Type            | String                                                                             |
| References      |                                                                                    |

</div>

<div id="MTL_TARGET_TRIPLE" class="Subhead">

## 🔐 MTL_TARGET_TRIPLE

|                 |                                                                                                                                                                                                  |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs | -target                                                                                                                                                                                          |
|                 | \$([value](#value))                                                                                                                                                                              |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) == YES                                                                                                               |
| DefaultValue    | air64-\$([LLVM_TARGET_TRIPLE_VENDOR](#LLVM_TARGET_TRIPLE_VENDOR))-\$([LLVM_TARGET_TRIPLE_OS_VERSION](#LLVM_TARGET_TRIPLE_OS_VERSION))\$([LLVM_TARGET_TRIPLE_SUFFIX](#LLVM_TARGET_TRIPLE_SUFFIX)) |
| Name            | MTL_TARGET_TRIPLE                                                                                                                                                                                |
| Type            | String                                                                                                                                                                                           |
| References      |                                                                                                                                                                                                  |

</div>

<div id="MTL_DEPLOYMENT_TARGET" class="Subhead">

## 🔐 MTL_DEPLOYMENT_TARGET

|                 |                                                                                    |
|-----------------|------------------------------------------------------------------------------------|
| CommandLineArgs | -mios-version-min=\$([IPHONEOS_DEPLOYMENT_TARGET](#IPHONEOS_DEPLOYMENT_TARGET))    |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) != YES |
| Name            | MTL_DEPLOYMENT_TARGET                                                              |
| Type            | String                                                                             |
| References      |                                                                                    |

</div>

<div id="MTL_DEPLOYMENT_TARGET" class="Subhead">

## 🔐 MTL_DEPLOYMENT_TARGET

|                 |                                                                                    |
|-----------------|------------------------------------------------------------------------------------|
| CommandLineArgs | -mios-version-min=\$([IPHONEOS_DEPLOYMENT_TARGET](#IPHONEOS_DEPLOYMENT_TARGET))    |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) != YES |
| Name            | MTL_DEPLOYMENT_TARGET                                                              |
| Type            | String                                                                             |
| References      |                                                                                    |

</div>

<div id="MTL_DEPLOYMENT_TARGET" class="Subhead">

## 🔐 MTL_DEPLOYMENT_TARGET

|                 |                                                                                    |
|-----------------|------------------------------------------------------------------------------------|
| CommandLineArgs | -mios-version-min=\$([IPHONEOS_DEPLOYMENT_TARGET](#IPHONEOS_DEPLOYMENT_TARGET))    |
| Condition       | \$([USE_LLVM_TARGET_TRIPLES_FOR_CLANG](#USE_LLVM_TARGET_TRIPLES_FOR_CLANG)) != YES |
| Name            | MTL_DEPLOYMENT_TARGET                                                              |
| Type            | String                                                                             |
| References      |                                                                                    |

</div>

<div id="MTLLINKER_OUTPUT_FILE" class="Subhead">

## 🔐 MTLLINKER_OUTPUT_FILE

|                 |                                                                                                                            |
|-----------------|----------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs | -o                                                                                                                         |
|                 | \$([value](#value))                                                                                                        |
| DefaultValue    | \$([METAL_LIBRARY_OUTPUT_DIR](#METAL_LIBRARY_OUTPUT_DIR))/\$([METAL_LIBRARY_FILE_BASE](#METAL_LIBRARY_FILE_BASE)).metallib |
| Name            | MTLLINKER_OUTPUT_FILE                                                                                                      |
| Type            | String                                                                                                                     |
| References      |                                                                                                                            |

</div>

<div id="COREML_CODEGEN_SWIFT_VERSION" class="Subhead">

## 🔐 COREML_CODEGEN_SWIFT_VERSION

|              |                                     |
|--------------|-------------------------------------|
| DefaultValue | \$([SWIFT_VERSION](#SWIFT_VERSION)) |
| Name         | COREML_CODEGEN_SWIFT_VERSION        |
| Type         | String                              |
| References   |                                     |

</div>

<div id="build_file_compiler_flags" class="Subhead">

## 🔐 build_file_compiler_flags

|                       |                           |
|-----------------------|---------------------------|
| CommandLinePrefixFlag |                           |
| DefaultValue          |                           |
| Name                  | build_file_compiler_flags |
| Type                  | StringList                |
| References            |                           |

</div>

<div id="COREML_COMPILER_INFOPLIST_CONTENT_FILE" class="Subhead">

## 🔐 COREML_COMPILER_INFOPLIST_CONTENT_FILE

|                 |                                                                                                  |
|-----------------|--------------------------------------------------------------------------------------------------|
| CommandLineFlag | --output-partial-info-plist                                                                      |
| DefaultValue    | \$([TARGET_TEMP_DIR](#dev4ad1824fb))/\$([InputFileBase](#InputFileBase))-CoreMLPartialInfo.plist |
| Name            | COREML_COMPILER_INFOPLIST_CONTENT_FILE                                                           |
| Type            | Path                                                                                             |
| References      |                                                                                                  |

</div>

<div id="NASM_OUTPUT_FILE_FORMAT" class="Subhead">

## 🔐 NASM_OUTPUT_FILE_FORMAT

|                       |                         |
|-----------------------|-------------------------|
| CommandLinePrefixFlag | -f                      |
| DefaultValue          | macho                   |
| Name                  | NASM_OUTPUT_FILE_FORMAT |
| Type                  | String                  |
| References            |                         |

</div>

<div id="build_file_compiler_flags" class="Subhead">

## 🔐 build_file_compiler_flags

|                       |                           |
|-----------------------|---------------------------|
| CommandLinePrefixFlag |                           |
| DefaultValue          |                           |
| Name                  | build_file_compiler_flags |
| Type                  | StringList                |
| References            |                           |

</div>

<div id="CCHROOT" class="Subhead">

## 🔐 CCHROOT

|              |                               |
|--------------|-------------------------------|
| DefaultValue | \$([CACHE_ROOT](#CACHE_ROOT)) |
| Name         | CCHROOT                       |
| Type         | Path                          |
| References   |                               |

</div>

<div id="CLASS_FILE_DIR" class="Subhead">

## 🔐 CLASS_FILE_DIR

|              |                                       |
|--------------|---------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/JavaClasses |
| Name         | CLASS_FILE_DIR                        |
| Type         | Path                                  |
| References   |                                       |

</div>

<div id="FIXED_FILES_DIR" class="Subhead">

## 🔐 FIXED_FILES_DIR

|              |                                                 |
|--------------|-------------------------------------------------|
| DefaultValue | \$([TARGET_TEMP_DIR](#dev4ad1824fb))/FixedFiles |
| Name         | FIXED_FILES_DIR                                 |
| Type         | Path                                            |
| References   |                                                 |

</div>

<div id="COMPOSITE_SDK_DIRS" class="Subhead">

## 🔐 COMPOSITE_SDK_DIRS

|              |                                            |
|--------------|--------------------------------------------|
| DefaultValue | \$([OBJROOT](#devad6c72289))/CompositeSDKs |
| Name         | COMPOSITE_SDK_DIRS                         |
| Type         | PathList                                   |
| References   |                                            |

</div>

<div id="TEMP_FILE_DIR" class="Subhead">

## 🔐 TEMP_FILE_DIR

|              |                                   |
|--------------|-----------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))         |
| Name         | TEMP_FILE_DIR                     |
| Type         | Path                              |
| References   | [TEMP_FILES_DIR](#TEMP_FILES_DIR) |

</div>

<div id="DERIVED_FILES_DIR" class="Subhead">

## 🔐 DERIVED_FILES_DIR

|              |                                       |
|--------------|---------------------------------------|
| DefaultValue | \$([DERIVED_FILE_DIR](#devcdbd943f2)) |
| Name         | DERIVED_FILES_DIR                     |
| Type         | Path                                  |
| References   |                                       |

</div>

<div id="PRODUCT_TYPE" class="Subhead">

## 🔐 PRODUCT_TYPE

|              |                                                                                         |
|--------------|-----------------------------------------------------------------------------------------|
| DefaultValue |                                                                                         |
| Name         | PRODUCT_TYPE                                                                            |
| Type         | String                                                                                  |
| References   | [GCC_PRODUCT_TYPE_PREPROCESSOR_DEFINITIONS](#GCC_PRODUCT_TYPE_PREPROCESSOR_DEFINITIONS) |
|              | [HEADERMAP_INCLUDES_FRAMEWORK_ENTRIES_FOR_ALL_PRODUCT_TYPES](#deva49316ab8)             |
|              | [PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS](#PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS)             |
|              | [PRODUCT_TYPE_LIBRARY_SEARCH_PATHS](#PRODUCT_TYPE_LIBRARY_SEARCH_PATHS)                 |

</div>

<div id="SHALLOW_BUNDLE" class="Subhead">

## 🔐 SHALLOW_BUNDLE

|              |                |
|--------------|----------------|
| DefaultValue | NO             |
| Name         | SHALLOW_BUNDLE |
| Type         | Boolean        |
| References   |                |

</div>

<div id="EXECUTABLE_VARIANT_SUFFIX" class="Subhead">

## 🔐 EXECUTABLE_VARIANT_SUFFIX

|              |                           |
|--------------|---------------------------|
| DefaultValue |                           |
| Name         | EXECUTABLE_VARIANT_SUFFIX |
| Type         | String                    |
| References   |                           |

</div>

<div id="WRAPPER_PREFIX" class="Subhead">

## 🔐 WRAPPER_PREFIX

|              |                |
|--------------|----------------|
| DefaultValue |                |
| Name         | WRAPPER_PREFIX |
| Type         | String         |
| References   |                |

</div>

<div id="PKGINFO_PATH" class="Subhead">

## 🔐 PKGINFO_PATH

|              |              |
|--------------|--------------|
| DefaultValue |              |
| Name         | PKGINFO_PATH |
| Type         | Path         |
| References   |              |

</div>

<div id="PBDEVELOPMENTPLIST_PATH" class="Subhead">

## 🔐 PBDEVELOPMENTPLIST_PATH

|              |                         |
|--------------|-------------------------|
| DefaultValue |                         |
| Name         | PBDEVELOPMENTPLIST_PATH |
| Type         | Path                    |
| References   |                         |

</div>

<div id="VERSIONPLIST_PATH" class="Subhead">

## 🔐 VERSIONPLIST_PATH

|              |                   |
|--------------|-------------------|
| DefaultValue |                   |
| Name         | VERSIONPLIST_PATH |
| Type         | Path              |
| References   |                   |

</div>

<div id="SHARED_SUPPORT_FOLDER_PATH" class="Subhead">

## 🔐 SHARED_SUPPORT_FOLDER_PATH

|              |                            |
|--------------|----------------------------|
| DefaultValue |                            |
| Name         | SHARED_SUPPORT_FOLDER_PATH |
| Type         | Path                       |
| References   |                            |

</div>

<div id="LOCALIZED_RESOURCES_FOLDER_PATH" class="Subhead">

## 🔐 LOCALIZED_RESOURCES_FOLDER_PATH

|              |                                                       |
|--------------|-------------------------------------------------------|
| DefaultValue |                                                       |
| Name         | LOCALIZED_RESOURCES_FOLDER_PATH                       |
| Type         | Path                                                  |
| References   | [METAL_LIBRARY_OUTPUT_DIR](#METAL_LIBRARY_OUTPUT_DIR) |
|              | [UNLOCALIZED_RESOURCES_FOLDER_PATH](#deva946e3ce6)    |

</div>

<div id="MODULES_FOLDER_PATH" class="Subhead">

## 🔐 MODULES_FOLDER_PATH

|              |                                                                                                 |
|--------------|-------------------------------------------------------------------------------------------------|
| DefaultValue |                                                                                                 |
| Description  | Specifies the directory that contains the product’s Clang module maps and Swift module content. |
| Name         | MODULES_FOLDER_PATH                                                                             |
| Type         | Path                                                                                            |
| References   |                                                                                                 |

</div>

<div id="JAVA_FOLDER_PATH" class="Subhead">

## 🔐 JAVA_FOLDER_PATH

|              |                  |
|--------------|------------------|
| DefaultValue |                  |
| Name         | JAVA_FOLDER_PATH |
| Type         | Path             |
| References   |                  |

</div>

<div id="XPCSERVICES_FOLDER_PATH" class="Subhead">

## 🔐 XPCSERVICES_FOLDER_PATH

|              |                                                       |
|--------------|-------------------------------------------------------|
| DefaultValue | \$([CONTENTS_FOLDER_PATH](#dev7c77fdc88))/XPCServices |
| Name         | XPCSERVICES_FOLDER_PATH                               |
| Type         | Path                                                  |
| References   |                                                       |

</div>

<div id="CODESIGNING_FOLDER_PATH" class="Subhead">

## 🔐 CODESIGNING_FOLDER_PATH

|              |                                                                                   |
|--------------|-----------------------------------------------------------------------------------|
| DefaultValue | \$([TARGET_BUILD_DIR](#dev256404b3f))/\$([FULL_PRODUCT_NAME](#FULL_PRODUCT_NAME)) |
| Name         | CODESIGNING_FOLDER_PATH                                                           |
| Type         | Path                                                                              |
| References   |                                                                                   |

</div>

<div id="DERIVED_PATHS" class="Subhead">

## 🔐 DERIVED_PATHS

|              |               |
|--------------|---------------|
| DefaultValue |               |
| Name         | DERIVED_PATHS |
| References   |               |

</div>

<div id="ALWAYS_USE_SEPARATE_HEADERMAPS" class="Subhead">

## 🔐 ALWAYS_USE_SEPARATE_HEADERMAPS

|                  |                                |
|------------------|--------------------------------|
| ConditionFlavors | arch                           |
| DefaultValue     | NO                             |
| Name             | ALWAYS_USE_SEPARATE_HEADERMAPS |
| Type             | Boolean                        |
| References       |                                |

</div>

<div id="RECURSIVE_SEARCH_PATHS_FOLLOW_SYMLINKS" class="Subhead">

## 🔐 RECURSIVE_SEARCH_PATHS_FOLLOW_SYMLINKS

|              |                                        |
|--------------|----------------------------------------|
| DefaultValue | YES                                    |
| Name         | RECURSIVE_SEARCH_PATHS_FOLLOW_SYMLINKS |
| Type         | Boolean                                |
| References   |                                        |

</div>

<div id="USE_HEADER_SYMLINKS" class="Subhead">

## 🔐 USE_HEADER_SYMLINKS

|              |                     |
|--------------|---------------------|
| DefaultValue | NO                  |
| Name         | USE_HEADER_SYMLINKS |
| Type         | Boolean             |
| References   |                     |

</div>

<div id="UNSTRIPPED_PRODUCT" class="Subhead">

## 🔐 UNSTRIPPED_PRODUCT

|              |                    |
|--------------|--------------------|
| DefaultValue | NO                 |
| Name         | UNSTRIPPED_PRODUCT |
| Type         | Boolean            |
| References   |                    |

</div>

<div id="COPY_RESOURCES_FROM_STATIC_FRAMEWORKS" class="Subhead">

## 🔐 COPY_RESOURCES_FROM_STATIC_FRAMEWORKS

|              |                                       |
|--------------|---------------------------------------|
| DefaultValue | YES                                   |
| Name         | COPY_RESOURCES_FROM_STATIC_FRAMEWORKS |
| Type         | Boolean                               |
| References   |                                       |

</div>

<div id="SET_DIR_MODE_OWNER_GROUP" class="Subhead">

## 🔐 SET_DIR_MODE_OWNER_GROUP

|              |                          |
|--------------|--------------------------|
| DefaultValue | YES                      |
| Name         | SET_DIR_MODE_OWNER_GROUP |
| Type         | Boolean                  |
| References   |                          |

</div>

<div id="SET_FILE_MODE_OWNER_GROUP" class="Subhead">

## 🔐 SET_FILE_MODE_OWNER_GROUP

|              |                           |
|--------------|---------------------------|
| DefaultValue | NO                        |
| Name         | SET_FILE_MODE_OWNER_GROUP |
| Type         | Boolean                   |
| References   |                           |

</div>

<div id="DONT_GENERATE_INFOPLIST_FILE" class="Subhead">

## 🔐 DONT_GENERATE_INFOPLIST_FILE

|              |                              |
|--------------|------------------------------|
| DefaultValue | NO                           |
| Name         | DONT_GENERATE_INFOPLIST_FILE |
| Type         | Boolean                      |
| References   |                              |

</div>

<div id="REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES" class="Subhead">

## 🔐 REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES

|              |                                      |
|--------------|--------------------------------------|
| DefaultValue | YES                                  |
| Name         | REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES |
| Type         | Boolean                              |
| References   |                                      |

</div>

<div id="RESOURCE_RULES_PLIST_PATH" class="Subhead">

## 🔐 RESOURCE_RULES_PLIST_PATH

|                  |                           |
|------------------|---------------------------|
| ConditionFlavors | sdk                       |
| DefaultValue     |                           |
| Name             | RESOURCE_RULES_PLIST_PATH |
| Type             | Path                      |
| References       |                           |

</div>

<div id="GCC_VERSION_IDENTIFIER" class="Subhead">

## 🔐 GCC_VERSION_IDENTIFIER

|              |                            |
|--------------|----------------------------|
| DefaultValue | \$(GCC_VERSION:identifier) |
| Name         | GCC_VERSION_IDENTIFIER     |
| Type         | String                     |
| References   |                            |

</div>

<div id="DEFAULT_COMPILER" class="Subhead">

## 🔐 DEFAULT_COMPILER

|              |                  |
|--------------|------------------|
| DefaultValue |                  |
| Name         | DEFAULT_COMPILER |
| Type         | String           |
| References   |                  |

</div>

<div id="GLOBAL_CFLAGS" class="Subhead">

## 🔐 GLOBAL_CFLAGS

|                  |               |
|------------------|---------------|
| ConditionFlavors | arch          |
|                  | sdk           |
| DefaultValue     |               |
| Name             | GLOBAL_CFLAGS |
| Type             | StringList    |
| References       |               |

</div>

<div id="NO_COMMON" class="Subhead">

## 🔐 NO_COMMON

|                  |                                       |
|------------------|---------------------------------------|
| ConditionFlavors | arch                                  |
|                  | sdk                                   |
| DefaultValue     | YES                                   |
| Name             | NO_COMMON                             |
| Type             | Boolean                               |
| References       | [GCC_NO_COMMON_BLOCKS](#dev377aef9cd) |

</div>

<div id="PASCAL_STRINGS" class="Subhead">

## 🔐 PASCAL_STRINGS

|                  |                                            |
|------------------|--------------------------------------------|
| ConditionFlavors | arch                                       |
|                  | sdk                                        |
| DefaultValue     | YES                                        |
| Name             | PASCAL_STRINGS                             |
| Type             | Boolean                                    |
| References       | [GCC_ENABLE_PASCAL_STRINGS](#devd446ab334) |

</div>

<div id="USE_DYNAMIC_NO_PIC" class="Subhead">

## 🔐 USE_DYNAMIC_NO_PIC

|                  |                    |
|------------------|--------------------|
| ConditionFlavors | arch               |
|                  | sdk                |
| DefaultValue     | YES                |
| Name             | USE_DYNAMIC_NO_PIC |
| Type             | Boolean            |
| References       |                    |

</div>

<div id="PREFIX_FLAGS" class="Subhead">

## 🔐 PREFIX_FLAGS

|                  |              |
|------------------|--------------|
| ConditionFlavors | arch         |
|                  | sdk          |
| DefaultValue     |              |
| Name             | PREFIX_FLAGS |
| Type             | StringList   |
| References       |              |

</div>

<div id="OTHER_PRECOMP_CFLAGS" class="Subhead">

## 🔐 OTHER_PRECOMP_CFLAGS

|                  |                      |
|------------------|----------------------|
| ConditionFlavors | arch                 |
|                  | sdk                  |
| DefaultValue     |                      |
| Name             | OTHER_PRECOMP_CFLAGS |
| Type             | StringList           |
| References       |                      |

</div>

<div id="SYMBOL_HEADER" class="Subhead">

## 🔐 SYMBOL_HEADER

|              |               |
|--------------|---------------|
| DefaultValue |               |
| Name         | SYMBOL_HEADER |
| Type         | Path          |
| References   |               |

</div>

<div id="PREFIX_HEADER" class="Subhead">

## 🔐 PREFIX_HEADER

|              |                                                       |
|--------------|-------------------------------------------------------|
| DefaultValue |                                                       |
| Name         | PREFIX_HEADER                                         |
| Type         | Path                                                  |
| References   | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES)           |
|              | [CPP_PREFIX_HEADER](#dev5d418c53e)                    |
|              | [GCC_PRECOMPILE_PREFIX_HEADER](#dev158433cad)         |
|              | [GCC_PREFIX_HEADER](#dev8622c506f)                    |
|              | [INFOPLIST_PREFIX_HEADER](#dev4560187ae)              |
|              | [PRECOMPILE_PREFIX_HEADER](#PRECOMPILE_PREFIX_HEADER) |

</div>

<div id="PRECOMPILE_PREFIX_HEADER" class="Subhead">

## 🔐 PRECOMPILE_PREFIX_HEADER

|              |                                               |
|--------------|-----------------------------------------------|
| DefaultValue |                                               |
| Name         | PRECOMPILE_PREFIX_HEADER                      |
| Type         | Boolean                                       |
| References   | [CLANG_DEBUG_MODULES](#CLANG_DEBUG_MODULES)   |
|              | [GCC_PRECOMPILE_PREFIX_HEADER](#dev158433cad) |

</div>

<div id="USE_GCC3_PFE_SUPPORT" class="Subhead">

## 🔐 USE_GCC3_PFE_SUPPORT

|              |                                                       |
|--------------|-------------------------------------------------------|
| DefaultValue |                                                       |
| Name         | USE_GCC3_PFE_SUPPORT                                  |
| Type         | Boolean                                               |
| References   | [GCC_USE_GCC3_PFE_SUPPORT](#GCC_USE_GCC3_PFE_SUPPORT) |

</div>

<div id="PFE_FILE_C_DIALECTS" class="Subhead">

## 🔐 PFE_FILE_C_DIALECTS

|              |                                                     |
|--------------|-----------------------------------------------------|
| DefaultValue |                                                     |
| Name         | PFE_FILE_C_DIALECTS                                 |
| Type         | StringList                                          |
| References   | [GCC_PFE_FILE_C_DIALECTS](#GCC_PFE_FILE_C_DIALECTS) |

</div>

<div id="PRECOMP_DESTINATION_DIR" class="Subhead">

## 🔐 PRECOMP_DESTINATION_DIR

|              |                                         |
|--------------|-----------------------------------------|
| DefaultValue | \$([TEMP_DIR](#TEMP_DIR))/PrefixHeaders |
| Name         | PRECOMP_DESTINATION_DIR                 |
| Type         | String                                  |
| References   |                                         |

</div>

<div id="PREFIX_CFLAG_BASE" class="Subhead">

## 🔐 PREFIX_CFLAG_BASE

|              |                   |
|--------------|-------------------|
| DefaultValue |                   |
| Name         | PREFIX_CFLAG_BASE |
| Type         | String            |
| References   |                   |

</div>

<div id="PREFIX_REFERENCE" class="Subhead">

## 🔐 PREFIX_REFERENCE

|              |                  |
|--------------|------------------|
| DefaultValue |                  |
| Name         | PREFIX_REFERENCE |
| Type         | String           |
| References   |                  |

</div>

<div id="GCC_USE_GCC3_PFE_SUPPORT" class="Subhead">

## 🔐 GCC_USE_GCC3_PFE_SUPPORT

|              |                          |
|--------------|--------------------------|
| DefaultValue | YES                      |
| Name         | GCC_USE_GCC3_PFE_SUPPORT |
| Type         | Boolean                  |
| References   |                          |

</div>

<div id="GCC_PFE_FILE_C_DIALECTS" class="Subhead">

## 🔐 GCC_PFE_FILE_C_DIALECTS

|              |                                 |
|--------------|---------------------------------|
| DefaultValue | c objective-c c++ objective-c++ |
| Name         | GCC_PFE_FILE_C_DIALECTS         |
| Type         | StringList                      |
| References   |                                 |

</div>

<div id="CLEAN_PRECOMPS" class="Subhead">

## 🔐 CLEAN_PRECOMPS

|              |                |
|--------------|----------------|
| DefaultValue | YES            |
| Name         | CLEAN_PRECOMPS |
| Type         | Boolean        |
| References   |                |

</div>

<div id="OPTIMIZATION_CFLAGS" class="Subhead">

## 🔐 OPTIMIZATION_CFLAGS

|                  |                     |
|------------------|---------------------|
| ConditionFlavors | arch                |
| DefaultValue     |                     |
| Name             | OPTIMIZATION_CFLAGS |
| Type             | StringList          |
| References       |                     |

</div>

<div id="DWARF_DSYM_FILE_NAME" class="Subhead">

## 🔐 DWARF_DSYM_FILE_NAME

|              |                                                  |
|--------------|--------------------------------------------------|
| DefaultValue | \$([FULL_PRODUCT_NAME](#FULL_PRODUCT_NAME)).dSYM |
| Name         | DWARF_DSYM_FILE_NAME                             |
| Type         | String                                           |
| UIType       | String                                           |
| References   |                                                  |

</div>

<div id="DWARF_DSYM_FOLDER_PATH" class="Subhead">

## 🔐 DWARF_DSYM_FOLDER_PATH

|              |                                              |
|--------------|----------------------------------------------|
| DefaultValue | \$([CONFIGURATION_BUILD_DIR](#dev1eb1f6acb)) |
| Name         | DWARF_DSYM_FOLDER_PATH                       |
| Type         | String                                       |
| UIType       | String                                       |
| References   |                                              |

</div>

<div id="DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT" class="Subhead">

## 🔐 DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT

|              |                                          |
|--------------|------------------------------------------|
| DefaultValue | NO                                       |
| Name         | DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT |
| Type         | Boolean                                  |
| References   |                                          |

</div>

<div id="LINKER_LIBRARY_FLAGS" class="Subhead">

## 🔐 LINKER_LIBRARY_FLAGS

|              |                      |
|--------------|----------------------|
| DefaultValue |                      |
| Name         | LINKER_LIBRARY_FLAGS |
| Type         | StringList           |
| References   |                      |

</div>

<div id="LD_FLAGS" class="Subhead">

## 🔐 LD_FLAGS

|                  |                                         |
|------------------|-----------------------------------------|
| ConditionFlavors | arch                                    |
|                  | sdk                                     |
| DefaultValue     |                                         |
| Name             | LD_FLAGS                                |
| Type             | StringList                              |
| References       | [ALL_OTHER_LDFLAGS](#ALL_OTHER_LDFLAGS) |

</div>

<div id="LD_DYLIB_ALLOWABLE_CLIENTS" class="Subhead">

## 🔐 LD_DYLIB_ALLOWABLE_CLIENTS

|                  |                            |
|------------------|----------------------------|
| ConditionFlavors | arch                       |
|                  | sdk                        |
| DefaultValue     |                            |
| Name             | LD_DYLIB_ALLOWABLE_CLIENTS |
| Type             | StringList                 |
| References       |                            |

</div>

<div id="LEX" class="Subhead">

## 🔐 LEX

|              |                                               |
|--------------|-----------------------------------------------|
| DefaultValue | lex                                           |
| Name         | LEX                                           |
| Type         | Path                                          |
| References   | [LEXFLAGS](#dev6b3b19e50)                     |
|              | [LEX_CASE_INSENSITIVE_SCANNER](#dev1018a3091) |
|              | [LEX_INSERT_LINE_DIRECTIVES](#dev992623a32)   |
|              | [LEX_SUPPRESS_DEFAULT_RULE](#dev4fcf37408)    |
|              | [LEX_SUPPRESS_WARNINGS](#devbd6e04b71)        |

</div>

<div id="YACC" class="Subhead">

## 🔐 YACC

|              |                                                     |
|--------------|-----------------------------------------------------|
| DefaultValue | yacc                                                |
| Name         | YACC                                                |
| Type         | Path                                                |
| References   | [YACCFLAGS](#dev71955b427)                          |
|              | [YACC_GENERATED_FILE_STEM](#devc5f9de1d7)           |
|              | [YACC_GENERATE_DEBUGGING_DIRECTIVES](#dev0dc5f3400) |
|              | [YACC_INSERT_LINE_DIRECTIVES](#devb874c9914)        |

</div>

<div id="JAVAC_DEFAULT_FLAGS" class="Subhead">

## 🔐 JAVAC_DEFAULT_FLAGS

|              |                                                   |
|--------------|---------------------------------------------------|
| DefaultValue | -J-Xms64m -J-XX:NewSize=4M -J-Dfile.encoding=UTF8 |
| Name         | JAVAC_DEFAULT_FLAGS                               |
| Type         | StringList                                        |
| References   |                                                   |

</div>

<div id="JIKES_DEFAULT_FLAGS" class="Subhead">

## 🔐 JIKES_DEFAULT_FLAGS

|              |                     |
|--------------|---------------------|
| DefaultValue | +E +OLDCSO          |
| Name         | JIKES_DEFAULT_FLAGS |
| Type         | StringList          |
| References   |                     |

</div>

<div id="OTHER_RESMERGERFLAGS" class="Subhead">

## 🔐 OTHER_RESMERGERFLAGS

|              |                      |
|--------------|----------------------|
| DefaultValue |                      |
| Name         | OTHER_RESMERGERFLAGS |
| Type         | StringList           |
| References   |                      |

</div>

<div id="MACOS_TYPE" class="Subhead">

## 🔐 MACOS_TYPE

|              |                                   |
|--------------|-----------------------------------|
| DefaultValue |                                   |
| Name         | MACOS_TYPE                        |
| Type         | String                            |
| References   | [MACOS_TYPE_ARG](#MACOS_TYPE_ARG) |

</div>

<div id="MACOS_CREATOR" class="Subhead">

## 🔐 MACOS_CREATOR

|              |                                         |
|--------------|-----------------------------------------|
| DefaultValue |                                         |
| Name         | MACOS_CREATOR                           |
| Type         | String                                  |
| References   | [MACOS_CREATOR_ARG](#MACOS_CREATOR_ARG) |

</div>

<div id="MACOS_TYPE_ARG" class="Subhead">

## 🔐 MACOS_TYPE_ARG

|              |                |
|--------------|----------------|
| DefaultValue |                |
| Name         | MACOS_TYPE_ARG |
| Type         | String         |
| References   |                |

</div>

<div id="MACOS_CREATOR_ARG" class="Subhead">

## 🔐 MACOS_CREATOR_ARG

|              |                   |
|--------------|-------------------|
| DefaultValue |                   |
| Name         | MACOS_CREATOR_ARG |
| Type         | String            |
| References   |                   |

</div>

<div id="OSAC" class="Subhead">

## 🔐 OSAC

|              |                                          |
|--------------|------------------------------------------|
| DefaultValue | /usr/bin/osacompile                      |
| Name         | OSAC                                     |
| Type         | Path                                     |
| References   | [OSACOMPILE_EXECUTE_ONLY](#devc29c55034) |
|              | [OTHER_OSACOMPILEFLAGS](#devf218eca23)   |

</div>

<div id="OTHER_OSAFLAGS" class="Subhead">

## 🔐 OTHER_OSAFLAGS

|              |                |
|--------------|----------------|
| DefaultValue |                |
| Name         | OTHER_OSAFLAGS |
| Type         | StringList     |
| References   |                |

</div>

<div id="MARKETING_VERSION" class="Subhead">

## 🔐 MARKETING_VERSION

|              |                   |
|--------------|-------------------|
| DefaultValue |                   |
| Name         | MARKETING_VERSION |
| Type         | String            |
| References   |                   |

</div>

<div id="VERSION_INFO_STRING" class="Subhead">

## 🔐 VERSION_INFO_STRING

|              |                                                                                                                                         |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| DefaultValue | "@(#)PROGRAM:\$([PRODUCT_NAME](#dev5c40d1d06))  PROJECT:\$([PROJECT_NAME](#dev1d2022a00))-\$([CURRENT_PROJECT_VERSION](#devd516a860b))" |
| Name         | VERSION_INFO_STRING                                                                                                                     |
| Type         | String                                                                                                                                  |
| References   |                                                                                                                                         |

</div>

<div id="VERSIONING_STUB" class="Subhead">

## 🔐 VERSIONING_STUB

|              |                 |
|--------------|-----------------|
| DefaultValue |                 |
| Name         | VERSIONING_STUB |
| Type         | String          |
| References   |                 |

</div>

<div id="CP" class="Subhead">

## 🔐 CP

|              |                                                                                                                     |
|--------------|---------------------------------------------------------------------------------------------------------------------|
| DefaultValue | /bin/cp                                                                                                             |
| Name         | CP                                                                                                                  |
| Type         | Path                                                                                                                |
| References   | [CLANG_ADDRESS_SANITIZER_CONTAINER_OVERFLOW](#dev82671bc31)                                                         |
|              | [CLANG_ANALYZER_SECURITY_INSECUREAPI_STRCPY](#dev94df6a128)                                                         |
|              | [CLANG_ENABLE_CPP_STATIC_DESTRUCTORS](#CLANG_ENABLE_CPP_STATIC_DESTRUCTORS)                                         |
|              | [CPP_HEADERMAP_FILE](#CPP_HEADERMAP_FILE)                                                                           |
|              | [CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS) |
|              | [CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS)                             |
|              | [CPP_HEADERMAP_FILE_FOR_GENERATED_FILES](#CPP_HEADERMAP_FILE_FOR_GENERATED_FILES)                                   |
|              | [CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS](#CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS)                             |
|              | [CPP_HEADERMAP_FILE_FOR_PROJECT_FILES](#CPP_HEADERMAP_FILE_FOR_PROJECT_FILES)                                       |
|              | [CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE](#CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE)                                   |
|              | [CPP_HEADER_SYMLINKS_DIR](#CPP_HEADER_SYMLINKS_DIR)                                                                 |
|              | [CPP_OTHER_PREPROCESSOR_FLAGS](#devf2480d8c6)                                                                       |
|              | [CPP_PREFIX_HEADER](#dev5d418c53e)                                                                                  |
|              | [CPP_PREPROCESSOR_DEFINITIONS](#devf75c285e8)                                                                       |
|              | [GCC_ENABLE_CPP_EXCEPTIONS](#dev02f832e65)                                                                          |
|              | [GCC_ENABLE_CPP_RTTI](#dev049efca71)                                                                                |
|              | [KEXT_CPLUSPLUSFLAGS](#KEXT_CPLUSPLUSFLAGS)                                                                         |
|              | [OTHER_CPLUSPLUSFLAGS](#dev4aeb8200e)                                                                               |
|              | [VERBOSE_PBXCP](#deva9a7f3613)                                                                                      |

</div>

<div id="ICONV" class="Subhead">

## 🔐 ICONV

|              |                |
|--------------|----------------|
| DefaultValue | /usr/bin/iconv |
| Name         | ICONV          |
| Type         | Path           |
| References   |                |

</div>

<div id="SED" class="Subhead">

## 🔐 SED

|              |                                                                    |
|--------------|--------------------------------------------------------------------|
| DefaultValue | /usr/bin/sed                                                       |
| Name         | SED                                                                |
| Type         | Path                                                               |
| References   | [CLANG_ANALYZER_OBJC_UNUSED_IVARS](#dev74e40f8dd)                  |
|              | [CLANG_MODULES_IGNORE_MACROS](#CLANG_MODULES_IGNORE_MACROS)        |
|              | [GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS](#deve5cb410bb) |
|              | [GCC_WARN_UNUSED_FUNCTION](#devc7766c536)                          |
|              | [GCC_WARN_UNUSED_LABEL](#dev5dc46b82a)                             |
|              | [GCC_WARN_UNUSED_PARAMETER](#dev362f7320e)                         |
|              | [GCC_WARN_UNUSED_VALUE](#dev6f61a24f6)                             |
|              | [GCC_WARN_UNUSED_VARIABLE](#dev73464afa2)                          |
|              | [GENERATE_TEXT_BASED_STUBS](#devc83e790c1)                         |
|              | [SUPPORTS_TEXT_BASED_API](#dev8abad641c)                           |

</div>

<div id="CHOWN" class="Subhead">

## 🔐 CHOWN

|              |                 |
|--------------|-----------------|
| DefaultValue | /usr/sbin/chown |
| Name         | CHOWN           |
| Type         | Path            |
| References   |                 |

</div>

<div id="CHMOD" class="Subhead">

## 🔐 CHMOD

|              |            |
|--------------|------------|
| DefaultValue | /bin/chmod |
| Name         | CHMOD      |
| Type         | Path       |
| References   |            |

</div>

<div id="OPENCLC" class="Subhead">

## 🔐 OPENCLC

|              |                                                               |
|--------------|---------------------------------------------------------------|
| DefaultValue | /System/Library/Frameworks/OpenCL.framework/Libraries/openclc |
| Name         | OPENCLC                                                       |
| Type         | String                                                        |
| References   |                                                               |

</div>

<div id="SWIFT_EXEC" class="Subhead">

## 🔐 SWIFT_EXEC

|              |            |
|--------------|------------|
| DefaultValue | swiftc     |
| Name         | SWIFT_EXEC |
| Type         | Path       |
| References   |            |

</div>

<div id="SWIFT_LIBRARIES_ONLY" class="Subhead">

## 🔐 SWIFT_LIBRARIES_ONLY

|                 |                      |
|-----------------|----------------------|
| CommandLineArgs |                      |
| `NO`            |                      |
| `YES`           | -parse-as-library    |
| DefaultValue    | NO                   |
| Name            | SWIFT_LIBRARIES_ONLY |
| Type            | Boolean              |
| References      |                      |

</div>

<div id="SWIFT_ENABLE_INCREMENTAL_COMPILATION" class="Subhead">

## 🔐 SWIFT_ENABLE_INCREMENTAL_COMPILATION

|                 |                                      |
|-----------------|--------------------------------------|
| CommandLineArgs |                                      |
| `NO`            |                                      |
| `YES`           | -incremental                         |
| DefaultValue    | YES                                  |
| Name            | SWIFT_ENABLE_INCREMENTAL_COMPILATION |
| Type            | Boolean                              |
| References      |                                      |

</div>

<div id="SWIFT_USE_PARALLEL_WHOLE_MODULE_OPTIMIZATION" class="Subhead">

## 🔐 SWIFT_USE_PARALLEL_WHOLE_MODULE_OPTIMIZATION

|              |                                              |
|--------------|----------------------------------------------|
| DefaultValue | YES                                          |
| Name         | SWIFT_USE_PARALLEL_WHOLE_MODULE_OPTIMIZATION |
| Type         | Boolean                                      |
| References   |                                              |

</div>

<div id="SWIFT_USE_PARALLEL_WMO_TARGETS" class="Subhead">

## 🔐 SWIFT_USE_PARALLEL_WMO_TARGETS

|              |                                |
|--------------|--------------------------------|
| DefaultValue | YES                            |
| Name         | SWIFT_USE_PARALLEL_WMO_TARGETS |
| Type         | Boolean                        |
| References   |                                |

</div>

<div id="SWIFT_WHOLE_MODULE_OPTIMIZATION" class="Subhead">

## 🔐 SWIFT_WHOLE_MODULE_OPTIMIZATION

|                 |                                                     |
|-----------------|-----------------------------------------------------|
| CommandLineArgs |                                                     |
| `NO`            |                                                     |
| `YES`           | -whole-module-optimization                          |
| DefaultValue    | NO                                                  |
| Name            | SWIFT_WHOLE_MODULE_OPTIMIZATION                     |
| Type            | Boolean                                             |
| References      | [SWIFT_COMPILATION_MODE](#dev2e45e4899)             |
|                 | [SWIFT_ENABLE_BATCH_MODE](#SWIFT_ENABLE_BATCH_MODE) |

</div>

<div id="SWIFT_LIBRARY_PATH" class="Subhead">

## 🔐 SWIFT_LIBRARY_PATH

|              |                    |
|--------------|--------------------|
| DefaultValue |                    |
| Name         | SWIFT_LIBRARY_PATH |
| Type         | Path               |
| References   |                    |

</div>

<div id="SWIFT_RESOURCE_DIR" class="Subhead">

## 🔐 SWIFT_RESOURCE_DIR

|                 |                    |
|-----------------|--------------------|
| CommandLineFlag | -resource-dir      |
| Name            | SWIFT_RESOURCE_DIR |
| Type            | Path               |
| References      |                    |

</div>

<div id="SWIFT_MODULE_NAME" class="Subhead">

## 🔐 SWIFT_MODULE_NAME

|                 |                                                   |
|-----------------|---------------------------------------------------|
| CommandLineArgs | -module-name                                      |
|                 | \$([value](#value))                               |
| DefaultValue    | \$([PRODUCT_MODULE_NAME](#dev93497cfe4))          |
| Name            | SWIFT_MODULE_NAME                                 |
| Type            | String                                            |
| References      | [SWIFT_OBJC_INTERFACE_HEADER_NAME](#dev977f5e406) |

</div>

<div id="SWIFT_ENABLE_BATCH_MODE" class="Subhead">

## 🔐 SWIFT_ENABLE_BATCH_MODE

|                 |                                                                                                                                                                                                              |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                                                                                                                              |
| `NO`            | -disable-batch-mode                                                                                                                                                                                          |
| `YES`           | -enable-batch-mode                                                                                                                                                                                           |
| Condition       | !\$([SWIFT_WHOLE_MODULE_OPTIMIZATION](#SWIFT_WHOLE_MODULE_OPTIMIZATION)) && \$([SWIFT_OPTIMIZATION_LEVEL](#dev076ec5661)) != '-Owholemodule' && \$([SWIFT_COMPILATION_MODE](#dev2e45e4899)) != 'wholemodule' |
| DefaultValue    | YES                                                                                                                                                                                                          |
| Name            | SWIFT_ENABLE_BATCH_MODE                                                                                                                                                                                      |
| Type            | Boolean                                                                                                                                                                                                      |
| References      |                                                                                                                                                                                                              |

</div>

<div id="__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_RELEASE" class="Subhead">

## 🔐 __SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_RELEASE

|                 |                                                                                                                                                                                                       |
|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                                                                                                                       |
| `NO`            |                                                                                                                                                                                                       |
| `YES`           | -enforce-exclusivity=unchecked                                                                                                                                                                        |
| Condition       | \$([SWIFT_OPTIMIZATION_LEVEL](#dev076ec5661)) != '-Onone' && (\$([SWIFT_ENFORCE_EXCLUSIVE_ACCESS](#deva2d710b82)) == 'full' \|\| \$([SWIFT_ENFORCE_EXCLUSIVE_ACCESS](#deva2d710b82)) == 'debug-only') |
| DefaultValue    | YES                                                                                                                                                                                                   |
| Name            | __SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_RELEASE                                                                                                                                            |
| Type            | Boolean                                                                                                                                                                                               |
| References      |                                                                                                                                                                                                       |

</div>

<div id="__SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_DEBUG" class="Subhead">

## 🔐 __SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_DEBUG

|                 |                                                                                                                                                                                                       |
|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                                                                                                                       |
| `NO`            |                                                                                                                                                                                                       |
| `YES`           | -enforce-exclusivity=checked                                                                                                                                                                          |
| Condition       | \$([SWIFT_OPTIMIZATION_LEVEL](#dev076ec5661)) == '-Onone' && (\$([SWIFT_ENFORCE_EXCLUSIVE_ACCESS](#deva2d710b82)) == 'full' \|\| \$([SWIFT_ENFORCE_EXCLUSIVE_ACCESS](#deva2d710b82)) == 'debug-only') |
| DefaultValue    | YES                                                                                                                                                                                                   |
| Name            | __SWIFT_ENFORCE_EXCLUSIVE_ACCESS_DEBUG_ENFORCEMENT_DEBUG                                                                                                                                              |
| Type            | Boolean                                                                                                                                                                                               |
| References      |                                                                                                                                                                                                       |

</div>

<div id="SWIFT_STDLIB" class="Subhead">

## 🔐 SWIFT_STDLIB

|              |              |
|--------------|--------------|
| DefaultValue | swiftCore    |
| Name         | SWIFT_STDLIB |
| Type         | String       |
| References   |              |

</div>

<div id="__SWIFT_FILE_LIST_PATH__" class="Subhead">

## 🔐 __SWIFT_FILE_LIST_PATH__

|                   |                                                               |
|-------------------|---------------------------------------------------------------|
| CommandLineArgs   |                                                               |
| `""`              |                                                               |
| `<<otherwise>>`   | @\$([value](#value))                                          |
| DefaultValue      | \$(SWIFT_FILE_LIST_\$([variant](#variant))_\$([arch](#arch))) |
| IsInputDependency | Yes                                                           |
| Name              | __SWIFT_FILE_LIST_PATH__                                      |
| Type              | Path                                                          |
| References        |                                                               |

</div>

<div id="__SWIFT_FILE_LIST_PATH_INDEXING__" class="Subhead">

## 🔐 __SWIFT_FILE_LIST_PATH_INDEXING__

|                   |                                                                        |
|-------------------|------------------------------------------------------------------------|
| CommandLineArgs   |                                                                        |
| DefaultValue      | \$(SWIFT_INDEXING_FILE_LIST_\$([variant](#variant))_\$([arch](#arch))) |
| IsInputDependency | Yes                                                                    |
| Name              | __SWIFT_FILE_LIST_PATH_INDEXING__                                      |
| Type              | Path                                                                   |
| References        |                                                                        |

</div>

<div id="SWIFT_DEPLOYMENT_TARGET" class="Subhead">

## 🔐 SWIFT_DEPLOYMENT_TARGET

|              |                                                                           |
|--------------|---------------------------------------------------------------------------|
| DefaultValue | \$(\$([DEPLOYMENT_TARGET_SETTING_NAME](#DEPLOYMENT_TARGET_SETTING_NAME))) |
| Name         | SWIFT_DEPLOYMENT_TARGET                                                   |
| Type         | String                                                                    |
| References   | [SWIFT_TARGET_TRIPLE](#SWIFT_TARGET_TRIPLE)                               |

</div>

<div id="SWIFT_TARGET_TRIPLE" class="Subhead">

## 🔐 SWIFT_TARGET_TRIPLE

|                 |                                                                                                                                                                                                                             |
|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineFlag | -target                                                                                                                                                                                                                     |
| DefaultValue    | \$([CURRENT_ARCH](#dev23cfef338))-apple-\$([SWIFT_PLATFORM_TARGET_PREFIX](#SWIFT_PLATFORM_TARGET_PREFIX))\$([SWIFT_DEPLOYMENT_TARGET](#SWIFT_DEPLOYMENT_TARGET))\$([LLVM_TARGET_TRIPLE_SUFFIX](#LLVM_TARGET_TRIPLE_SUFFIX)) |
| Name            | SWIFT_TARGET_TRIPLE                                                                                                                                                                                                         |
| Type            | String                                                                                                                                                                                                                      |
| References      | [SWIFT_TARGET_TRIPLE_VARIANTS](#SWIFT_TARGET_TRIPLE_VARIANTS)                                                                                                                                                               |

</div>

<div id="SWIFT_TARGET_TRIPLE_VARIANTS" class="Subhead">

## 🔐 SWIFT_TARGET_TRIPLE_VARIANTS

|                  |                              |
|------------------|------------------------------|
| CommandLineFlag  | -target-variant              |
| ConditionFlavors | arch                         |
| Name             | SWIFT_TARGET_TRIPLE_VARIANTS |
| Type             | StringList                   |
| References       |                              |

</div>

<div id="SWIFT_VERSION" class="Subhead">

## 🔐 SWIFT_VERSION

|              |                                                               |
|--------------|---------------------------------------------------------------|
| Basic        | YES                                                           |
| Category     | Language                                                      |
| DefaultValue |                                                               |
| Description  |                                                               |
| DisplayName  | Swift Language Version                                        |
| Name         | SWIFT_VERSION                                                 |
| Type         | String                                                        |
| UIType       | swiftversion                                                  |
| References   | [COREML_CODEGEN_SWIFT_VERSION](#COREML_CODEGEN_SWIFT_VERSION) |

</div>

<div id="CLANG_MODULE_CACHE_PATH" class="Subhead">

## 🔐 CLANG_MODULE_CACHE_PATH

|                 |                                                                              |
|-----------------|------------------------------------------------------------------------------|
| CommandLineArgs |                                                                              |
| `""`            |                                                                              |
| `<<otherwise>>` | -fmodules-cache-path=\$([CLANG_MODULE_CACHE_PATH](#CLANG_MODULE_CACHE_PATH)) |
| Condition       | \$([CLANG_ENABLE_MODULES](#dev342502821)) == YES                             |
| DefaultValue    | \$([MODULE_CACHE_DIR](#dev433624abf))                                        |
| Name            | CLANG_MODULE_CACHE_PATH                                                      |
| Type            | String                                                                       |
| References      |                                                                              |

</div>

<div id="SWIFT_SERIALIZE_DEBUGGING_OPTIONS" class="Subhead">

## 🔐 SWIFT_SERIALIZE_DEBUGGING_OPTIONS

|                 |                                   |
|-----------------|-----------------------------------|
| CommandLineArgs |                                   |
| `NO`            |                                   |
| `YES`           | -Xfrontend                        |
|                 | -serialize-debugging-options      |
| DefaultValue    | YES                               |
| Name            | SWIFT_SERIALIZE_DEBUGGING_OPTIONS |
| Type            | Boolean                           |
| References      |                                   |

</div>

<div id="SWIFT_ENABLE_APP_EXTENSION" class="Subhead">

## 🔐 SWIFT_ENABLE_APP_EXTENSION

|                      |                                                     |
|----------------------|-----------------------------------------------------|
| AdditionalLinkerArgs |                                                     |
| `NO`                 |                                                     |
| `YES`                | -fapplication-extension                             |
| CommandLineArgs      |                                                     |
| `NO`                 |                                                     |
| `YES`                | -application-extension                              |
| DefaultValue         | \$([APPLICATION_EXTENSION_API_ONLY](#devbe3df4109)) |
| Name                 | SWIFT_ENABLE_APP_EXTENSION                          |
| Type                 | Boolean                                             |
| References           |                                                     |

</div>

<div id="SWIFT_LINK_OBJC_RUNTIME" class="Subhead">

## 🔐 SWIFT_LINK_OBJC_RUNTIME

|                      |                         |
|----------------------|-------------------------|
| AdditionalLinkerArgs |                         |
| `NO`                 |                         |
| `YES`                | -fobjc-link-runtime     |
| CommandLineArgs      |                         |
| `NO`                 |                         |
| `YES`                |                         |
| DefaultValue         | YES                     |
| Name                 | SWIFT_LINK_OBJC_RUNTIME |
| Type                 | Boolean                 |
| References           |                         |

</div>

<div id="SWIFT_MIGRATE_CODE" class="Subhead">

## 🔐 SWIFT_MIGRATE_CODE

|                 |                    |
|-----------------|--------------------|
| CommandLineArgs |                    |
| `NO`            |                    |
| `YES`           | -update-code       |
| Name            | SWIFT_MIGRATE_CODE |
| Type            | Boolean            |
| References      |                    |

</div>

<div id="CLANG_COVERAGE_MAPPING" class="Subhead">

## 🔐 CLANG_COVERAGE_MAPPING

|                 |                                                                           |
|-----------------|---------------------------------------------------------------------------|
| CommandLineArgs |                                                                           |
| `NO`            |                                                                           |
| `YES`           | -fprofile-instr-generate                                                  |
|                 | -fcoverage-mapping                                                        |
| Condition       | \$([CLANG_ENABLE_CODE_COVERAGE](#devaec10c397))                           |
| DefaultValue    | NO                                                                        |
| Name            | CLANG_COVERAGE_MAPPING                                                    |
| Type            | Boolean                                                                   |
| References      | [CLANG_COVERAGE_MAPPING_LINKER_ARGS](#CLANG_COVERAGE_MAPPING_LINKER_ARGS) |
|                 | [CLANG_USE_OPTIMIZATION_PROFILE](#devb3d935f24)                           |

</div>

<div id="CLANG_COVERAGE_MAPPING_LINKER_ARGS" class="Subhead">

## 🔐 CLANG_COVERAGE_MAPPING_LINKER_ARGS

|                      |                                                       |
|----------------------|-------------------------------------------------------|
| AdditionalLinkerArgs |                                                       |
| `NO`                 |                                                       |
| `YES`                | -fprofile-instr-generate                              |
| DefaultValue         | \$([CLANG_COVERAGE_MAPPING](#CLANG_COVERAGE_MAPPING)) |
| Name                 | CLANG_COVERAGE_MAPPING_LINKER_ARGS                    |
| Type                 | Boolean                                               |
| References           |                                                       |

</div>

<div id="SWIFT_BITCODE_GENERATION_MODE" class="Subhead">

## 🔐 SWIFT_BITCODE_GENERATION_MODE

|                 |                                                         |
|-----------------|---------------------------------------------------------|
| Architectures   | arm64                                                   |
|                 | armv7                                                   |
|                 | armv7s                                                  |
|                 | armv7k                                                  |
|                 | arm64_32                                                |
| CommandLineArgs |                                                         |
| `bitcode`       | -embed-bitcode                                          |
| `marker`        | -embed-bitcode-marker                                   |
| Condition       | \$([ENABLE_BITCODE](#dev6ee230c11)) == YES              |
| DefaultValue    | \$([BITCODE_GENERATION_MODE](#BITCODE_GENERATION_MODE)) |
| Name            | SWIFT_BITCODE_GENERATION_MODE                           |
| Type            | Enumeration                                             |
| Values          | marker                                                  |
|                 | bitcode                                                 |
| References      |                                                         |

</div>

<div id="SWIFT_ADDRESS_SANITIZER" class="Subhead">

## 🔐 SWIFT_ADDRESS_SANITIZER

|                      |                                                           |
|----------------------|-----------------------------------------------------------|
| AdditionalLinkerArgs |                                                           |
| `NO`                 |                                                           |
| `YES`                | -fsanitize=address                                        |
| CommandLineArgs      |                                                           |
| `NO`                 |                                                           |
| `YES`                | -sanitize=address                                         |
| DefaultValue         | \$([ENABLE_ADDRESS_SANITIZER](#ENABLE_ADDRESS_SANITIZER)) |
| Name                 | SWIFT_ADDRESS_SANITIZER                                   |
| Type                 | Boolean                                                   |
| References           |                                                           |

</div>

<div id="SWIFT_THREAD_SANITIZER" class="Subhead">

## 🔐 SWIFT_THREAD_SANITIZER

|                 |                                                         |
|-----------------|---------------------------------------------------------|
| Architectures   | x86_64                                                  |
|                 | arm64                                                   |
|                 | arm64e                                                  |
| CommandLineArgs |                                                         |
| `NO`            |                                                         |
| `YES`           | -sanitize=thread                                        |
| DefaultValue    | \$([ENABLE_THREAD_SANITIZER](#ENABLE_THREAD_SANITIZER)) |
| Name            | SWIFT_THREAD_SANITIZER                                  |
| Type            | Boolean                                                 |
| References      |                                                         |

</div>

<div id="SWIFT_ENABLE_TESTABILITY" class="Subhead">

## 🔐 SWIFT_ENABLE_TESTABILITY

|                 |                                         |
|-----------------|-----------------------------------------|
| CommandLineArgs |                                         |
| `NO`            |                                         |
| `YES`           | -enable-testing                         |
| DefaultValue    | \$([ENABLE_TESTABILITY](#dev1835b9550)) |
| Name            | SWIFT_ENABLE_TESTABILITY                |
| Type            | Boolean                                 |
| References      |                                         |

</div>

<div id="SWIFT_INDEX_STORE_PATH" class="Subhead">

## 🔐 SWIFT_INDEX_STORE_PATH

|              |                                                       |
|--------------|-------------------------------------------------------|
| DefaultValue | \$([INDEX_DATA_STORE_DIR](#INDEX_DATA_STORE_DIR))     |
| Name         | SWIFT_INDEX_STORE_PATH                                |
| Type         | Path                                                  |
| References   | [SWIFT_INDEX_STORE_ENABLE](#SWIFT_INDEX_STORE_ENABLE) |

</div>

<div id="SWIFT_INDEX_STORE_ENABLE" class="Subhead">

## 🔐 SWIFT_INDEX_STORE_ENABLE

|                 |                                                                                                                                                                                               |
|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CommandLineArgs |                                                                                                                                                                                               |
| `NO`            |                                                                                                                                                                                               |
| `YES`           | -index-store-path                                                                                                                                                                             |
|                 | \$([SWIFT_INDEX_STORE_PATH](#SWIFT_INDEX_STORE_PATH))                                                                                                                                         |
| Condition       | \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == YES  \|\|  ( \$([COMPILER_INDEX_STORE_ENABLE](#devbf33b2f96)) == Default  &&  \$([SWIFT_OPTIMIZATION_LEVEL](#dev076ec5661)) == '-Onone' ) |
| DefaultValue    | \$([INDEX_ENABLE_DATA_STORE](#INDEX_ENABLE_DATA_STORE))                                                                                                                                       |
| Name            | SWIFT_INDEX_STORE_ENABLE                                                                                                                                                                      |
| Type            | Boolean                                                                                                                                                                                       |
| References      |                                                                                                                                                                                               |

</div>

<div id="SWIFT_EMIT_MODULE_INTERFACE" class="Subhead">

## 🔐 SWIFT_EMIT_MODULE_INTERFACE

|              |                                                                       |
|--------------|-----------------------------------------------------------------------|
| DefaultValue | \$([BUILD_LIBRARY_FOR_DISTRIBUTION](#BUILD_LIBRARY_FOR_DISTRIBUTION)) |
| Name         | SWIFT_EMIT_MODULE_INTERFACE                                           |
| Type         | Boolean                                                               |
| References   |                                                                       |

</div>

<div id="SWIFT_ENABLE_LIBRARY_EVOLUTION" class="Subhead">

## 🔐 SWIFT_ENABLE_LIBRARY_EVOLUTION

|                 |                                                                       |
|-----------------|-----------------------------------------------------------------------|
| CommandLineArgs |                                                                       |
| `NO`            |                                                                       |
| `YES`           | -enable-library-evolution                                             |
| DefaultValue    | \$([BUILD_LIBRARY_FOR_DISTRIBUTION](#BUILD_LIBRARY_FOR_DISTRIBUTION)) |
| Name            | SWIFT_ENABLE_LIBRARY_EVOLUTION                                        |
| Type            | Boolean                                                               |
| References      |                                                                       |

</div>
