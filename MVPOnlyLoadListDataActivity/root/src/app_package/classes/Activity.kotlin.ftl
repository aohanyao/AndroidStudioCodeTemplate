package ${packageName}.view.activity

import android.os.Bundle
 <#if isAndroidX>
import androidx.recyclerview.widget.RecyclerView
       <#else>
import android.support.v7.widget.RecyclerView
</#if>
import android.view.View
import com.chad.library.adapter.base.BaseQuickAdapter
import com.td.framework.mvp.model.BaseParamsInfo
import com.td.framework.mvp.base.MvpLoadListDataBaseActivity
<#if modlueName?length gt 1>
  import kotlinx.android.synthetic.main.${modlueName}_${simpleLayoutName}.*
<#else>
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
</#if>
import ${packageName}.presenter.${presenterClass}
import ${packageName}.view.adapter.${AdapterClass}
import ${BeanPackageName}.${BeanClass}
import ${ParamPackageName}.${ParamClass}

/**
 * Created on ${.now}
 * @author: ${DevloperName}
 * @version:1.0
 * Description:${activityTitle}Activity
 */
class ${activityClass} : MvpLoadListDataBaseActivity<${presenterClass}, ${BeanClass}>() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
          <#if modlueName?length gt 1>
            setContentView(inflateView(R.layout.${modlueName}_${layoutName}))
          <#else>
            setContentView(inflateView(R.layout.${layoutName}))
          </#if>
    }


    override fun newP(): ${presenterClass}? {
        return ${presenterClass}(this)
    }

    override fun getSwipeRefreshLayout(): View? {
        return ${refreshLayout}
    }

    override fun getAdapter(): BaseQuickAdapter<${BeanClass}, *>? {
        return ${AdapterClass}(mDatas)
    }


    override fun getRecyclerView(): RecyclerView? {
        return ${recyclerView}
    }

    override fun getParam(): BaseParamsInfo {
        return ${ParamClass}()
    }
    override fun onRecyclerViewItemChildClick(view: View, position: Int, data: ${BeanClass}) {

    }
}
