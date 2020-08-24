# zsh-mvn-contexts

zsh-mvn-contexts is a zsh plugin for fast switching between your maven configurations

## Installation

### I'm using Antigen

Add the following to your .zshrc:

```bash
antigen bundle artemy/zsh-mvn-contexts
```

### I'm using oh-my-zsh

\#TODO

## Prerequisites

* Create `~/.m2/contexts` directory
* Save your custom maven settings as `~/.m2/contexts/<my-context>.xml`
* (Optional) save your custom maven security file as `~/.m2/contexts/<my-context>-security.xml`

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

Thanks [Robin Trietsch](https://github.com/trietsch) for the idea and contributions.

## License

[MIT](https://choosealicense.com/licenses/mit/)
