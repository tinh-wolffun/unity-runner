FROM gableroux/unity3d:2019.3.0f1

LABEL "com.github.actions.name"="Unity Runner"
LABEL "com.github.actions.description"="Run unity any Unity project."
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/MirrorNG/unity-runner"
LABEL "homepage"="http://github.com/MirrorNG/unity-runner"
LABEL "maintainer"="Paul Pacheco <paulpach@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ADD activate.sh /activate.sh
ADD request_activation.sh /request_activation.sh
RUN chmod +x /entrypoint.sh
RUN chmod +x /activate.sh
RUN chmod +x /request_activation.sh

ENTRYPOINT ["/entrypoint.sh"]
