#jenkins-docker

jenkinsをdockerで動かして、どこでもbuild環境を復帰する。というニッチなアレ

# features
* jenkins homeの永続化しない作戦の予定
* jenkins homeの設定だけバックアップする。 jobとか作って
* dokcer run に リストア環境のgit remoteを指定する
* docker run でjenkins インスコ起動


# dockerfile idea
    jenkins install
    jenkins home setup
    git init in jenkins home

    if ${git_remote_url}
        git remote add backup ${git_remote_url}
        git pull backup master

    if no has run-backup-job
        jenkins import git-backup job

    run jnekins
