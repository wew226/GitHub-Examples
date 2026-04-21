require 'octokit'

client = Octokit::Client.new(access_token: ENV['GH_TOKEN'])

repo = 'wew226/GitHub-Examples'
new_branch_name = 'sdks'

# Get the SHA of the commit you want to branch from (e.g., latest on main)
main_branch = client.branch(repo, 'main')
sha = main_branch.commit.sha

# Create the new branch
client.create_ref(
    repo, 
    "heads/#{new_branch_name}", 
    sha
)
