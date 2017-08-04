bin="$1"
diff="diff -iad"

declare -a input=("test1" "test2" "test3" "test4" "test5")

for file in "${input[@]}"; do
	#set up file names
	file_in="$file.in"
	file_out_student="$file.out"
	file_out_solution="$file.sol"
	
	#get start time
	start_time='date +%s'

	#run program, check output, check runtime
	"./$bin" <"$file_in">
	end_time='date +%s'
	runtime=$((end_time-start_time))
	$diff "$file_out_student" "$file_out_solution"
	e_code=$?
	if [ $e_code] != 0]; then
		printf "Incorrect Answer on $file"
	else
		printf "All Correct"
	fi
done

exit 0
