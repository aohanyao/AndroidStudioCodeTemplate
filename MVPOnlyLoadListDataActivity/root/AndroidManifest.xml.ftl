<#import "../../common/shared_manifest_macros.ftl" as manifestMacros>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="${packageName}">
    <application>
        <activity android:name="${packageName}.view.activity.${activityClass}"
                    <#if modlueName?length gt 1>
                  android:label="@string/title_${activityToLayout(activityClass)}_${modlueName}"
                    <#else>
                  android:label="@string/title_${activityToLayout(activityClass)}"
                    </#if>
            <#-- 这里修改主题样式 -->
                  android:theme="@style/AppTheme.ToolbarHeight"/>
    </application>
</manifest>
