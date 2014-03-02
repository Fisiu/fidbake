      <nav class="navbar navbar-default navbar-fixed-top <#if config.site_nav_inverse=="true">navbar-inverse</#if>" role="navigation">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">${config.site_title}</a>
          </div>
          
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
              <li><a href="/pages/about.html">About me</a></li>
              <li><a href="/pages/contact.html">Contact</a></li>
            </ul>
          
          <!-- Right navigation -->
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/archive.html"><i class="fa fa-list"></i> Archive</a></li>
            <li><a href="/${config.feed_file}" title="Rss"><i class="fa fa-rss"></i> </a></li>
            <#if config.login_twitter?has_content>
              <li><a href="//twitter.com/${config.login_twitter}" title="Twitter"><i class="fa fa-twitter-square"></i></a></li>
            </#if>
            <#if config.login_github?has_content>
              <li><a href="//github.com/${config.login_github}" title="Github"><i class="fa fa-github-square"></i></a></li>
            </#if>
          </ul>
          <!-- Right navigation end -->

        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav><!-- /.navbar -->

      <!-- Begin page content -->
      <div class="container">
