package ${packageName}.view.adapter

import com.chad.library.adapter.base.BaseQuickAdapter
import com.chad.library.adapter.base.BaseViewHolder
import ${applicationPackage}.R
import ${BeanPackageName}.${BeanClass}

/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${activityTitle}的适配器
 * ChangeLog:
 */
class ${AdapterClass}(datas: List<${BeanClass}>) : BaseQuickAdapter<${BeanClass},
  BaseViewHolder>(R.layout.${listLayoutName}, datas) {
    override fun convert(helper: BaseViewHolder?, item: ${BeanClass}?) {

    }
}
