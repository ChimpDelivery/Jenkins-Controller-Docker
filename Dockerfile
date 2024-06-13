FROM jenkins/jenkins:lts-jdk17

ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG=/var/jenkins_home/casc_configs/jenkins.yaml

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY --chown=jenkins:jenkins jenkins.yaml /var/jenkins_home/casc_configs/jenkins.yaml
COPY --chown=jenkins:jenkins job_seed.groovy /usr/local/job_seed.groovy

USER jenkins
RUN jenkins-plugin-cli --verbose --plugin-file /usr/share/jenkins/ref/plugins.txt
