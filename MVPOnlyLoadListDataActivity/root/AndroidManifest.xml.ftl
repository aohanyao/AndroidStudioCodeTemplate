<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <application>
        <activity android:name="${packageName}.view.activity.${activityClass}"
                    <#if modlueName?length gt 1>
                  android:label="@string/title_${activityToLayout(activityClass)}_${modlueName}"
                    <#else>
                  android:label="@string/title_${activityToLayout(activityClass)}"
                    </#if>
            <#-- 这里修改了主题样式 -->
                  android:theme="@style/AppTheme.ToolbarHeight"/>
    </application>
</manifest>
