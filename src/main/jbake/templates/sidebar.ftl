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
          </section>
        </aside>
      </div>
