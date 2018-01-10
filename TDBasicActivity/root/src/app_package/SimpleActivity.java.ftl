package ${packageName};

import android.os.Bundle;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>
<#if hasAppBar>
import android.view.View;
<#else>
import ${superClassFqcn};
</#if>
<#if isNewProject>
import android.view.Menu;
import android.view.MenuItem;
</#if>
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
/**
 * Created by jc on ${.now}
 * Ver : 1.0
 * name: ${activityTitle}Activity
 * desc: ${description}
 */
public class ${activityClass} extends TDBaseActivity()  <#-- 继承了自己的基类 --> {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
<#if hasAppBar>
        <#if isImmersive>
          initChangerToolbarGradientColor(R.color.colorPrimary)
        <#else>
            initGeneralToolBar(R.color.colorPrimary)
        </#if>
</#if>
<#if parentActivityClass != "">
        get${Support}ActionBar().setDisplayHomeAsUpEnabled(true);
</#if>
<#include "../../../../common/jni_code_usage.java.ftl">
    }

<#if isNewProject>
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.${menuName}, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
</#if>
<#include "../../../../common/jni_code_snippet.java.ftl">
}
