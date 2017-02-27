function filter --argument lambda
	set -e argv[1]
	__functional_impl "eval $lambda; and echo \$_1" $argv
end
