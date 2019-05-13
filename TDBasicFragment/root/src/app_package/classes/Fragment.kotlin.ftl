package ${packageName}.view.fragment

import android.os.Bundle
import android.view.View
import com.td.framework.base.view.TDBaseFragment
<#if modlueName?length gt 1>
  import kotlinx.android.synthetic.main.${modlueName}_${simpleLayoutName}.*
<#else>
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
</#if>
/**
 * Created on ${.now}
 * @author: ${DevloperName}
 * @version:1.0
 * Description:${fragmentTitle}
 */
class ${fragmentClass} : TDBaseFragment() {


    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {

        <#if modlueName?length gt 1>
            return inflater.inflate(R.layout.${modlueName}_${layoutName}, container, false)
        <#else>
            return inflater.inflate(R.layout.${layoutName}, container, false)
        </#if>
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
