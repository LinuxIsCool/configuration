function readme -a owner repo branch
    if test -z "$branch"
        set branch master
    end
    curl -s https://raw.githubusercontent.com/$owner/$repo/$branch/README.md
end
