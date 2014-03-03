<#include "header.ftl">
<#include "menu.ftl">
      
      <div class="row">
        <div class="col-md-12">
          <article>
            <div class="page-header"><h1>${content.title}</h1></div>
              <#assign date = content.date>
              <#if config.disqus_enabled?? && config.disqus_enabled == "true">
                <#assign url = content.uri>
              </#if>
              <#include "post-meta.ftl">
              <p>${content.body}</p>
              <#include "share.ftl">
              <#if config.disqus_enabled?? && config.disqus_enabled == "true">
                <#include "comments.ftl">
              </#if>
            </article>
        </div> <!-- /.col-md-12 -->
      </div> <!-- /.row -->
        
<#include "footer.ftl">