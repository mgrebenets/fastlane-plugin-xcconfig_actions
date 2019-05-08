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

Map build settings to Clang Cxx/Objective-C compiler, Swift compiler and Linker flags.

This action is useful when you plan to reuse xcconfigs with other tools, such as [Buck](https://buckbuild.com/), and you want to translate xcconfigs into the compiler/linker flags.

Build flags can be printed to standard output or saved to file.
The flags are also available via lane context as `lane_context[SharedValues::XCCONFIG_ACTIONS_BUILD_FLAGS]`.

The result is a dictionary with following keys:

- `compiler_flags` for Clang CXX/Objective-C compiler.
- `swift_compiler_flags` for Swift compiler.
- `linker_flags` for Clang linker.

<!-- TODO: Add info on how it works. -->
<!-- All versions of Xcode have help files here: /Applications/Xcode.app/Contents//Resources/Xcode.help/Contents/Resources/en.lproj -->

References:

- [Xcode Build Settings](https://help.apple.com/xcode/mac/10.2/#/itcaec37c2a6)
- [LLVM Clang Command Line Options](https://clang.llvm.org/docs/ClangCommandLineReference.html)
- [LLVM Clang Diagnostics](https://clang.llvm.org/docs/DiagnosticsReference.html)
- [GCC Warning Options](https://gcc.gnu.org/onlinedocs/gcc/Warning-Options.html)
- https://gist.github.com/fabiopelosin/4560417
- https://pewpewthespells.com/blog/xcode_build_system.html

#### Known Issues

Flags like `-sdk iphoneos` and `-isysroot iphoneos` may not be suitable for all uses, so may have to remove them from all flags.

The flag like `-std=gnu++14` is added to `compiler_flags` but it's not applicable for Objective-C code.
Most tools have differentiation between C flags (C and Objective-C) and Cxx flags (C++/Objective-C++).

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
