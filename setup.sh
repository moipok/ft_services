minikube start --vm-driver=virtualbox

eval $(minikube docker-env)

# metallb
minikube addons enable metallb
kubectl apply -f ./srcs/metallb.yaml

# build nginx
docker build -t nginx srcs/nginx/.

kubectl apply -f ./srcs/nginx/nginx-service.yaml
kubectl apply -f ./srcs/nginx/nginx-deployment.yaml

# build mysql
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

minikube dashboard