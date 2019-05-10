<#import "../../common/shared_manifest_macros.ftl" as manifestMacros>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
         <#if modlueName?length gt 1>
              <activity android:name="${packageName}.view.activity.${activityClass}"
                        android:label="@string/title_${activityToLayout(activityClass)}_${modlueName}"
                        android:theme="@style/AppTheme.ToolbarHeight"/>
          <#else>
          <activity android:name="${packageName}.view.activity.${activityClass}"
                    android:label="@string/title_${activityToLayout(activityClass)}"
                    android:theme="@style/AppTheme.ToolbarHeight"/>
          </#if>


    </application>
</manifest>
