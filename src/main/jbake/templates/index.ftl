<#include "header.ftl">
<#include "menu.ftl">

        <div class="row">
        <#if config.sidebar_enabled?? && config.sidebar_enabled == "true">
          <div class="col-md-9">
        <#else>
          <div class="col-md-12">
        </#if>

            <div class="jumbotron">
              <h1>Bake your own site!</h1>
              <p class="lead">This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
              <a class="btn btn-large btn-success" href="#">Sign up today</a>
            </div> <!-- /.jumbotron -->
            <hr>
            <div class="row-fluid">
              <div class="span12">
                <#list posts as post>
                  <#if post.status == "published">
                    <#assign limit = config.post_summary_length?number>
                    <#assign max=post.body?length>
                    <#if (limit < max)>
                      <#assign max = limit>
                    </#if>
                    <#assign short = post.body?substring(0, max)>
                    <h2><a href="${post.uri}">${post.title}</a></h2>
                    <#assign date = post.date>
                    <#include "post-meta.ftl">
                    <p>${short}</p>
                    <#if post_index = 2>
                    <#break>
                    </#if>
                  </#if>
                </#list>
              </div>
            </div> <!-- /.row-fluid -->
      
          </div> <!-- /.col-md -->

          <#if config.sidebar_enabled?? && config.sidebar_enabled == "true">
            <#include "sidebar.ftl">
          </#if>
      
        </div> <!-- /.row -->

<#include "footer.ftl">