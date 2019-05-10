package ${packageName}.view.fragment

import android.os.Bundle
import android.view.View
import com.td.framework.mvp.base.MvpBaseFragment
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
/**
 * Created on ${.now}
 * @author: ${USER}
 * @version:1.0
 * Description:${fragmentTitle}
 */
class ${fragmentClass} : TDBaseFragment() {


    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {

        <#if modlueName?length gt 1>
            return inflater.inflate(R.layout.${layoutName}_${modlueName}, container, false)
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
