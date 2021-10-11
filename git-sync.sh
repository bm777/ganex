declare -i i=1
while true
do
	echo "_______________"$i"_________________"
	git rm -rf --cached .
	git add -A
	git commit -am "Update on Linker/ setting up ganex search / setting up filter"
	git push
	echo "Hi, bm7. A update has been done :)"
	i=$i+1
	echo "____________________________________"
	sleep 15
done

