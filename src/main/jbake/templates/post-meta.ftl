          <p class="post-meta">
            <i class="fa fa-calendar"></i>&nbsp;${date?string("dd MMMM yyyy")}&nbsp;&nbsp;
            <#if config.meta_author?has_content>
            <i class="fa fa-user"></i>&nbsp;${config.meta_author}&nbsp;&nbsp;
            </#if>
            <#if config.disqus_enabled?? && config.disqus_enabled == "true">
              <i class="fa fa-comment"></i>&nbsp;<span class="badge"><a href="http://${config.site_host}${url}#disqus_thread"></a></span>
            </#if>
          </p>
