# Operator Flake

In order to more quickly develop operators, I've been using Nix Flakes.
I've found that I was copying and pasting operator dependencies around, so I've placed them here, for everyone to use.
Hopefully this will save you some trouble.

## Quick Start
Show the template:
```nix
nix flake show github:dandeandean/operator-flake
```
Use the template:
```nix
nix flake init -t github:dandeandean/operator-flake
```

## Huge Shout Out
This is repo was inspired heavily by [this article](https://www.thenegation.com/posts/nix-flake-templates/).
