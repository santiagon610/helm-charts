URL="https://ml-alpha.github.io/helm-charts"

webapp.build:
	helm lint webapp
	helm package webapp
	helm repo index --url $(URL) .

celworker.build:
	helm lint celworker
	helm package celworker
	helm repo index --url $(URL) .