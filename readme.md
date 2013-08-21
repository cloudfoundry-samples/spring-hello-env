Sample application that shows how Cloud Foundry exposes service information to Spring applications.

Installation
============
<!-- language: lang-sh -->

    mvn clean install -DskipTests
    cf push

Proxy settings
--------------
Your private CFv2 instance could be behind a proxy. 

Without modification you will get FileNotFoundException "META-INF/cloud/cloudfoundry-auto-reconfiguration-context.xml" while starting java application (or timeout while git clone buildpack).

In this case uncomment http_proxy and/or https_proxy env settings into manifest.yml.

Usage
=====
Go onto the URL provided by cloudfoundry. you should see an "Hello world!" page.

This page include the (internal) IP/port used by cloudfoundry components.

By scaling your app you could ask many time the same page to see another instance ip/port.
<!-- language: lang-sh -->

    cf scale spring-env
    Using manifest file manifest.yml
    
    Instances> 4
    Memory Limit> 256M
    Scaling spring-env... OK

The "/env" context path will show the full environment vars.
