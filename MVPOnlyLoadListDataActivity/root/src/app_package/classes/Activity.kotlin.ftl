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
import ${packageName}.view.adapter.${AdapterClass}
import ${BeanPackageName}.${BeanClass}
import ${ParamPackageName}.${ParamClass}

/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${activityTitle}Activity
 */
class ${activityClass} : MvpLoadListDataBaseActivity<${presenterClass}, ${BeanClass}>() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
          <#if modlueName?length gt 1>
            setContentView(R.layout.${layoutName}_${modlueName})
          <#else>
            setContentView(R.layout.${layoutName})
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
