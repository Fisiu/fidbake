title=Managing Environments
date=2013-02-27
type=page
status=published
disqus=true
~~~~~~

### Creating an Environment

Use [create-enviroment](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/dump-instances-mojo.html):

    $ mvn beanstalk:create-environment -Dbeanstalk.environmentName=<environmentName> -Dbeanstalk.cnamePrefix=<cnamePrefix> -Dbeanstalk.solutionStack="64bit Amazon Linux running Tomcat 7"
    
### Terminate an Environment

Use [terminate-environment](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/terminate-environment-mojo.html):

    $ mvn beanstalk:terminate-environment -Dbeanstalk.cnamePrefix=mywebapp