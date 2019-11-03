# Getting Started: Collaborative development with Git

## Step 1: Alice creates a new project and hosts it on GitHub.

First, Alice opens up a terminal and creates a Git repository from the command line:

> Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo
$ git init
Initialized empty Git repository in E:/Tugas-tugas/Github/AnotherTestRepo/.git/

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ touch README.txt

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git add README.txt


>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ echo 'This repo is a collection of my favorite nursery rhymes.' >> README.txt

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

>        modified:   README.txt

>no changes added to commit (use "git add" and/or "git commit -a")


>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git diff
warning: LF will be replaced by CRLF in README.txt.
The file will have its original line endings in your working directory
diff --git a/README.txt b/README.txt
index e69de29..c83e022 100644
--- a/README.txt
+++ b/README.txt
@@ -0,0 +1 @@
+This repo is a collection of my favorite nursery rhymes.

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git add README.txt
warning: LF will be replaced by CRLF in README.txt.
The file will have its original line endings in your working directory

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git commit -m 'Added Project Overview to README.txt'
[master 6214492] Added Project Overview to README.txt
 1 file changed, 1 insertion(+)

Next, Alice downloads favorite rhymes
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ touch rhymes1.txt
$ touch rhymes2.txt
$ touch rhymes3.txt

$

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git add .
warning: LF will be replaced by CRLF in README.txt.
The file will have its original line endings in your working directory

The files have been downloaded, but not committed.
You can see this with git status. 

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

>        new file:   rhymes1.txt
        new file:   rhymes2.txt
        new file:   rhymes3.txt


Next, Alice creates a GitHub account here: https://github.com/. Then she creates a new repo named "rhymes". Following the instructions provided by GitHub, she pushes her repo up to GitHub like this:

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git remote set-url origin https://Hilman27:Mocha271196@github.com/Hilman27/rhymes.git

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git push -u origin master
Enumerating objects: 6, done.
Counting objects: 100% (6/6), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (6/6), 490 bytes | 24.00 KiB/s, done.
Total 6 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), done.
To https://github.com/Hilman27/rhymes.git
 * [new branch]      master -> master
Branch 'master' set up to track remote branch 'master' from 'origin'.


##Step 2: Bob copies Alice's project, then submits some simple changes
Bob discovers Alice's repo on GitHub here. He can copy, or "clone", her project here (screenshot). But if Bob wants to propose changes to Alice through GitHub, he needs to "fork" Alice's project first (because he does not have permission to make changes directly in Alice's repo). Bob forks Alice's project by clicking the fork button here.

Now Bob has his own copy of Alice's project here: here.

Bob adds Hickory Dickory Dock to his copy of rhymes.

First Bob clones his fork of Alice's rhymes project.

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob
$ git clone https://github.com/HilmanMocha/rhymes.git
Cloning into 'rhymes'...
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 1), reused 6 (delta 1), pack-reused 0
Unpacking objects: 100% (6/6), done.

To keep things simple and tidy, Bob will keep the master branch in sync with Alice's version of the master branch.

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (master)
$ git checkout -b hickory-dickory
Switched to a new branch 'hickory-dickory'

Add Hickory Dickory Dock to the repo.
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (hickory-dickory)
$ touch bobs_rhymes1.txt
$ touch bobs_rhymes2.txt

$

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (hickory-dickory)
$ git add .

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (hickory-dickory)
$ git commit -m 'Added Bobs Rhyme'
[hickory-dickory d5d3620] Added Bobs Rhyme
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 bobs_rhymes1.txt
 create mode 100644 bobs_rhymes2.txt

Bob pushes the changes from his local copy of rhymes up to GitHub.

##Step 3: Alice reviews and accepts Bob's simple changes
Alice renames origin -> alice.
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git remote rename origin alice

Add a remote pointing to Bob's copy of the project.

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git remote add bob https://github.com/HilmanMocha/rhymes.git

Review remotes.

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git remote
alice
bob

Confirm each remote points to the correct repository.
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git remote -v
alice   https://Hilman27:Mocha271196@github.com/Hilman27/rhymes.git (fetch)
alice   https://Hilman27:Mocha271196@github.com/Hilman27/rhymes.git (push)
bob     https://github.com/HilmanMocha/rhymes.git (fetch)
bob     https://github.com/HilmanMocha/rhymes.git (push)

Next Alice pulls down a copy of Bob's work. She checks out a local copy of his changes to inspect them. Then she merges and pushes her changes up to GitHub.

Fetch a copy of Bob's work.
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git fetch bob
remote: Enumerating objects: 7, done.
remote: Counting objects: 100% (7/7), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 6 (delta 0), reused 6 (delta 0), pack-reused 0
Unpacking objects: 100% (6/6), done.
From https://github.com/HilmanMocha/rhymes
 * [new branch]      hickory-dickory -> bob/hickory-dickory
 * [new branch]      master          -> bob/master

Review all the branches (both local and remote).
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git branch -a
* master
  remotes/alice/master
  remotes/bob/hickory-dickory
  remotes/bob/master

Check out a local copy of Bob's work and review it.

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git checkout -b hickory-dickory bob/hickory-dickory
Switched to a new branch 'hickory-dickory'
Branch 'hickory-dickory' set up to track remote branch 'hickory-dickory' from 'bob'.

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (hickory-dickory)
$ git diff master hickory-dickory
diff --git a/bobs_rhymes1.txt b/bobs_rhymes1.txt
new file mode 100644
index 0000000..5664c4e
--- /dev/null
+++ b/bobs_rhymes1.txt
@@ -0,0 +1 @@
+Bob
\ No newline at end of file
diff --git a/bobs_rhymes2.txt b/bobs_rhymes2.txt
new file mode 100644
index 0000000..5664c4e
--- /dev/null
+++ b/bobs_rhymes2.txt
@@ -0,0 +1 @@
+Bob
\ No newline at end of file
diff --git a/rhymes1.txt b/rhymes1.txt
deleted file mode 100644
index e8dba8a..0000000
--- a/rhymes1.txt
+++ /dev/null
@@ -1 +0,0 @@
-Alice
\ No newline at end of file
diff --git a/rhymes2.txt b/rhymes2.txt
deleted file mode 100644
index e8dba8a..0000000
--- a/rhymes2.txt
+++ /dev/null
@@ -1 +0,0 @@
-Alice
\ No newline at end of file
diff --git a/rhymes3.txt b/rhymes3.txt
deleted file mode 100644
index e8dba8a..0000000
--- a/rhymes3.txt
+++ /dev/null
@@ -1 +0,0 @@
-Alice
\ No newline at end of file
(END)

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (hickory-dickory)
$ git log -1 -p
commit 6ac7991032f81866e743da7d9bd5a57add91ea00 (HEAD -> hickory-dickory, bob/hickory-dickory)
Author: Hilman27 <HilmanMocha@users.noreply.github.com>
Date:   Sun Nov 3 12:50:10 2019 +0700

>    Added Bobs Rhyme

>diff --git a/bobs_rhymes1.txt b/bobs_rhymes1.txt
index e69de29..5664c4e 100644
--- a/bobs_rhymes1.txt
+++ b/bobs_rhymes1.txt
@@ -0,0 +1 @@
+Bob
\ No newline at end of file
diff --git a/bobs_rhymes2.txt b/bobs_rhymes2.txt
index e69de29..5664c4e 100644
--- a/bobs_rhymes2.txt
+++ b/bobs_rhymes2.txt
@@ -0,0 +1 @@
+Bob
\ No newline at end of file

Checkout master and merge Bobs changes in.
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (hickory-dickory)
$ git checkout master
Switched to branch 'master'
Your branch is up to date with 'alice/master'.

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git merge hickory-dickory
Merge made by the 'recursive' strategy.
 bobs_rhymes1.txt | 1 +
 bobs_rhymes2.txt | 1 +
 2 files changed, 2 insertions(+)
 create mode 100644 bobs_rhymes1.txt
 create mode 100644 bobs_rhymes2.txt

Push changes up to GitHub git push alice master
Remove our local copy of the hickory-dickory branch. We don't need it anymore.

Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo (master)
$ git branch -D hickory-dickory
Deleted branch hickory-dickory (was 6ac7991).

##Step 4: Bob makes lots of changes

Bob updates his repo, to get it up to date with Alice's

change origin name to bob
Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (hickory-dickory)
$ git remote rename origin bob

add remote for alice
Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (hickory-dickory)
$ git remote add alice https://github.com/Hilman27/rhymes.git

check the remote
Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (hickory-dickory)
$ git remote
alice
bob

update master branch
Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (hickory-dickory)
$ git remote update
Fetching bob
Fetching alice
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
From https://github.com/Hilman27/rhymes
 * [new branch]      master     -> alice/master

Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (hickory-dickory)
$ git checkout master
Switched to branch 'master'
Your branch is up to date with 'bob/master'.

Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (master)
$ git merge alice/master
Updating 6214492..43f2b3c
Fast-forward
 rhymes1.txt | 1 +
 rhymes2.txt | 1 +
 rhymes3.txt | 1 +
 3 files changed, 3 insertions(+)
 create mode 100644 rhymes1.txt
 create mode 100644 rhymes2.txt
 create mode 100644 rhymes3.txt

confirm everything right

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (master)
$ git diff alice/master


push
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (master)
$ git push bob master
Total 0 (delta 0), reused 0 (delta 0)
To https://github.com/HilmanMocha/rhymes.git
   6214492..43f2b3c  master -> master

Bob creates a new branch where he will add more stuff.

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (master)
$ git checkout -b bobs-changes
Switched to a new branch 'bobs-changes'

Bob addsmore rhymes
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (bobs-changes)
$ git commit -m 'added more rythem'
[bobs-changes 1894858] added more rythem
 3 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 bobRythem3.txt
 create mode 100644 bobRythem4.txt
 create mode 100644 bobRythem6.txt

bob fix typos
Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (bobs-changes)
$ git commit -am 'Updated README.txt.'
[bobs-changes 071abf2] Updated README.txt.
 1 file changed, 1 insertion(+)


>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (bobs-changes)
$ git diff --word-diff

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (bobs-changes)
$ git commit -am 'Fixed typo in README.txt.'
On branch bobs-changes
nothing to commit, working tree clean

Bob adds morelyrics

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (bobs-changes)
$ git commit -m 'added another lyric'
[bobs-changes c5b9130] added another lyric
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 rythem5.txt

Bob change the readme again
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (bobs-changes)
$ git commit -am 'Updated README.txt.'
[bobs-changes 6cc44de] Updated README.txt.
 1 file changed, 4 insertions(+), 3 deletions(-)

Bob checks the log
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (bobs-changes)
$ git log --oneline
6cc44de (HEAD -> bobs-changes) Updated README.txt.
a8112fa Updated README.txt.
c5b9130 added another lyric
071abf2 Updated README.txt.
1894858 added more rythem
43f2b3c (bob/master, bob/HEAD, alice/master, master) added rhymes text
6214492 Added Project Overview to README.txt
c39bb43 First commit.

##Step 5: Bob cleans up his work before submitting

Bob doesn't want to waste Alice's time having her review changes that he himself has already decided to throw away. So, before publishing his project history on GitHub, he does some cleanup.

The commit history in the bobs-changes branch looks like this:

Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (bobs-changes)
$ git log --oneline
6cc44de (HEAD -> bobs-changes) Updated README.txt.
a8112fa Updated README.txt.
c5b9130 added another lyric
071abf2 Updated README.txt.
1894858 added more rythem
43f2b3c (bob/master, bob/HEAD, alice/master, master) added rhymes text
6214492 Added Project Overview to README.txt
c39bb43 First commit.

Using Git's interactive rebase command, Bob can rewrite history. Bob will reorder all the updates to README so they appear chronologically. Then he will squash them down to a single commit. Here's how he does it:

>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (bobs-changes)
$ git rebase -i c5b9130
Successfully rebased and updated refs/heads/bobs-changes.

>pick a8112fa Updated README.txt.
pick 6cc44de Updated README.txt.

> Rebase c5b9130..6cc44de onto c5b9130 (2 commands)
>
> Commands:
> p, pick <commit> = use commit
> r, reword <commit> = use commit, but edit the commit message
> e, edit <commit> = use commit, but stop for amending
> s, squash <commit> = use commit, but meld into previous commit
> f, fixup <commit> = like "squash", but discard this commit's log message
> x, exec <command> = run command (the rest of the line) using shell
> b, break = stop here (continue rebase later with 'git rebase --continue')
> d, drop <commit> = remove commit
> l, label <label> = label current HEAD with a name
> t, reset <label> = reset HEAD to a label
> m, merge [-C <commit> | -c <commit>] <label> [# <oneline>]
> .       create a merge commit using the original merge commit's
> .       message (or the oneline, if no original merge commit was
> .       specified). Use -c <commit> to reword the commit message.
> These lines can be re-ordered; they are executed from top to bottom.
> If you remove a line here THAT COMMIT WILL BE LOST.

> However, if you remove everything, the rebase will be aborted.

> Note that empty commits are commented out

Now when Bob reviews his commit history, it's nice and tidy.
>Mocha@DESKTOP-QEULE7M MINGW64 /e/Tugas-tugas/Github/AnotherTestRepo_Bob/rhymes (bobs-changes)
$ git log --oneline
6cc44de (HEAD -> bobs-changes) Updated README.txt.
a8112fa Updated README.txt.
c5b9130 added another lyric
071abf2 Updated README.txt.
1894858 added more rythem
43f2b3c (bob/master, bob/HEAD, alice/master, master) added rhymes text
6214492 Added Project Overview to README.txt
c39bb43 First commit.

Now Bob pushes his changes up to GitHub and sends another pull request to Alice.


