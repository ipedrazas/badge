# Badge

Who does not love a pretty svg badge? The idea behind this project is to validate how useful is to have a visual cue of how old the base image(s) of your Dockerfile are. From newest to oldest, this is the general idea:

[![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerfile-age-badge/hexops/dockerfile)](https://github.com/ipedrazas/badge)

[![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerfile-age-badge/ipedrazas/badge)](https://github.com/ipedrazas/badge)

[![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerfile-age-badge/docker/docker.github.io/master)](https://github.com/ipedrazas/badge)

[![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerfile-age-badge/cloud66-oss/habitus/master)](https://github.com/ipedrazas/badge)

We agree that time is relative, there's no discussion about it, however, what does it mean that a `Docker` image is old? time does not really provides an idea of the quality of the image, however, we know that the oldest a system gets, the hardest to update/maintain/support it. I'm not sure if there's a graph where you can see Number od CVEs as a function of time, but, the oldest something gets, the worst it turns (yes, I'm speaking from the experience of getting old and hating it 😹) so, that's it, that's the reason to have these little badges, because I don't remember how old I am 😱, and certainly I cannot remember the age of my Docker Images.


## Other kind of badges

[![GitHub issues](https://img.shields.io/github/issues/webdevops/Dockerfile.svg)](https://github.com/webdevops/Dockerfile/issues)
[![GitHub forks](https://img.shields.io/github/forks/webdevops/Dockerfile.svg)](https://github.com/webdevops/Dockerfile/network)
[![GitHub stars](https://img.shields.io/github/stars/webdevops/Dockerfile.svg)](https://github.com/webdevops/Dockerfile/network)


## How to use the badges?

It's very simple, you just need to add a bit of markdown to your `README.md`. No registration, no tracking, nothing, just a little svg badge.

There are 3 parameters you have to specify:

- Github User
- Github Repo
- Repo branch (if it's not `main`)

The only condition, so far, it's that the repo needs to have a `Dockerfile` called as such in the root of the project. Yes, there's some work planned to make it configurable, but for now, default location it is 😃

Then you constuct the markdown as follows:

```
![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerfile-age-badge/[USER]/[REPO]/[BRANCH])
```

and that's it, you have your badge!

As you probably have noticed, yes, you can display a badge from a repo that it's not your own. The idea was that you could create a "badge dashboard?" where you could see the age of the base images of all your projects 😮 the only thing that you need is to know the user, the repo and the branch.

In fact, in this page I'm displaying badges for the following projects:

- [![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerfile-age-badge/hexops/dockerfile)](https://github.com/hexops/dockerfile)  [hexops/dockerfile](https://github.com/hexops/dockerfile)
- [![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerfile-age-badge/ipedrazas/badge)](https://github.com/ipedrazas/badge)  [ipedrazas/badge](https://github.com/ipedrazas/badge)
- [![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerfile-age-badge/docker/docker.github.io/master)](https://github.com/ipedrazas/badge) [docker/docker.github.io](https://github.com/docker/docker.github.io)
- [![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerfile-age-badge/cloud66-oss/habitus/master)](https://github.com/ipedrazas/badge) [cloud66-oss/habitus](https://github.com/cloud66-oss/habitus)

## What's next?

Parsing a `Dockerfile` is an interesting task. I do think there's value on having visual signals that help us to understand better the situation of a system, so, I'm all down for these kind of little visual cues.

However, a `Dockerfile` can use more than one image (Multi-stage docker builds are awesome), so, there's some ideas of how to create a "stack of badges?"
a badge of a stack? I don't know, I'm open to suggestions, but having a list of the Docker images a `Dockerfile` uses and displaying it as a badge is very handy for visual people like me.

I guess that I could expose the API to pass the Docker image instead and let users craft their own stack... however, since I'm the only user so far and I'm quite lazy, I think that passing a Dockerfile and letting some automation do the hard work is nicer, because let's face it, I will change the Dockerfile, I will forget to update the badges and there you have it, stale documentation again...

[![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerimage-age-badge/starefossen/github-pages:198)](https://github.com/docker/docker.github.io)

[![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerimage-age-badge/alpine)](https://github.com/docker/docker.github.io)

[![Dockerfile image badge](https://badge-c978et8lf73onu36rj30.apps.playground.napptive.dev/dockerimage-age-badge/nginx:mainline-alpine)](https://github.com/docker/docker.github.io)


Anyway, let me know what do you think 🙌
