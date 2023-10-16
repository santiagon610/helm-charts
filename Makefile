
webapp:
	helm lint webapp
	helm package webapp
	helm repo index --url https://ml-alpha.github.io/helm-charts .

celworker:
	helm lint celworker
	helm package celworker
	helm repo index --url https://ml-alpha.github.io/helm-charts .