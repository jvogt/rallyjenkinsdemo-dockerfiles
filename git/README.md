Simple sshd container that allows unauthenticated r/w as user `git`.  Prebakes the repo at https://github.com/jvogt/rallyjenkinsdemo-sampleapp.

NOTE: if rebuilding with a newer version of the above repo, modify the CACHEBUSTER value to trigger docker to re-run the repo script.

Shamelessly stolen from https://github.com/jkarlosb/git-server-docker
