<#include "header.ftl">
<#include "menu.ftl">

	    <div class="row">
        <#if config.sidebar_enabled?? && config.sidebar_enabled == "true">
          <div class="col-md-9">
        <#else>
          <div class="col-md-12">
        </#if>

            <article>
			  <h2>Tag #${tag?trim?replace(" ", "-")}</h2>
			  <hr>
              <#list tag_posts?sort_by("date")?reverse as post>
			    <#if (last_month)??>
				  <#if post.date?string("MMMM yyyy") != last_month>
              </ul>
			  <h4 class="well well-sm tag-month">${post.date?string("MMMM yyyy")}</h4>
              <ul>
				  </#if>
				<#else>
              <h4 class="well well-sm tag-month">${post.date?string("MMMM yyyy")}</h4>
              <ul>
                </#if>
			    <#assign last_month = post.date?string("MMMM yyyy")>
                <li>
                  <p>${post.date?string("dd")} - <a href="${post.uri}">${post.title}</a></p>
                </li>
			  </#list>
              </ul>
		    </article>

	      </div> <!-- /.col-md -->
          <#if config.sidebar_enabled?? && config.sidebar_enabled == "true">
            <#include "sidebar.ftl">
          </#if>
        </div> <!-- /.row -->


<#include "footer.ftl">

