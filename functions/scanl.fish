function scanl --argument init lambda
	set -e argv[1..2]
	__functional_foldl "$init" "$lambda" 'echo $_acc' $argv
end
