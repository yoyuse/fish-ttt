# fish-ttt

Enable [ttt](https://github.com/yoyuse/ttt)-like Japanese input in [Fish](https://github.com/fish-shell/fish-shell) command line editing.

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

``` fish
fisher install yoyuse/fish-ttt
```

Install [go-ttt](https://github.com/yoyuse/go-ttt), for example:

``` fish
mkdir -p $HOME/go
set -Ux GOPATH $HOME/go
set -U fish_user_paths $fish_user_paths $GOPATH/bin
go get github.com/yoyuse/go-ttt
```

Set [go-ttt](https://github.com/yoyuse/go-ttt) as `FISH_TTT_COMMAND`:

``` fish
set -Ux FISH_TTT_COMMAND go-ttt
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
