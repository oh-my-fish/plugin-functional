function scanr --argument lambda init 
	set -e argv[1..2]
	__functional_foldr "$lambda" "$init" 'echo $_acc' $argv
end
