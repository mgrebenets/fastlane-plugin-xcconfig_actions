# xcconfig_actions plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-xcconfig_actions)

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

See [this xcconfig guide](https://pewpewthespells.com/blog/xcconfig_guide.html) for detailed explanation.

Things **not supported** at the moment:

- Conditional variable assignment, such as `FOO[sdk=macosx*] = 1`
- Use of `<DEVELOPER_DIR>` in include paths
- Use of curly braces in variable references, e.g. `${VAR}`

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and

```shell
bundle exec fastlane test
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
