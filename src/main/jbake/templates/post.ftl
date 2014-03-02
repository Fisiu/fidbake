<#include "header.ftl">
<#include "menu.ftl">
      
      <div class="row">
        <div class="col-md-12">
          <article>
            <div class="page-header"><h1>${content.title}</h1></div>
              <#assign date = content.date>
              <#include "post-meta.ftl">
              <p>${content.body}</p>
              <#include "share.ftl">
            </article>
        </div> <!-- /.col-md-12 -->
      </div> <!-- /.row -->
        
<#include "footer.ftl">