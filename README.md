# run-minecraft-server-container

Test repository for starting Minecraft servers in containers in GitHub actions.

Inspiration:
https://help.github.com/en/actions/building-actions/creating-a-docker-container-action
https://github.com/itzg/docker-minecraft-server
https://help.github.com/en/actions/configuring-and-managing-workflows/about-service-containers
https://help.github.com/en/actions/configuring-and-managing-workflows/creating-postgresql-service-containers
https://help.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idservices
https://github.com/itzg/mc-monitor
https://github.com/actions/example-services/blob/master/.github/workflows/redis-service.yml
https://stackoverflow.com/questions/57549439/how-do-i-use-docker-with-github-actions

https://dev.to/s_abderemane/how-to-use-docker-services-in-github-actions-6ce
https://github.com/peter-evans/docker-compose-actions-workflow
https://github.community/t5/GitHub-Actions/Github-Actions-services-not-reachable/td-p/30050
https://docs.docker.com/engine/reference/commandline/create/#options
https://github.com/itzg/docker-minecraft-server/blob/master/examples/docker-compose-forge.yml
https://ryaneschinger.com/blog/using-docker-native-health-checks/
https://testdriven.io/blog/deploying-django-to-digitalocean-with-docker-and-github-actions/
https://github.com/peter-evans/docker-compose-healthcheck
https://ryaneschinger.com/blog/using-docker-native-health-checks/
https://www.datanovia.com/en/courses/docker-compose-wait-for-dependencies/

https://project-awesome.org/sdras/awesome-actions#collection-of-actions
https://github.com/jakejarvis/wait-action
https://github.com/Eficode/wait-for
https://github.com/vishnubob/wait-for-it
https://docs.docker.com/compose/startup-order/
https://hub.docker.com/r/itzg/minecraft-server/dockerfile/

https://www.edwardthomson.com/blog/github_actions_9_deploy_to_github_packages.html
https://dev.to/kenessajr/deploy-a-react-app-to-digitalocean-using-github-actions-and-docker-4pln
https://github.community/t5/GitHub-Actions/Cache-a-Docker-image-built-in-workflow/td-p/31805
https://github.com/marketplace/actions/build-docker-images-using-caches

Building with buildkit to avoid issue 3639
https://github.com/moby/moby/issues/3639
https://qiita.com/homines22/items/6d28461d97906e42f57c
https://github.com/docker/github-actions/blob/826b584752ffa6abc1a2d94da26f348e3e4f73d0/.github/workflows/main.yml#L27
