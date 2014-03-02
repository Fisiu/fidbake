<#include "header.ftl">
<#include "menu.ftl">
      
      <div class="post">
        <div class="page-header"><h1>${content.title}</h1></div>
          <p class="post-meta"><i class="fa fa-calendar"></i>&nbsp;${content.date?string("dd MMMM yyyy")}&nbsp;&nbsp;
          <#if config.meta_author?has_content>
          <i class="fa fa-user"></i>&nbsp;${config.meta_author}&nbsp;&nbsp;
          </#if>
          <i class="fa fa-comment"></i>&nbsp;Counter
          </p>
          <p>${content.body}</p>
      </div>
      <hr>
      <#include "share.ftl">
        
<#include "footer.ftl">