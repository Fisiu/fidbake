<?xml version="1.0"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>${config.site_title}.</title>
    <link>http://${config.site_host}/</link>
    <atom:link href="http://${config.site_host}/feed.xml" rel="self" type="application/rss+xml" />
    <description>${config.site_subtitle}</description>
    <language>en</language>
    <pubDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
    <lastBuildDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</lastBuildDate>

    <#list posts as post>
      <item>
        <title>${post.title}</title>
        <link>http://${config.site_host}${post.uri}</link>
        <pubDate>${post.date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
        <guid isPermaLink="false">${post.uri}</guid>
        <description>
          <#escape x as x?xml>
	        ${post.body}
	      </#escape>
	    </description>
      </item>
    </#list>
  </channel> 
</rss>
