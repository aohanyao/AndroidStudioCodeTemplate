<#import "../values/manifest_strings.xml.ftl" as manifestMacros>
<?xml version="1.0" encoding="utf-8"?>
<android.support.design.widget.CoordinatorLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context="${packageName}.view.activity.${activityClass}">
  <#-- 将一些东西替换成了 自己的页面  样式等 -->
    <android.support.design.widget.AppBarLayout
            style="@style/AppBarLayoutStyle"
            app:elevation="@dimen/elevation_somthing">

            <RelativeLayout
                android:layout_width="match_parent"
                android:layout_height="wrap_content">

                <android.support.v7.widget.Toolbar
                    style="@style/BaseToolbarStyle"
                    app:popupTheme="@style/AppTheme.PopupOverlay" />

                    <TextView
                      style="@style/ToolBarNavTextStyle"
                      android:text="@string/call_back"/>

                  <TextView
                      style="@style/ToolBarTitleStyle"
                      <#if modlueName?length gt 1>
                      android:text="@string/title_${activityToLayout(activityClass)}_${modlueName}"
                      <#else>
                      android:text="@string/title_${activityToLayout(activityClass)}"
                      </#if>
                      />
                      <include layout="@layout/layout_toolbar_line"/>
                      
            </RelativeLayout>

        </android.support.design.widget.AppBarLayout>


        <#if modlueName?length gt 1>
        <include layout="@layout/${simpleLayoutName}_${modlueName}"/>

        <#else>
        <include layout="@layout/${simpleLayoutName}"/>
        </#if>


</android.support.design.widget.CoordinatorLayout>
