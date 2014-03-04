      <div id="sidebar" class="col-md-3">
        <aside>
          <section>
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-users fa-lg"> Social</i></h3>
              </div>
              <div class="list-group sidebar-list">
                <#if config.sidebar_github?has_content && config.sidebar_github == "true">
                <#assign url = "https://github.com/" + config.login_github>
                  <a href="${url}" target="_blank" class="list-group-item sidebar-list-item">
                    <i class="fa fa-github-square fa-2x social-icon"></i> github
                  </a>
                </#if>
                <#if config.sidebar_twitter?has_content && config.sidebar_twitter == "true">
                <#assign url = "https://twitter.com/" + config.login_twitter>
                  <a href="${url}" target="_blank" class="list-group-item sidebar-list-item">
                    <i class="fa fa-twitter-square fa-2x social-icon"></i> twitter
                  </a>
                </#if>
                <#if config.sidebar_googleplus?has_content && config.sidebar_googleplus == "true">
                <#assign url = "https://plus.google.com/+" + config.login_googleplus>
                  <a href="${url}" target="_blank" class="list-group-item sidebar-list-item">
                    <i class="fa fa-google-plus-square fa-2x social-icon"></i> google+
                  </a>
                </#if>
              </div>
            </div>
            <#if config.sidebar_staticbox?? && config.sidebar_staticbox == "true">
            <div class="panel panel-primary static-box">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-info-circle fa-lg"> ${config.sidebar_staticbox_title}</i></h3>
                </div>
                <div class="panel-body">
                    <#if config.sidebar_staticbox_content?has_content>
                        <#assign static_content = config.sidebar_staticbox_content>
                    <#else>
                        <#assign static_content = '<a href="http://en.opensuse.org/Portal:13.1"><img src="http://countdown.opensuse.org/small.png" border="0"/></a>'>
                    </#if>
                    <p>${static_content}</p>
                </div>
            </div>
            </#if>
          </section>
        </aside>
      </div>
