<?xml version="1.0" encoding="utf-8"?>
<com.td.framework.ui.refresh.RefreshLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    style="@style/BaseRootLayoutStyle"
    android:id="@+id/${refreshLayout}">
      <#if isAndroidX>
<androidx.recyclerview.widget.RecyclerView
       <#else>
<android.support.v7.widget.RecyclerView
</#if>
            android:id="@+id/${recyclerView}"
            android:layout_width="match_parent"
            android:layout_height="match_parent"/>
</com.td.framework.ui.refresh.RefreshLayout>
