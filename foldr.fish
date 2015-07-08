function foldr --argument lambda init
	set -e argv[1..2]
	__functional_foldr "$lambda" "$init" "" $argv
end
