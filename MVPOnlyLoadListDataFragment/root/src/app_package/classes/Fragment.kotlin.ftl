package ${packageName}.view.fragment

import android.os.Bundle
 <#if isAndroidX>
import androidx.recyclerview.widget.RecyclerView
       <#else>
import android.support.v7.widget.RecyclerView
</#if>
import android.view.View
import com.chad.library.adapter.base.BaseQuickAdapter
import com.td.framework.mvp.base.MvpLoadListDataBaseFragment
<#if modlueName?length gt 1>
  import kotlinx.android.synthetic.main.${modlueName}_${simpleLayoutName}.*
<#else>
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
</#if>
import ${packageName}.presenter.${presenterClass}
import ${packageName}.view.adapter.${AdapterClass}
import ${BeanPackageName}.${BeanClass}
import ${ParamPackageName}.${ParamClass}
import ${applicationPackage}.R
/**
 * Created on ${.now}
 * @author: ${DevloperName}
 * @version:1.0
 * Description:${fragmentTitle}
 */
class ${fragmentClass} : MvpLoadListDataBaseFragment<${presenterClass}, ${BeanClass}>() {


  override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
      super.onViewCreated(view, savedInstanceState)
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

    override fun getLayoutId(): Int {
      <#if modlueName?length gt 1>
          return R.layout.${modlueName}_${layoutName}
      <#else>
          return R.layout.${simpleLayoutName}
      </#if>

    }
    override fun getRecyclerView(): RecyclerView? {
        return ${recyclerView}
    }

    override fun getParam(): ${ParamClass} {
        return ${ParamClass}()
    }
    override fun onRecyclerViewItemChildClick(view: View, position: Int, data: ${BeanClass}) {

    }

    companion object {
      /**
       * 获取${fragmentTitle}的实例
       */
        fun newInstance(): ${fragmentClass} {
            val args = Bundle()
            val fragment = ${fragmentClass}()
            fragment.arguments = args
            return fragment
        }
    }
}
