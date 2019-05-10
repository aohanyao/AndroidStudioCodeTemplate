package ${packageName}.view.fragment

import android.os.Bundle
import android.view.View
import com.td.framework.mvp.base.MvpBaseFragment
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
import ${packageName}.presenter.${presenterClass}
import ${ParamPackageName}.${ParamClass}
import ${applicationPackage}.R
/**
 * Created on ${.now}
 * @author: ${USER}
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
            return inflater!!.inflate(R.layout.${layoutName}_${modlueName}, container, false)
        <#else>
            return inflater!!.inflate(R.layout.${layoutName}, container, false)
        </#if>
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
         * 获取BlankFragment的实例
         */
        fun newInstance(): ${fragmentClass} {
            val args = Bundle()
            val fragment = ${fragmentClass}()
            fragment.arguments = args
            return fragment
        }
    }
}
