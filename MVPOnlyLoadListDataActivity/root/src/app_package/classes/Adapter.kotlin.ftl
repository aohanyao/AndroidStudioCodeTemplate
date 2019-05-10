package ${packageName}.view.adapter

import com.chad.library.adapter.base.BaseQuickAdapter
import com.chad.library.adapter.base.BaseViewHolder

import ${BeanPackageName}.${BeanClass}
<#if applicationPackage??>
</#if>
/**
 * Created on ${.now}
 * @author: ${DevloperName}
 * @version:1.0
 * Description:${activityTitle}的适配器
 * ChangeLog:
 */
class ${AdapterClass}(datas: List<${BeanClass}>) : BaseQuickAdapter<${BeanClass},
<#if modlueName?length gt 1>
  BaseViewHolder>(R.layout.${modlueName}_${listLayoutName}, datas) {
<#else>
  BaseViewHolder>(R.layout.${listLayoutName}, datas) {
</#if>

    override fun convert(helper: BaseViewHolder?, item: ${BeanClass}?) {

    }
}
