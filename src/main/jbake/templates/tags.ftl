<#include "header.ftl">

	<div class="row-fluid marketing">
		<div class="span12">
			<h2>Tags</h2>
			<#list posts as post>
				<#if (last_month)??>
					<#if post.date?string("MMMM yyyy") != last_month>
						<h3>${post.date?string("MMMM yyyy")}</h3>
					</#if>
				<#else>
					<h3>${post.date?string("MMMM yyyy")}</h3>
				</#if> 
				
				<h4>${post.date?string("dd MMMM")} - <a href="${post.uri}">${post.title}</a></h4>
				<#assign last_month = post.date?string("MMMM yyyy")>
			</#list>
		</div>
	</div>

	<hr>

<#include "footer.ftl">