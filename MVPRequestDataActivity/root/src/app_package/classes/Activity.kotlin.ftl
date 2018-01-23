package ${packageName}.view.activity

import android.os.Bundle
import android.support.v7.widget.RecyclerView
import android.view.View
import com.chad.library.adapter.base.BaseQuickAdapter
import com.td.framework.mvp.base.MvpLoadListDataBaseActivity
<#if modlueName?length gt 1>
import kotlinx.android.synthetic.main.${simpleLayoutName}_${modlueName}.*
<#else>
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
</#if>

import ${packageName}.presenter.${presenterClass}
import ${BeanPackageName}.${BeanClass}
import ${ParamPackageName}.${ParamClass}

/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${activityTitle}
 */
class ${activityClass} : MvpRequestDataBaseActivity<${presenterClass}, ${BeanClass}>() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
          <#if modlueName?length gt 1>
            setContentView(inflateView(R.layout.${layoutName}_${modlueName}))
          <#else>
            setContentView(inflateView(R.layout.${layoutName}))
          </#if>
           showLoading()
        <#if isImmersive>
          //初始化线性变化的标题栏
          initChangerToolbarGradientColor(R.color.colorPrimary)
        <#else>
            //初始化纯颜色的标题栏
            initGeneralToolBar(R.color.colorPrimary)
        </#if>
        p?.requestData(${ParamClass}())
    }



    override fun newP(): ${presenterClass}? {
        return ${presenterClass}(this)
    }

    override fun requestDataSuccess(data: ${BeanClass}) {
    }

    override fun onRetry() {
            mockData()
    }
    private fun mockData() {

    }
}
