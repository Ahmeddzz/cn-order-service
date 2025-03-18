# Build the Docker image using Maven and custom build in Tilt
custom_build(
    # Name of the container image
    ref = 'catalog-service',

    # Maven command to package the JAR and build the Docker image
    command = '''
        mvn clean package -DskipTests && \
        docker build -t %EXPECTED_REF% .
    ''',

    # Files to watch that trigger a rebuild
    deps = ['pom.xml', 'src']
)

# Deploy Kubernetes YAML files (Deployment + Service)
k8s_yaml(['k8s/deployment.yml', 'k8s/service.yml'])

# Define Kubernetes resource and port forwarding
k8s_resource('catalog-service', port_forwards=['9001'])
