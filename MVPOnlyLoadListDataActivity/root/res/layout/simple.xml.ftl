<?xml version="1.0" encoding="utf-8"?>
<com.td.framework.ui.refresh.RefreshLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    style="@style/BaseRootLayoutStyle"
    android:id="@+id/${refreshLayout}"
    app:layout_behavior="@string/appbar_scrolling_view_behavior"
    <#if modlueName?length gt 1>
      tools:showIn="@layout/${modlueName}_${appBarLayoutName}"
    <#else>
      tools:showIn="@layout/${appBarLayoutName}"
    </#if>
    tools:context="${packageName}.view.activity.${activityClass}">
      <!--${activityTitle}CXML-->
      <#if isAndroidX>
<androidx.recyclerview.widget.RecyclerView
       <#else>
<android.support.v7.widget.RecyclerView
</#if>
            android:id="@+id/${recyclerView}"
            android:layout_width="match_parent"
            android:layout_height="match_parent"/>
</com.td.framework.ui.refresh.RefreshLayout>
