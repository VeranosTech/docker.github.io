---
description: 도커 포 맥(Docker for Mac) 설치
keywords: mac, beta, alpha, install, download
title: Install Docker for Mac
---

"도커 포 맥"은 [Docker Community Edition (CE)](https://www.docker.com/community-edition) 앱이다.
도커 포 맥 설치 패키지에는 맥에서 도커를 돌리기 위한 모든 것이 포함되어 있다. 
여기에서는 설치전에 고려해야하는 사항과 다운로드 및 설치 방법을 설명한다.<br><br>

> **이미 도커 포 맥이 있는 경우** 만약 이미 도커 포 맥을
설치해서 사용하고 있다면 이제 시작할 수 있으므로 
[도커 포 맥 시작하기](index.md)로 가서 커맨드라인, 설정, 도구
등을 살펴볼 수 있다. 

>**릴리스 노트** [모든 버전에 대한 릴리스 노트](release-notes.md).

## 도커 포 맥 다운로드

만약 아직 설치하지 않았다면 우선 도커 포 맥을 설치한다. 안정화 채널과 엣지 채널에서 인스톨러를
다운로드 받을 수 있다.

안정화 버전 인스톨러와 최신 인스톨러 모두 <a
href="https://github.com/docker/docker-ce/blob/master/components/cli/experimental/README.md">
도커 엔진의 실험적 기능</a>을 포함하며 디폴트로 작성 설정되어 있다.
[도커 데몬 개인화](/docker-for-mac/index.md#daemon-experimental-mode) 모드에서 설정을 
바꿀 수 있다. 프로덕션 앱에서는 실험적인 기능을 작동시키지 않도록 권장한다.

두 채널 모두 우리가 앱이 발전시킬 수 있도록  <a
href="troubleshoot/#diagnose-problems-send-feedback-and-create-github-issues">피드백</a>을
주기를 바란다.

안정화 채널과 엣지 채널에 대한 더 많은 정보는 
[자주하는 질문과 답](/docker-for-mac/faqs.md#stable-and-edge-channels)을 참조한다.

<table style="width:100%">
  <tr>
    <th style="font-size: x-large; font-family: arial">안정화 채널</th>
    <th style="font-size: x-large; font-family: arial">엣지 채널</th>
  </tr>
  <tr valign="top">
    <td width="50%">
    이 인스톨러는 충분히 검사되었다. 만약 신뢰성있는 플랫폼을 원한다면 이 채널을 선택한다.
    여기에서는 도커 엔진의 안정화 버전을 배포한다.<br><br>
    이 채널에서는 사용 통계나 다른 데이터를 보낼지 아닐지 선택할 수 있다.<br><br>
    안정화 버전은 분기에 한 번 배포한다.
   </td>
    <td width="50%">
    이 인스톨러는 도커 포 맥과 도커 엔진의 최신의 엣지 버전으로 개발중인 새 기능을 제공한다.
    만약 실험적인 기능을 보다 빨리 얻고 싶으면 이 채널을 사용한다.
    하지만 버그 및 불안정성이 있을 수 있다.
    이 채널에서는 모든 사용 데이터를 수집한다.<br><br>
    엣지 버전은 매달 배포한다.
    </td>
  </tr>
  <tr valign="top">
  <td width="50%">
  <a class="button outline-btn" href="https://download.docker.com/mac/stable/Docker.dmg">도커 포 맥 (안정화 버전)</a>
  </td>
  <td width="50%">
  <a class="button outline-btn" href="https://download.docker.com/mac/edge/Docker.dmg">도커 포 맥 (엣지 버전)</a>
  </td>
  </tr>
  <tr valign="top">
  <td width="50%">
  <a href="https://download.docker.com/mac/stable/Docker.dmg.sha256sum"><font color="#BDBDBD" size="-1">Checksum: Docker.dmg SHA256</font></a>
  </td>
  <td width="50%">
  <a href="https://download.docker.com/mac/edge/Docker.dmg.sha256sum"><font color="#BDBDBD" size="-1">Checksum: Docker.dmg SHA256</font></a>
  </td>
  </tr>
</table>

* 도커 포 맥은 인텍의 MMU 가상화 하드웨어 지원 기능이 있는 2010 이후의 맥과 
  OS X 엘 캐피탄 10.11 이상의 최신 버전 macOS을 요구한다. 
  앱은 10.10.3 요세미티 이상에서도 돌아가지만 제한 사항이 있다. 
  요구사항에 대한 자세한 내용에 대해서는 [설치 전에 알아야 할 것](#what-to-know-before-you-install)을 참조한다.

* 엣지 버전과 안정화 버전을 변경할 수 있지만 한 번에는 한 가지만 사용해야 한다.
  또한 현재 버전을 설치 제거하고 다른 버전을 설치하기 전에 보관하고자 하는 이미지를
  저장하고 익스포트해야 한다. 자세한 사항은 
  [안정화 채널과 엣지 채널에 대해 자주하는 질문과 답](faqs.md#stable-and-edge-channels)을 참조한다.

##  설치 전에 알아야 하는 사항 

> 도커 툴박스와 도커 머신 사용자들은 먼저 이 사항을 읽어야 한다.
>
> 만약 이미 맥에서 도커를 쓰고 있다면 우선 
> [도커 포 맥과 도커 툴박스 비교](docker-toolbox.md)을 읽고
> 프로그램 설치후의 영향과 도커 포 맥 환경 설정법 그리고 두 시스템을 같이 사용하는 법을 숙지한다.

* **도커 머신과의 관계**: 도커 포 맥을 설치해도 도커 머신으로 만든 가상 머신에는 영향을 미치지 않는다.
  로컬 `default` 가상머신에서 이미지와 컨테이너를 도커 포 맥 [HyperKit](https://github.com/docker/HyperKit/) 
  가상머신으로 복사할 수 있는 옵션이 있다. 
  만약 이미 도커 포 맥을 사용하고 있다면 도커 머신을 가동할 필요가 없다.
  도커 포 맥에서는 기존의 VirtualBox 대신 새로운 HyperKit 가상화 시스템이 돌아간다.
  더 자세한 내용은 [도커 포 맥과 도커 툴박스 비교](docker-toolbox.md)를 참조한다.  

* **시스템 요구사항**: 도커 포 맥을 시작하려면 다음 요구사항이 모두 만족되어야 한다..

  - 맥 하드웨어가 확장 페이지 테이블(EPT: Extended Page Tables)과 
    무제한 모드(Unrestricted Mode) 등의 인텔 메모리 관리 (MMU) 
    가상화 기능이 있는 2010 이상의 최신 모형이어야 한다. 
    터미널에서 컴퓨터 하드웨어가 돌아가는지 확인하기 위해 
    다음 명령이 실행가능하지 확인한다.: `sysctl kern.hv_support`
    
  - macOS El Capitan 10.11 and newer macOS releases are supported. At a minimum,
    Docker for Mac requires macOS Yosemite 10.10.3 or newer, with the caveat
    that going forward 10.10.x is a use-at-your-own risk proposition.

  - Starting with Docker for Mac Stable release 1.13, and concurrent
    Edge releases, we will no longer address issues specific to macOS Yosemite
    10.10. In future releases, Docker for Mac could stop working on macOS Yosemite
    10.10 due to the deprecated status of this macOS version. We recommend
    upgrading to the latest version of macOS.

  - At least 4GB of RAM

  - VirtualBox prior to version 4.3.30 must NOT be installed (it is incompatible
    with Docker for Mac). If you have a newer version of VirtualBox installed, it's fine.

  > **Note**: If your system does not satisfy these requirements, you can
  > install [Docker Toolbox](/toolbox/overview.md), which uses Oracle VirtualBox
  > instead of HyperKit.

* **What the install includes**: The installation provides
  [Docker Engine](/engine/userguide/), Docker CLI client,
  [Docker Compose](/compose/overview/), [Docker Machine](/machine/overview/), and [Kitematic](/kitematic/userguide.md).

## Install and run Docker for Mac

1.  Double-click `Docker.dmg` to open the installer, then drag Moby the whale to
    the Applications folder.

	  ![Install Docker app](/docker-for-mac/images/docker-app-drag.png)

2.  Double-click `Docker.app` in the Applications folder to start Docker. (In the example below, the Applications folder is in "grid" view mode.)

	  ![Docker app in Hockeyapp](/docker-for-mac/images/docker-app-in-apps.png)

	  You will be asked to authorize `Docker.app` with your system password after you launch it.
	  Privileged access is needed to install networking components and links to the Docker apps.

	  The whale in the top status bar indicates that Docker is running, and accessible from a terminal.

	  ![Whale in menu bar](/docker-for-mac/images/whale-in-menu-bar.png)

    If you just installed the app, you also get a success message with suggested
    next steps and a link to this documentation. Click the whale (![whale
    menu](/docker-for-mac/images/whale-x.png){: .inline}) in the status bar to
    dismiss this popup.

	  ![Startup information](/docker-for-mac/images/mac-install-success-docker-cloud.png)

3.  Click the whale (![whale menu](/docker-for-mac/images/whale-x.png){: .inline}) to get Preferences and other options.

	  ![Docker context menu](images/menu.png)

4.  Select **About Docker** to verify that you have the latest version.

Congratulations! You are up and running with Docker for Mac.

## Where to go next

* [Getting started](index.md) provides an overview of Docker for Mac,
basic Docker command examples, how to get help or give feedback, and
links to all topics in the Docker for Mac guide.

* [Troubleshooting](troubleshoot.md) describes common problems,
workarounds, how to run and submit diagnostics, and submit issues.

* [FAQs](faqs.md) provides answers to frequently asked questions.

* [Release Notes](release-notes.md) lists component updates, new features, and improvements associated with Stable and Edge releases.

* [Get Started with Docker](/get-started/) provides a general Docker tutorial.
