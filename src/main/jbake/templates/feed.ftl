<?xml version="1.0"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>${config.site_title}.</title>
    <link>http://${config.site_host}/</link>
    <atom:link href="http://${config.site_host}/feed.xml" rel="self" type="application/rss+xml" />
    <description>${config.site_subtitle}</description>
    <language>en</language>
    <#assign pub_date = published_date?datetime?string.medium>
    <pubDate>${pub_date}</pubDate>
    <lastBuildDate>${pub_date}</lastBuildDate>

    <#list published_posts as post>
      <item>
        <title><#escape x as x?xml>${post.title}</#escape></title>
        <author>${config.meta_author}</author>
        <link>http://${config.site_host}${post.uri}</link>
        <pubDate>${post.date?datetime?string.medium}</pubDate>
        <guid isPermaLink="false">${post.uri}</guid>
        <description>
          <#escape x as x?xml>${post.body}</#escape>
        </description>
      </item>
    </#list>
  </channel> 
</rss>
