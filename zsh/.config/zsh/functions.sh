function except() {
    for f in $@; do
        if [ ! -f $f ]; then
            echo "No such file: $@"
            return
        fi
    done
    files=$(echo $@ | sed 's/ /\|/g')
    ls -1 | grep -v -E "$files" | xargs -I files rm "files"
}

function fdir() {
	if [[ $# -lt 1 ]]; then
		echo "Require at least one argument"
		exit 1
	fi

	local executable=$1
	local path_to_find="."

	if [[ -d $2 ]]; then
		path_to_find=$2
	fi

	file=$(find "$path_to_find" -type d | fzf)
	$executable $file
}

function ffile() {
	if [[ $# -lt 1 ]]; then
		echo "Require at least one argument"
		exit 1
	fi

	local executable=$1
	local path_to_find="."

	if [[ -d $2 ]]; then
		path_to_find=$2
	fi

	file=$(find "$path_to_find" -type f | fzf)
	$executable $file
}
