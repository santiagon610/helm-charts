URL=https://ml-alpha.github.io/helm-charts
webapp:
	helm lint webapp
	helm package webapp
	helm repo index --url $(URL) .

celworker:
	helm lint celworker
	helm package celworker
	helm repo index --url $(URL) .