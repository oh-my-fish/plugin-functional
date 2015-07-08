function each --argument lambda
	set -e argv[1]
	__functional_impl $lambda $argv
end
