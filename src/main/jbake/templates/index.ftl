<#include "header.ftl">
<#include "menu.ftl">

      <div class="jumbotron">
        <h1>Bake your own site!</h1>
        <p class="lead">This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
        <a class="btn btn-large btn-success" href="#">Sign up today</a>
      </div>
      <hr>
      <div class="row-fluid marketing">
        <div class="span12">
          <#list posts as post>
            <#if post.status == "published">
              <#assign limit = config.post_summary_length?number>
              <#assign max=post.body?length>
              <#if (limit < max)>
                <#assign max = limit>              
              </#if>
              <#assign short = post.body?substring(0, max)>
              <h4><a href="${post.uri}">${post.title}</a></h4>
              <#assign date = post.date?string("dd MMMM yyyy")>
              <p>${date}</p>
              <p>${short}</p>
              <#if post_index = 2>
              <#break>
              </#if>
            </#if>
          </#list>
        </div>
      </div>
      <hr>

<#include "footer.ftl">