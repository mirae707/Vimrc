# VIM IDE ( +tmux )

vim 을 나만의 IDE (통합 개발 환경)로 만들기  
vim 만의 장점 가볍고 그래픽 환경이 필요없다!  
키보드만으로 모든걸 할 수 있다.  
코딩 뿐만 아니라 편집기로서의 능력도 너무 좋아서 단순히 글 쓰는 용도로도 제격!

## 설치 (Installation)

- 홈 디텍토리에 이 레포지토리를 받아주세요. (Cloning this repository at $HOME)

```bash
git clone https://github.com/mirae707/vimrc
```

- vimrc 안에 있는 vim_set.sh 파일을 실행 시킵니다. (Executing the 'vim_set.sh' file)
  - 실행 내용:
    - vimrc 설정 파일을 ~/.vimrc 로 옮깁니다.
    - 플러그인을 실행시키는데 필요한 기본 패키지들을 설치합니다.
    - 사용하는 리눅스 distros에 따라 선택해서 설치할 수 있습니다.
    - tmux 설정 파일도 ~/.tmux.conf 로 복사합니다.

```bash
~/vimrc/vim_set.sh
```

- 복사된 .vimrc 파일을 열어줍니다. (처음엔 플러그인이 설치되어 있지 않아서 에러가 나지만 엔터 누르시면 됩니다.)
- vim을 실행함과 동시에 플러그인 매니저 vim-plug를 자동으로 다운받습니다.

```bash
vim ~/.vimrc
```

## 플러그인 설치 (Installation of Plugin)

- vim 안에서 :PlugInstall 명령을 입력합니다.
- 등록된 플러그인들을 다운받습니다.

### COC (자동완성 설정)

## ZSH 설정

- zsh 를 사용하고 싶으신 분들만 사용하시면 됩니다.

If you want to use zsh with powerlevel10k,
just execute a zsh.sh file in the repository.
