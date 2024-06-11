FROM jenkins/jenkins:lts-jdk17

USER jenkins

ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG=/var/jenkins_home/casc_configs/jenkins.yaml

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY jenkins.yaml /var/jenkins_home/casc_configs/jenkins.yaml
COPY job_seed.groovy /usr/local/job_seed.groovy

RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt
