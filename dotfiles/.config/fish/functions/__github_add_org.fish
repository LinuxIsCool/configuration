# Defined in /tmp/fish.azx9vq/__github_add_org.fish @ line 1
function __github_add_org --description 'Add an organization name to the local share fzf file.' --argument org
    if ! test -n "$org"
        echo "Please provide and org name!"
        return 1
    else
        echo $org >> ~/.local/share/fzf/github_orgs
    end
end
