# Create a Helm Chart

Using tools and information available on the web, create a Helm chart.

## Challenge

1. create a helm chart called "challenge-chart"
2. add an input in the chart for setting an environment variable to the container running in the pod deployed by the helm chart. 
   1. The input should be titled `env_variable` with a value of `Hi mom! I am in a container!`
   2. The input should be ingested in the deployment's template file for its container spec
      1. name: `ENV_VARIABLE`
      2. value: `env_variable` input

## Validation

Using Helm cli commands, view helm template output. The output should show the environment variable being set in the deployment's container spec.
