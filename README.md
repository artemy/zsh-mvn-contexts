# zsh-mvn-contexts

zsh-mvn-contexts is a zsh plugin for fast switching between your maven configurations

## Installation

### I'm using Antigen

1. Add the following to your .zshrc:

    ```bash
    antigen bundle artemy/zsh-mvn-contexts
    ```

2. Restart zsh.

### I'm using oh-my-zsh

1. Clone this repository into oh-my-zsh's plugin directory:

    ```bash
    git clone git@github.com:artemy/zsh-mvn-contexts.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/_mvnctx
    ```

2. Enable the plugin in `~/.zshrc`:

    ```bash
    plugins=( [other plugins...] _mvnctx)
    ```

    (mind the underscore)
3. Restart zsh.

## Prerequisites

1. Create `~/.m2/contexts` directory
2. Save your custom maven settings as `~/.m2/contexts/<my-context>.xml`
3. (Optional) save your custom maven security file as `~/.m2/contexts/<my-context>-security.xml`

## How it works

Plugin will symlink one of the specified "context" files from your `~/.m2/contexts` directory into `~/.m2` directory together with respective security file (if exists).

## Usage

```bash
mvnctx <my-context>
```

Plugin is also aware of existing configurations so it supports autocompletion.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Notes

Thanks to [Robin Trietsch](https://github.com/trietsch) for the idea and contributions.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
