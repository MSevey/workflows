const core = require("@actions/core");
const github = require("@actions/github");

(async () => {
  // Inputs
  const githubUser = core.getInput("github_user");
  console.log(`Github User ${githubUser}`);
  const githubRepo = core.getInput("github_repo");
  console.log(`Github User ${githubRepo}`);

  // Outputs
  core.setOutput("latest_release_tag", `latest tag`);
  core.setOutput("latest_tag_commit", `latest commit`);
})();
