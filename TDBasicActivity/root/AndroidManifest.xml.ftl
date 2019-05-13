<#import "../../common/shared_manifest_macros.ftl" as manifestMacros>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
        <activity android:name="${packageName}.${activityClass}"
            <#if generateActivityTitle!true>
                <#if isNewProject>
                    android:label="@string/app_name"
                <#else>
                    <#if modlueName?length gt 1>
                      android:label="@string/title_${modlueName}_${activityToLayout(activityClass)}"
                    <#else>
                      android:label="@string/title_${activityToLayout(activityClass)}"
                    </#if>
                </#if>
            </#if>
            <#-- 这里修改了主题样式 -->
                android:theme="@style/AppTheme.ToolbarHeight"
            <#if buildApi gte 16 && parentActivityClass != "">
                android:parentActivityName="${parentActivityClass}"
            </#if>>
            <#if parentActivityClass != "">
                <meta-data android:name="android.support.PARENT_ACTIVITY"
                    android:value="${parentActivityClass}" />
            </#if>
            <@manifestMacros.commonActivityBody />
        </activity>
    </application>
</manifest>
