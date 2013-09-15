title=ingenieux Beanstalker Docs Hub
date=2013-09-15
type=page
status=published
~~~~~~

ingenieux Beanstalker is our set of [Apache Maven](http://maven.apache.org/) plugins for [Amazon Web Services](http://aws.amazon.com) (AWS), which lets you effectively use Maven to:

  * Manage [AWS Elastic Beanstalk](http://aws.amazon.com/elasticbeanstalk/) Applications
  * Integrate your build with SimpleDB, S3 and CloudFront

## Getting Started

In order to effectively use beanstalker, you need to have a basic understanding of Apache Maven and AWS Elastic Beanstalk.

### Basic Level

Here are the basic beanstalker usage instructions:

  * [Configuring your AWS Credentials](aws-config.html)
  * [Configuring your pom](pom-config.html) or [Using the Archetype](using-the-archetype.html)
  * Deploying your Application, [using s3](deploying-using-s3.html) or [using git](using-git.html)
  * [Updating your Environments](environment-update.html)

### Intermediary Level

Once you've gotten the essentials, you can:

  * [Decide on a CI Strategy](strategy.html)
  * [Manage Environment Configuration](configuration.html)
  * [Use Environment Awarenes](environment-awareness.html)

### Advanced

  * [Use Zero-Downtime Deployments](zero-downtime-deployments.html)
  * [CloudFront](using-cloudfront.html)
  * [SimpleDB](using-simpledb.html)

## Reference

Use these as reference URLs:

  * [Mojo Reference](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/plugin-info.html)
  * [Source Code Repository](http://bitbucket.org/aldrinleal/beanstalker)
    * [GitHub Mirror](http://github.com/ingenieux/beanstalker)
  * [Issue Tracking is Kept on Github](http://github.com/ingenieux/beanstalker/issues)

## Troubleshooting beanstalker

See the [troubleshooting page](troubleshooting.html)