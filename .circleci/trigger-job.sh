curl -u ${CIRCLE_API_USER_TOKEN}: \
     -d build_parameters[CIRCLE_JOB]=build_container \
     https://circleci.com/api/v1.1/project/github/miquecg/elixir-ide/tree/master
