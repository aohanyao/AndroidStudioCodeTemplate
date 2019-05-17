package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
<#if hasAppBar>
<#else>
import ${superClassFqcn}
</#if>
<#if isNewProject>
import android.view.Menu
import android.view.MenuItem
</#if>
import com.td.framework.base.view.TDBaseActivity
import ${applicationPackage}.R
import kotlinx.android.synthetic.main.${layoutName}.*
<#if includeCppSupport!false>
<#if useFragment!false>
import kotlinx.android.synthetic.main.${fragmentLayoutName}.*
<#else>
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
</#if>
</#if>
/**
 * Created by ${DevloperName} on ${.now}
 * Ver : 1.0
 * name: ${activityTitle}Activity
 * desc: ${description}
 */
class ${activityClass} : TDBaseActivity()  <#-- 继承自己的基类 --> {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

          <#if modlueName?length gt 1>
            setContentView(R.layout.${modlueName}_${layoutName})
          <#else>
            setContentView(R.layout.${layoutName})
          </#if>


<#if parentActivityClass?has_content>
        ${kotlinActionBar}?.setDisplayHomeAsUpEnabled(true)
</#if>
<#include "../../../../common/jni_code_usage.kt.ftl">
    }


<#include "../../../../common/jni_code_snippet.kt.ftl">
}
