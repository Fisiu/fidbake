<#include "header.ftl">
<#include "menu.ftl">

        <div class="row">
        <#if config.sidebar_enabled?? && config.sidebar_enabled == "true">
          <div class="col-md-9">
        <#else>
          <div class="col-md-12">
        </#if>
        <#list posts as post>
          <#if post.status == "published">
            <#assign marker = config.post_summary_marker>
            <#assign max = post.body?index_of(marker)>
            <#if max == -1>
              <#assign short = post.body?string>
              <#assign need_more = false>
            <#else>
              <#assign short = post.body?substring(0, max)>
              <#assign need_more = true>
            </#if>
            <article>
              <h2><a href="${post.uri}">${post.title}</a></h2>
            <#assign date = post.date>
            <#assign url = post.uri>
            <#include "post-meta.ftl">
              <p>${short}</p>
            <#if need_more>
              <a href="${post.uri}" class="btn btn-info btn-sm read-more">${config.tr_read_more} <i class="fa fa-arrow-right"></i></a>
            </#if>
              <br>
            </article>
          </#if>
        </#list>
          </div> <!-- /.col-md9/12 -->
          <#if config.sidebar_enabled?? && config.sidebar_enabled == "true">
            <#include "sidebar.ftl">
          </#if>
        </div> <!-- /.row -->

<#include "footer.ftl">
