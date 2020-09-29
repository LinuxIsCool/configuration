# Defined in /tmp/fish.T4Z5Kp/fclone.fish @ line 2
function fhub --argument org
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
       echo "Opening '$repo' in Web Browser"
       hub browse $repo
    end
end
