package ${packageName}.view.fragment

import android.os.Bundle
import android.view.View
import com.td.framework.mvp.base.MvpBaseFragment
<#if modlueName?length gt 1>
  import kotlinx.android.synthetic.main.${modlueName}_${simpleLayoutName}.*
<#else>
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
</#if>
import ${packageName}.presenter.${presenterClass}
import ${ParamPackageName}.${ParamClass}
import ${applicationPackage}.R
import com.td.framework.mvp.contract.PostContract

/**
 * Created on ${.now}
 * @author: ${DevloperName}
 * @version:1.0
 * Description:${fragmentTitle}
 */
class ${fragmentClass} : MvpBaseFragment< ${presenterClass}>(), PostContract.View {

  /**参数对象*/
  private val mParam by lazy {
        ${ParamClass}()
  }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {

      <#if modlueName?length gt 1>
          val inflate = inflateView(R.layout.${modlueName}_${simpleLayoutName}, container)
      <#else>
          val inflate = inflateView(R.layout.${simpleLayoutName}, container)
      </#if>
        return inflate
    }

    override fun newP(): ${presenterClass}? {
        return ${presenterClass}(this)
    }

    override fun postSuccess() {
    }

    override fun postFail(msg: String?) {
    }
    companion object {
        /**
         * 获取${fragmentClass}的实例
         */
        fun newInstance(): ${fragmentClass} {
            val args = Bundle()
            val fragment = ${fragmentClass}()
            fragment.arguments = args
            return fragment
        }
    }
}
