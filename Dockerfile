FROM gableroux/unity3d:2019.2.16f1

LABEL "com.github.actions.name"="Unity Runner"
LABEL "com.github.actions.description"="Run unity any Unity project."
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/MirrorNG/unity-runner"
LABEL "homepage"="http://github.com/MirrorNG/unity-runner"
LABEL "maintainer"="Paul Pacheco <paulpach@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
