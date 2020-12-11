minikube start --vm-driver=virtualbox

eval $(minikube docker-env)

# metallb
minikube addons enable metallb
kubectl apply -f ./srcs/metallb.yaml

# build nginx
docker build -t nginx srcs/nginx/.

kubectl apply -f ./srcs/nginx/nginx-service.yaml
kubectl apply -f ./srcs/nginx/nginx-deployment.yaml

# # build mysql
docker build -t mysql ./srcs/mysql/

kubectl apply -f ./srcs/mysql/mysql-deployment.yaml
kubectl apply -f ./srcs/mysql/mysql-volume.yaml
kubectl apply -f ./srcs/mysql/mysql-service.yaml

# build wordpress
docker build -t wordpress ./srcs/wordpress/

kubectl apply -f ./srcs/wordpress/wordpress-deployment.yaml
kubectl apply -f ./srcs/wordpress/wordpress-service.yaml

# build phpmyadmin
docker build -t phpmyadmin ./srcs/phpmyadmin/
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin-deployment.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin-service.yaml

docker build -t influxdb ./srcs/influxdb/
kubectl apply -f srcs/influxdb/influxdb.yaml
kubectl apply -f srcs/influxdb/influxdb-pv.yaml

# build grafana
docker build -t grafana ./srcs/grafana
kubectl apply -f ./srcs/grafana/grafana-deployment.yaml
kubectl apply -f ./srcs/grafana/grafana-service.yaml

# ftps
docker build -t ftps ./srcs/ftps

kubectl apply -f ./srcs/ftps/ftps-deployment.yaml
kubectl apply -f ./srcs/ftps/ftps-service.yaml

minikube dashboard