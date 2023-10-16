webapp:
	helm lint webapp
	helm package webapp
	helm repo index --url https://mlalpha.github.io/helm-charts .