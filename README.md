# functional - Higher order functions for fish shell
The aim of this plugin is to provide some higher order functions for fish shell. Inspired by https://github.com/Tarrasch/zsh-functional.

## Examples
```fish
$ map '$_1$_1' a b c # => aa \n bb \n cc \n
$ printf "%d\n" 1 2 3 | map '(math "$_1 ^ 2")' # => 1 \n 4 \n 9 \n
$ filter '[ $_1 -gt 10 ]' 12 1 21 # => 12 \n 21 \n
$ seq 1 100 | foldl 0 '(math $_1 + $_acc)' # => 5050
$ foldr '$_acc$_1' "" a b c # => cba
$ scanl 0 '(math $_1 + $_acc)' (seq 1 5) # => 0 \n 1 \n 3 \n 6 \n 10 \n 15 \n
$ scanr '(math $_1 + $_acc)' 0 (seq 1 5) # => 0 \n 5 \n 9 \n 12 \n 14 \n 15 \n
$ each 'curl $_1 > /dev/null' "https://github.com" "http://fishshell.com"
```

## Explanation
Every command (except `each`) contains implicit echo. Thus, `each 'echo $_1'` is equivalent to `map '$_1'`.
### Limitations
Right variants of fold and scan (`foldl`, `scanl`) do not support piping.

##Feedback, contribution
Your feedback is welcomed! In case of bug and/or feature improvements please leave me an issue.
