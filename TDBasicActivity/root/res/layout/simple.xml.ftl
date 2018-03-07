<?xml version="1.0" encoding="utf-8"?>
<LinearLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    style="@style/BaseRootLayoutStyle"
<#if hasAppBar && appBarLayoutName??>
    app:layout_behavior="@string/appbar_scrolling_view_behavior"
      <#if modlueName?length gt 1>
    tools:showIn="@layout/${appBarLayoutName}_${modlueName}"
      <#else>
        tools:showIn="@layout/${appBarLayoutName}"
      </#if>
</#if>
    tools:context="${packageName}.${activityClass}">

  <!--${activityTitle}CXML-->
</LinearLayout>
