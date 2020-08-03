# From https://www.it-swarm.dev/ko/zsh/zsh-compinit-%EC%95%88%EC%A0%84%ED%95%98%EC%A7%80-%EC%95%8A%EC%9D%80-%EB%94%94%EB%A0%89%ED%86%A0%EB%A6%AC/1070443524/
I also have to do the following commands before finish setting:


$ cd /usr/local/share/zsh
$ Sudo chmod -R 755 ./site-functions

EDIT : 의견에서 @biocyberman이 지적한 것처럼. site-functions의 소유자도 업데이트해야 할 수도 있습니다.

$ Sudo chown -R root:root ./site-functions
내 컴퓨터 (OSX 10.9)에서는 YMMV 이외의 작업을 수행 할 필요가 없습니다.

EDIT2 : OSX 10.11에서는 다음과 같이 작동했습니다.

$ cd /usr/local/share/
$ Sudo chmod -R 755 zsh
$ Sudo chown -R root:staff zsh
또한 user : staff는 OSX에 대한 올바른 기본 권한입니다.
