
# Add a new comment
BITBUCKET_REPO_OWNER="BalinkDev"                #louisvuitton_team
BITBUCKET_REPO_SLUG="test_react_app"            #test_react_app
USERNAME="mordehaic"
PASSWORD="ATBBCw4Lyen4CWpTDYMqAey9Fdsa134DD8E8" # App passwords 
BITBUCKET_BRANCH=${1:-'develop'}                          

curl https://api.bitbucket.org/2.0/repositories/${BITBUCKET_REPO_OWNER}/${BITBUCKET_REPO_SLUG}/pullrequests \
-u ${USERNAME}:${PASSWORD}   \
--request POST \
-H 'Content-Type: application/json' \
-d '{
    "title": "Merge from '${BITBUCKET_BRANCH}' branch",
    "description": "Automated PR creation process :-)", 
    "source": {
        "branch": {
          "name": "'${BITBUCKET_BRANCH}'"
        }
    },
    "close_source_branch": false,
    "reviewers": '[]'
}'