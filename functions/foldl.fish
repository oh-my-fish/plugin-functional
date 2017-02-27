function foldl --argument init lambda
	set -e argv[1..2]
	__functional_foldl "$init" "$lambda" "" $argv
end
