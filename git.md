# Git Cheatsheet

## Delete branch

### Local

```bash
git branch -d feat/qr-code
```

### Remote

```bash
git push origin --delete feat/qr-code
```

## Git worktree with bare repository

```bash
mkdir <myproject>
cd myproject
git clone --bare <myproject> .bare
ln -s .bare .git
cd .bare
git worktree add ../main main
```

## Worktree commands

```bash
git worktree add ../<name> <distant_branch>
git worktree add ../<name> -b <new_branch>
git worktree remove ../<name>
git worktree list
```

```bash
git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
```

# Rebase onto

```bash
git rebase --onto <new_base> <old_base> <branch>
```

## Delete already versioned file

```bash
git rm --cached <file>
```

## Delete cache entries

```bash
gh api \
  -H "Accept: application/vnd.github+json" \
  /repos/OWNER/REPO/actions/caches \
  -q '.actions_caches[]
      | { id, last_accessed_at }
      | select(.last_accessed_at < "2022-11-02T00:00:00.000000000Z")
      | {id}
      | .[]' \
  --paginate | xargs -I {} \
  gh api \
    --method DELETE \
    -H "Accept: application/vnd.github.v3+json" \
    /repos/OWNER/REPO/actions/caches/{}
```
