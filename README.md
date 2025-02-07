# fish-ttt

Enable [ttt](https://github.com/yoyuse/ttt)-like Japanese input in [Fish](https://github.com/fish-shell/fish-shell) command line editing.

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

``` fish
fisher install yoyuse/fish-ttt
```

Install `cli-ttt` from [cli-ttt](https://github.com/yoyuse/cli-ttt), for example:

``` fish
mkdir -p $HOME/bin
fish_add_path $HOME/bin
git clone https://github.com/yoyuse/cli-ttt.git
cp cli-ttt/cli-ttt $HOME/bin/
```

## Usage

Type TT-code and hit `Alt-j`, then code before cursor is translated to Japanese.
For example,

``` fish
> echo 3l3msl <Alt-j>
```

yields:

``` fish
> echo 夢恋草
```

You can disable default keybinding by running:

``` fish
set -U FISH_TTT_DISABLE_KEYBINDINGS 1
```

## License

MIT
