<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
        <activity android:name="${packageName}.view.activity.${activityClass}"
                  android:label="@string/title_${activityToLayout(activityClass)}"
                  android:theme="@style/AppTheme.ToolbarHeight"/>

    </application>
</manifest>
