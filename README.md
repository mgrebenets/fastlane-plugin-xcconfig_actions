# xcconfig_actions plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-xcconfig_actions)
[![version](https://badge.fury.io/gh/mgrebenets%2Ffastlane-plugin-xcconfig_actions.svg)](https://badge.fury.io/gh/mgrebenets%2Ffastlane-plugin-xcconfig_actions)
[![CircleCI](https://circleci.com/gh/mgrebenets/fastlane-plugin-xcconfig_actions.svg?style=svg)](https://circleci.com/gh/mgrebenets/fastlane-plugin-xcconfig_actions)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-xcconfig_actions`, add it to your project by running:

```bash
fastlane add_plugin xcconfig_actions
```

## About xcconfig_actions

Adds actions to fastlane to work with xcconfig files.

### read_xcconfig

The `read_xcconfig` action reads contents of xcconfig file the same way Xcode would do, meaning

- Support for resolving variable references like `$(VAR)`
- Support for nested variable references like `$(VAR1_$(VAR2))`
- Support for `#include "other.xcconfig"` statements
- Support for project/target level inheritance mechanism
- Support for `XCODE_VERSION_MAJOR` build setting

See [this xcconfig guide](https://pewpewthespells.com/blog/xcconfig_guide.html) for detailed explanation.

Things **not supported** at the moment:

- Conditional variable assignment, such as `FOO[sdk=macosx*] = 1`
- Use of `<DEVELOPER_DIR>` in include paths
- Use of curly braces in variable references, e.g. `${VAR}`

The build settings are also saved as a dictionary under `SharedValues::XCCONFIG_ACTIONS_BUILD_SETTINGS` key in current `lane_context`.

### build_settings_to_flags

Map build settings to Clang Cxx/Objective-C and Swift compiler and linker flags.

This action is useful when you plan to reuse xcconfigs with other tools, such as [Buck](https://buckbuild.com/), and you want to translate xcconfigs into the flags for Cxx/Objective-C and Swift compiler and linker to understand.

Build flags can be printed to standard output or saved to file.
The flags are also available via lane context as `lane_context[SharedValues::XCCONFIG_ACTIONS_BUILD_FLAGS]`.

#### How Mapping Works

Majority of build settings for clang and cxx warnings with certain prefixes map directly to the cxx compiler option, for example:

- `CLANG_WARN_<FLAG_NAME> = NO` maps to `-Wno-<flag-name>`
- `CLANG_WARN_<FLAG_NAME> = YES` maps to `-W<flag-name>`
- `CLANG_WARN_<FLAG_NAME> = YES_ERROR` maps to `-Werror=<flag-name>`

The list of such prefixes is:

- `CLANG_WARN_`
- `GCC_WARN_`

The double trailing underscore in the prefix is used for some build settings, e.g. `CLANG_WARN__ARC_BRIDGE_CAST_NONARC`.

If a build setting has non-standard mapping, then the mapping is specified in `build_settings_mapping.yml` file.

For example `GCC_WARN_STRICT_SELECTOR_MATCH` build setting maps to `-Wselector` flag. The mapping is specified like this:

```yaml
GCC_WARN_STRICT_SELECTOR_MATCH: -Wselector
```

Some build settings can't be mapped to single flag, but rather each value set for this build setting maps to a different set of flags.
In this case build mapping specifies all the flags for each value.
If value maps to no flag, it can be omitted.

```yaml
CLANG_WARN_UNREACHABLE_CODE:
  "YES_AGGRESSIVE": -Wunreachable-code-argressive
  "YES": -Wunreachable-code
  # "NO" matches to no flags, so it is omitted.
```

Finally, some build settings map to different flags depending on the tool. In this case a dictionary of flag values per tool is specified, for example:

```yaml
ENABLE_TESTABILITY:
  "YES":
    swiftc: -enable-testing
    swift: -enable-testing
    ld: -Xlinker -export_dynamic -Xlinker -no_deduplicate
  "NO":
    cxx: -fvisibility=hidden
```

The keys used for tools are:

- `cxx` for Clang CXX/Objective-C compiler
- `swiftc` for Swift compiler
- `swift` for Swift compiler frontend
- `linker` for Clang linker

References:

- [Xcode Build Settings](https://help.apple.com/xcode/mac/10.2/#/itcaec37c2a6)
- [LLVM Clang Command Line Options](https://clang.llvm.org/docs/ClangCommandLineReference.html)
- [LLVM Clang Diagnostics](https://clang.llvm.org/docs/DiagnosticsReference.html)
- [GCC Warning Options](https://gcc.gnu.org/onlinedocs/gcc/Warning-Options.html)

### validate_xcconfig

Validate xcconfig using set of very opinionated rules:

- All included files must exist
- Include flow is unidirectional, i.e. top-down only:

```c
#include "../level_up.xcconfig" // File is in parent directory.
```

- Files do not include other files on the same level:

```c
#include "same_level.xcconfig" // Included file is on the same level.
```

- Files do not include other files more than 1 level down

```c
#include "level1/level2/level2.xcconfig" // 2 levels down: level1/level2.
```

- Duplicated includes are not allowed

```c
#include "other.xcconfig"
#include "other.xcconfig" // Duplicated include.
```

- Circular includes are not allowed

```c
// example.xcconfig file
#include "example.xcconfig" // Include self creates circular include.
```

Things **not supported** at the moment:

- Use of `<DEVELOPER_DIR>` in include paths

#### Rules Explanation

Xcconfigs are too easy to get out of hand.
Ability to use arbitrary include paths complicates usage of xcconfigs in quite a few ways:

- Hard to track where the variables are declared and the overwritten
- Xcode does not always report an error when a file is missing

These rules introduce convention to organizing xcconfigs.
The end goal is to make config files more manageable.

This helps greatly when configs are used in Xcode combined with project-level and target-level inheritance.

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and

```shell
# Read xcconfig example.
bundle exec fastlane read

# Map build settings to build flags.
bundle exec fastlane build_flags

# Validate xcconfig example.
bundle exec fastlane validate
```

## Run tests for this plugin

To run both the tests, and code style validation, run

```shell
rake
```

To automatically fix many of the styling issues, use

```shell
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
