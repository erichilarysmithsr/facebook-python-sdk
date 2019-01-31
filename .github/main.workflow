workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for AWS"]
}

action "GitHub Action for AWS" {
  uses = "actions/aws/cli@8d318706868c00929f57a0b618504dcdda52b0c9"
  secrets = ["GITHUB_TOKEN"]
}

workflow "New workflow 1" {
  on = "push"
  resolves = ["HTTP client"]
}

action "HTTP client" {
  uses = "swinton/httpie.action@02571a073b9aaf33930a18e697278d589a8051c1"
  secrets = ["GITHUB_TOKEN"]
}
