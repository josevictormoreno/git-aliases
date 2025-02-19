# GitAliases

A PowerShell module that provides convenient Git command aliases for a smoother workflow, similar to the Oh My Zsh Git plugin.

## Installation

Follow these steps to install and configure the module:

### 1. Create the Module Directory
```powershell
mkdir -p $HOME\Documents\PowerShell\Modules\GitAliases
```

### 2. Clone the Repository into the Module Directory
```powershell
cd $HOME\Documents\PowerShell\Modules\GitAliases
git clone https://github.com/josevictormoreno/git-aliases.git .
```

### 3. Import the Module
To enable the aliases, run the following command in PowerShell:
```powershell
Import-Module GitAliases
```

### 4. Add to PowerShell Profile
To automatically load the module on every PowerShell session, add the following line to your PowerShell profile:
```powershell
Import-Module GitAliases
```

To edit your profile, use:
```powershell
notepad $PROFILE
```

## Usage
Once installed, you can use the Git aliases like so:

```powershell
gst  # git status
gcmsg "commit message"  # git commit -m "commit message"
gpl  # git pull
gps  # git push
```

### Available Aliases

| Alias  | Git Command |
|--------|------------|
| `gst`  | `git status` |
| `ga`   | `git add <file>` |
| `gaa`  | `git add *` |
| `gapa` | `git add -p` |
| `gcmsg` | `git commit -m <message>` |
| `gph`  | `git push` |
| `gpl`  | `git pull` |
| `gco`  | `git checkout <branch>` |
| `gcb`  | `git checkout -b <branch>` |
| `gcl`  | `git clone <repo>` |
| `gcp`  | `git cherry-pick <commit>` |
| `gcpa` | `git cherry-pick --abort` |
| `gcpc` | `git cherry-pick --continue` |
| `gb`   | `git branch` |
| `gd`   | `git diff` |
| `glg`  | `git log --oneline --graph --decorate --all` |
| `gf`   | `git fetch` |
| `gfa`  | `git fetch --all --tags --prune` |
| `gh`   | `git help` |
| `gmg`  | `git merge <branch>` |
| `gma`  | `git merge --abort` |
| `gmc`  | `git merge --continue` |
| `gms`  | `git merge --squash <branch>` |
| `gr`   | `git rebase <branch>` |
| `gra`  | `git rebase --abort` |
| `grc`  | `git rebase --continue` |
| `grs`  | `git reset <commit>` |
| `grsh` | `git reset --hard` |
| `grst` | `git restore <file>` |
| `grsts` | `git restore --staged <file>` |
| `grev` | `git revert <commit>` |
| `grm`  | `git rm <file>` |
| `gs`   | `git stash` |
| `gsp`  | `git stash pop` |
| `gsl`  | `git stash list` |
| `gsc`  | `git stash clear` |
| `gtag` | `git tag <tag>` |

## License
This project is open-source under the MIT License.

