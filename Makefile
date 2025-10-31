deploy: 
	kubectl apply -f k8s/

clean: 
	kubectl delete namespace dn-dbt-spark dn-dbt --ignore-not-found=true