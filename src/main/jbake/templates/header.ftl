<!DOCTYPE html>
<html lang="en">
  <head>
    <title>
    ${config.site_title}
      <#if (content.title)??>
        - ${content.title}
      </#if>
    </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="${config.meta_author}">
    <meta name="description" content="${config.meta_description}">

    <!-- Style -->
<#if config.site_theme?has_content>
  <#switch config.site_theme>
    <#case "amelia">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/amelia/bootstrap.min.css">
      <#break>
    <#case "cerulean">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/cerulean/bootstrap.min.css">
      <#break>
    <#case "cosmo">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/cosmo/bootstrap.min.css">
      <#break>
    <#case "cyborg">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/cyborg/bootstrap.min.css">
      <#break>
    <#case "flatly">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/flatly/bootstrap.min.css">
      <#break>
    <#case "journal">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/journal/bootstrap.min.css">
      <#break>
    <#case "lumen">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/lumen/bootstrap.min.css">
      <#break>
    <#case "readable">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/readable/bootstrap.min.css">
      <#break>
    <#case "simplex">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/simplex/bootstrap.min.css">
      <#break>
    <#case "slate">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/slate/bootstrap.min.css">
      <#break>
    <#case "spacelab">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/spacelab/bootstrap.min.css">
      <#break>
    <#case "superhero">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/superhero/bootstrap.min.css">
      <#break>
    <#case "united">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/united/bootstrap.min.css">
      <#break>
    <#case "yeti">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/yeti/bootstrap.min.css">
      <#break>
    <#default>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
      <#break>
  </#switch>
<#else>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
</#if>
<#if config.prettify_enabled?? && config.prettify_enabled == "true">
    <#switch config.prettify_theme>
      <#case "github">
    <link rel="stylesheet" href="/css/prettify-themes/github.css">
        <#break>
      <#case "hemisu-dark">
    <link rel="stylesheet" href="/css/prettify-themes/hemisu-dark.css">
        <#break>
      <#case "hemisu-light">
    <link rel="stylesheet" href="/css/prettify-themes/hemisu-light.css">
        <#break>
      <#case "tomorrow-night-blue">
    <link rel="stylesheet" href="/css/prettify-themes/tomorrow-night-blue.css">
        <#break>
      <#case "tomorrow-night-bright">
    <link rel="stylesheet" href="/css/prettify-themes/tomorrow-night-bright.css">
        <#break>
      <#case "tomorrow-night-eighties">
    <link rel="stylesheet" href="/css/prettify-themes/tomorrow-night-eighties.css">
        <#break>
      <#case "tomorrow-night">
    <link rel="stylesheet" href="/css/prettify-themes/tomorrow-night.css">
        <#break>
      <#case "tomorrow">
    <link rel="stylesheet" href="/css/prettify-themes/tomorrow.css">
        <#break>
      <#case "vibrant-ink">
    <link rel="stylesheet" href="/css/prettify-themes/vibrant-ink.css">
        <#break>
      <#default>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/prettify/r298/prettify.css">
        <#break>
    </#switch>
</#if>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="/css/base.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav icon -->
    <link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/img/favicon.ico" type="image/x-icon">
  </head>
  <body>