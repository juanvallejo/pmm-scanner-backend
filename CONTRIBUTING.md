Contributing Guide
==================

## Project structure

This project is structured into multiple components, the roots of which reside immediately under the `pkg` directory.

```
pkg/
├── server/
├── webclient/
└── api/
```

### Server

The server component consists of a simple HTTP server, which serves the `api` and `webclient` components.
Any URL requests made to the `/api` endpoints, cause files under the `api` directory to be served.
Any URL requests made to the `/webclient` endpoint cause files under the `webclient` directory to be served.
In order to simplify having a homepage, any requests made to the `/` endpoint, serve index files from `/webclient`.

### Webclient

This directory contains all of the files associated with the web frontend. If a frontend framework (such React.js)
is chosen, project contributors should do their best to ensure that the project sticks to that framework, and that
no more than one framework is in use at a given time.

It is expected that initial development will see any development under the `webclient` tree happen under this repository.
However, once development of this component evolves, it is likely that a repo of its own will be created, and development
will entirely occur in that repo.

## Pull requests

Please keep pull requests to this repo short and concise. Pull requests should focus on one feature, and changes that are
part of a pull request should be split into separate commits, according to logical groups of changes.

### Set up local environment

Before beginning development, ensure your local environment is adequately set up to begin contributing:

1. Fork this repository if you have not already done so
2. Ensure your `$GOPATH` is set up properly: [https://github.com/golang/go/wiki/SettingGOPATH](https://github.com/golang/go/wiki/SettingGOPATH)
3. Clone the fork of this repo into your local environment
  - `mkdir -p $GOPATH/src/github.com/pcse`
  - `cd $GOPATH/src/github.com/pcse`
  - `git clone <url_of_your_fork>` (e.g `git clone https://github.com/GITHUB_USERNAME/pmm-scanner-backend`)
4. `cd pmm-scanner-backend`
5. Setup your upstream repository
  - `git remote add upstream https://github.com/pcse/pmm-scanner-backend`
6. Ensure the output of the command `git remote -v` is as follows:
  - origin `<url to your fork of this repo>` (fetch)
  - origin `<url to your fork of this repo>` (push)
  - upstream https://github.com/pcse/pmm-scanner-backend (fetch)
  - upstream https://github.com/pcse/pmm-scanner-backend (push)

### Opening a pull request

Any time you begin working on a new contribution, make sure your master branch is up to date with the latest changes:

1. `git checkout master`
2. `git pull upstream master`

Remember to _not_ use your `master` branch for development. Always try to begin making your changes in a new feature branch:

1. `git checkout -b my-new-contribution`

Once you have committed your changes locally, and are ready to open a pull request, push your branch's changes to your fork of the repo (if you have followed the above steps, `origin` should point to it):

1. `git push origin my-new-contribution` (replace `my-new-contribution` with the actual name you gave your branch).
2. You can now open a pull request by going to https://github.com/pcse/pmm-scanner-backend and clicking on the `New pull request` button.
3. Make your pull request against the `master` branch of the upstream repository.

If you have any questions, or need help setting up your local environment, don't hesitate to ask in our Slack channel. See the [Obtaining help](#obtaining-help) section for more info on this.

## Development / IDE

We recommend using [Goland](https://www.jetbrains.com/go/) for Go development, however you are free to ultimately use any editor you prefer.
Please ensure you conform to the project's formatting expectations outlined below:

- Always run [gofmt](https://golang.org/cmd/go/#hdr-Gofmt__reformat__package_sources) on any files that you've changed before opening a pull request.
  - `go fmt /path/to/package`
- If your changes introduce new behavior, ensure that the new behavior contains tests.
- Attempt to run tests locally before opening a pull request.

## Obtaining help

Feel free to ask for help or guidance in the [CNU Linux Users Group Slack channel](https://cnulinuxusersgroup.slack.com)
