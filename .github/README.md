# Curriculum Vitae
[heading__top]:
  #curriculum-vitae
  "&#x2B06; Public CV with CI/CD magics to generate and publish PDF"


Public CV with CI/CD magics to generate and publish PDF

<!-- ## [![Byte size of Curriculum Vitae][badge__main__curriculum_vitae__source_code]][curriculum_vitae__main__source_code] [![Open Issues][badge__issues__curriculum_vitae]][issues__curriculum_vitae] [![Open Pull Requests][badge__pull_requests__curriculum_vitae]][pull_requests__curriculum_vitae] [![Latest commits][badge__commits__curriculum_vitae__main]][commits__curriculum_vitae__main] [![curriculum-vitae Demos][badge__gh_pages__curriculum_vitae]][gh_pages__curriculum_vitae]  [![GitHub Actions Build Status][badge__github_actions]][activity_log__github_actions] [![License][badge__license]][branch__current__license] -->


---


- [:arrow_up: Top of Document][heading__top]
- [:building_construction: Requirements][heading__requirements]
  - [Arch Linux (BTW™)][heading__arch_linux_btw]
  - [Alpine Linux -- Docker `pandoc/extra:3.1.13.0-alpine`][heading__alpine_linux_docker_pandocextra31130alpine]
- [:zap: Quick Start][heading__quick_start]
- [&#x1F9F0; Usage][heading__usage]
- [&#x1F5D2; Notes][heading__notes]
- [:chart_with_upwards_trend: Contributing][heading__contributing]
  - [:trident: Forking][heading__forking]
  - [:currency_exchange: Sponsor][heading__sponsor]
- [:card_index: Attribution][heading__attribution]
- [:balance_scale: Licensing][heading__license]


---



## Requirements
[heading__requirements]:
  #requirements
  "&#x1F3D7; Prerequisites and/or dependencies that this project needs to function properly"


Access to GitHub Actions if using on GitHub, or installing the following
dependencies if running locally;

### Arch Linux (BTW™)
[heading__arch_linux_btw]: #arch-linux-btw

```bash
sudo pacman -S texlive-bin \
  texlive-basic \
  texlive-binextra \
  texlive-latex \
  texlive-latexextra \
  texlive-fontsrecommended

sudo texconfig rehash
```

### Alpine Linux -- Docker `pandoc/extra:3.1.13.0-alpine`
[heading__alpine_linux_docker_pandocextra31130alpine]: #alpine-linux-docker-pandocextra31130alpine

```bash
tlmgr install ragged2e datetime fmtcount
```

______


## Quick Start
[heading__quick_start]:
  #quick-start
  "&#9889; Perhaps as easy as one, 2.0,..."


- Follow the [Forking][heading__forking] instructions
- Update the `curriculum-vitae.md` to reflect your personal/professional skills
- Publish to GitHub and/or utilize the `scripts/pandoc-md-to-pdf.sh`


______


## Usage
[heading__usage]:
  #usage
  "&#x1F9F0; How to utilize this repository"


- Create a new PDF CV from MarkDown source
   ```bash
   ./scripts/pandoc-md-to-pdf.sh curriculum-vitae.md curriculum-vitae.pdf
   ```
- Or, overwrite preexisting PDF CV from MarkDown source
   ```bash
   CLOBBER=1 ./scripts/pandoc-md-to-pdf.sh curriculum-vitae.md curriculum-vitae.pdf
   ```


______


## Notes
[heading__notes]:
  #notes
  "&#x1F5D2; Additional things to keep in mind when developing"


This repository may not be feature complete and/or fully functional, Pull
Requests that add features or fix bugs are certainly welcomed.

According to some kind recruiters providing feedback, applicant intake
automation tends to give-up after reading the first ten pages of a PDF!  So
it my be a good idea to keep output to less than that, unless you have a
diverse background spanning decades ;-P


______


## Contributing
[heading__contributing]:
  #contributing
  "&#x1F4C8; Options for contributing to curriculum-vitae and S0AndS0"


Options for contributing to curriculum-vitae and S0AndS0


---


### Forking
[heading__forking]:
  #forking
  "&#x1F531; Tips for forking curriculum-vitae"


Start making a [Fork][curriculum_vitae__fork_it] of this repository to an
account that you have write permissions for.


- Add remote for fork URL. The URL syntax is
  _`git@github.com:<NAME>/<REPO>.git`_...


```Bash
cd ~/git/hub/S0AndS0/curriculum-vitae

git remote add fork git@github.com:<NAME>/curriculum-vitae.git
```


- Commit your changes and push to your fork, eg. to fix an issue...


```Bash
cd ~/git/hub/S0AndS0/curriculum-vitae


git commit -F- <<'EOF'
:bug: Fixes #42 Issue


**Edits**


- `<SCRIPT-NAME>` script, fixes some bug reported in issue
EOF


git push fork main
```


> Note, the `-u` option may be used to set `fork` as the default remote, eg.
> _`git push -u fork main`_ however, this will also default the `fork` remote
> for pulling from too! Meaning that pulling updates from `origin` must be done
> explicitly, eg. _`git pull origin main`_


- Then on GitHub submit a Pull Request through the Web-UI, the URL syntax is
  _`https://github.com/<NAME>/<REPO>/pull/new/<BRANCH>`_


> Note; to decrease the chances of your Pull Request needing modifications
> before being accepted, please check the
> [dot-github](https://github.com/S0AndS0/.github) repository for detailed
> contributing guidelines.


---


### Sponsor
  [heading__sponsor]:
  #sponsor
  "&#x1F4B1; Methods for financially supporting S0AndS0 that maintains curriculum-vitae"


Thanks for even considering it!


Via Liberapay you may
<sub>[![sponsor__shields_io__liberapay]][sponsor__link__liberapay]</sub> on a
repeating basis.


Regardless of if you're able to financially support projects such as
curriculum-vitae that S0AndS0 maintains, please consider sharing projects that
are useful with others, because one of the goals of maintaining Open Source
repositories is to provide value to the community.


______


## Attribution
[heading__attribution]:
  #attribution
  "&#x1F4C7; Resources that where helpful in building this project so far."


- `man --pager='less --pattern="Metadata variables"' pandoc`

- [Docker Hub -- `pandoc/latex`](https://hub.docker.com/r/pandoc/latex)
- [Docker Hub -- `pandoc/extra`](https://hub.docker.com/r/pandoc/extra)
- [GitHub -- `github-utilities/make-readme`](https://github.com/github-utilities/make-readme)
- [GitHub -- `pandoc/dockerfiles`](https://github.com/pandoc/dockerfiles)
- [GitHub -- `pandoc/dockerfiles` -- `alpine`](https://github.com/pandoc/dockerfiles/tree/master/alpine)
- [GitHub -- `pandoc/pandoc-action-example` -- `.github/workflows/advanced.yml`](https://github.com/pandoc/pandoc-action-example/blob/master/.github/workflows/advanced.yml)
- [GitHub Marketplace -- `actions/checkout`](https://github.com/marketplace/actions/checkout)
- [GitHub Marketplace -- `actions/upload-github-pages-artifact`](https://github.com/marketplace/actions/upload-github-pages-artifact)
- [GitHub Marketplace -- `actions/deploy-github-pages-site`](https://github.com/marketplace/actions/deploy-github-pages-site)
- [Stack Overflow -- How do I set an env var with a bash expression in GitHub Actions?](https://stackoverflow.com/questions/57968497/how-do-i-set-an-env-var-with-a-bash-expression-in-github-actions)
- [Stack Overflow -- GitHub Action: Split Long Command into Multiple Lines](https://stackoverflow.com/questions/59954185/github-action-split-long-command-into-multiple-lines)


______


## License
[heading__license]:
  #license
  "&#x2696; Legal side of Open Source"


```
Public CV with CI/CD magics to generate and publish PDF
Copyright (C) 2024 S0AndS0

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```

> For further details review full length version of
> [AGPL-3.0][branch__current__license] License.

The above licence is applicable to the following files;

- `.github/README.md`
- `.github/workflows/md-to-pdf.yaml`
- `.github/workflows/pandoc-extended/Dockerfile`
- `scripts/pandoc-md-to-pdf.sh`

... Files not listed above are instead shared under "All rights reserved"
terms/conditions/licensing agreement.


[branch__current__license]:
  /LICENSE
  "&#x2696; Full length version of AGPL-3.0 License"

[badge__license]:
  https://img.shields.io/github/license/S0AndS0/curriculum-vitae

[badge__commits__curriculum_vitae__main]:
  https://img.shields.io/github/last-commit/S0AndS0/curriculum-vitae/main.svg

[commits__curriculum_vitae__main]:
  https://github.com/S0AndS0/curriculum-vitae/commits/main
  "&#x1F4DD; History of changes on this branch"


[curriculum_vitae__community]:
  https://github.com/S0AndS0/curriculum-vitae/community
  "&#x1F331; Dedicated to functioning code"

[curriculum_vitae__gh_pages]:
  https://github.com/S0AndS0/curriculum-vitae/tree/
  "Source code examples hosted thanks to GitHub Pages!"

[badge__gh_pages__curriculum_vitae]:
  https://img.shields.io/website/https/S0AndS0.github.io/curriculum-vitae/index.html.svg?down_color=darkorange&down_message=Offline&label=Demo&logo=Demo%20Site&up_color=success&up_message=Online

[gh_pages__curriculum_vitae]:
  https://S0AndS0.github.io/curriculum-vitae/index.html
  "&#x1F52C; Check the example collection tests"

[issues__curriculum_vitae]:
  https://github.com/S0AndS0/curriculum-vitae/issues
  "&#x2622; Search for and _bump_ existing issues or open new issues for project maintainer to address."

[curriculum_vitae__fork_it]:
  https://github.com/S0AndS0/curriculum-vitae/fork
  "&#x1F531; Fork it!"

[pull_requests__curriculum_vitae]:
  https://github.com/S0AndS0/curriculum-vitae/pulls
  "&#x1F3D7; Pull Request friendly, though please check the Community guidelines"

[curriculum_vitae__main__source_code]:
  https://github.com/S0AndS0/curriculum-vitae/
  "&#x2328; Project source!"

[badge__issues__curriculum_vitae]:
  https://img.shields.io/github/issues/S0AndS0/curriculum-vitae.svg

[badge__pull_requests__curriculum_vitae]:
  https://img.shields.io/github/issues-pr/S0AndS0/curriculum-vitae.svg

[badge__main__curriculum_vitae__source_code]:
  https://img.shields.io/github/repo-size/S0AndS0/curriculum-vitae






[sponsor__shields_io__liberapay]:
  https://img.shields.io/static/v1?logo=liberapay&label=Sponsor&message=S0AndS0

[sponsor__link__liberapay]:
  https://liberapay.com/S0AndS0
  "&#x1F4B1; Sponsor developments and projects that S0AndS0 maintains via Liberapay"



[badge__github_actions]:
  https://github.com/S0AndS0/curriculum-vitae/actions/workflows/test.yaml/badge.svg?branch=main

[activity_log__github_actions]:
  https://github.com/S0AndS0/curriculum-vitae/deployments/activity_log

