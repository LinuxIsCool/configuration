# Defined in /tmp/fish.yoQzI0/fclone.fish @ line 2
function fclone --argument org
    if ! test -n "$org"
        set org_file ~/.local/share/fzf/github_orgs
        if ! test -e $org_file
            echo -n "Please provide an organization name either as an argument to this command or in a list at $org_file"
            return 1
        else
            set org (cat $org_file | fzf-tmux -e --header="Please select an organization. Set additional orgs in $org_file")
        end
    end
    set repo (__github_get_org_repos $org | fzf-tmux --header="Please select a repository to clone.")
    if test -n "$repo"
       echo "Cloning '$repo' from Github"
       git clone "https://github.com/$repo.git"
    end
end
