KSM_IMAGE_VERSION="v2.10.0" && curl -X POST https://k8s-config-generator.service.newrelic.com/generate -H 'Content-Type: application/json' -d '{"global.cluster":"myMinikube", "global.namespace":"newrelic", "newrelic-infrastructure.privileged":"true", "global.lowDataMode":"true", "kube-state-metrics.image.tag":"'${KSM_IMAGE_VERSION}'", "kube-state-metrics.enabled":"true", "kubeEvents.enabled":"true", "newrelic-prometheus-agent.enabled":"true", "newrelic-prometheus-agent.lowDataMode":"true", "newrelic-prometheus-agent.config.kubernetes.integrations_filter.enabled":"false", "logging.enabled":"true", "newrelic-logging.lowDataMode":"true", "global.licenseKey": "ea880776bb9c3383ac52b514da5d4900FFFFNRAL"}' > newrelic.yaml && (kubectl create namespace newrelic ; kubectl apply -f newrelic.yaml)

