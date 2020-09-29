# Defined in /tmp/fish.mAOD6Y/__github_get_org_repos.fish @ line 2
function __github_get_org_repos --description 'Return a list of all the github repos owned by a github organization.' --argument org
    if ! test -n "$org"
        echo "Please provide a github organization name."
        return 1
    else
        curl "https://api.github.com/orgs/$org/repos?per_page=100&page=1" | jq '.[].full_name' | awk -F'"' '{print $2}'
    end
end
