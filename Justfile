koka := env("KOKA", "koka")
bin  := "out/rogue"

alias b := build
alias r := run
alias c := clean

# list recipes
default:
    @just --list

# compile src/main.kk to out/rogue
build:
    {{koka}} -O2 --builddir=.koka -o {{bin}} src/main.kk

# run the compiled executable
run: build
    ./{{bin}}

# remove build artifacts
clean:
    rm -rf .koka out
