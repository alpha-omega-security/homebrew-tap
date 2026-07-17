# homebrew-tap

> [!IMPORTANT]
> This tap is retired. Scrutineer is now available from
> [Homebrew/core](https://github.com/Homebrew/homebrew-core).

Install Scrutineer directly from Homebrew:

```sh
brew install scrutineer
```

`brew update` redirects future installs to Homebrew/core; existing cask
installs should be replaced with the formula and the tap removed:

```sh
brew update
brew uninstall --cask --force scrutineer   # remove the old tap cask if still present
brew install scrutineer                     # install the Homebrew/core formula
brew untap alpha-omega-security/tap
brew untrust alpha-omega-security/tap
```

## License

This tap is licensed under the [MIT License](LICENSE).
