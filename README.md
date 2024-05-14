

[Ref-Artifact](https://artifacthub.io/packages/helm/bitnami/keycloak)

[Ref-Git](https://github.com/bitnami/charts/tree/main/bitnami/keycloak)

`helm install keycloak bitnami/keycloak --values values.yaml`

`helm lsit`

`helm delete keycloak`

`kubectl exec -it my-keycloak-postgresql-primary-0 -- psql -U bn_keycloak -d bitnami_keycloak`

`kubectl exec -it my-keycloak-postgresql-primary-0 -- psql -U postgres`

`sed -i '/^\s*##/d' draft-values.yaml`


`kubectl exec -it keycloak-0 -- /bin/bash`

Connect to the bitnami_keycloak database\
`\c bitnami_keycloak`

Once you're connected to the bitnami_keycloak database, you can list all the tables in it using the following command.\
`\dt`

Retrieve information about users from this table\
`SELECT * FROM your_table;`

