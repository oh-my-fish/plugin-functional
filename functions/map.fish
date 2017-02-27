function map --argument lambda
	set -e argv[1]
	__functional_impl "echo $lambda" $argv
end
