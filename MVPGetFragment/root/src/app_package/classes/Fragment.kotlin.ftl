package ${packageName}.view.fragment

import android.os.Bundle
import android.view.View
import com.yida.cloud.merchants.provider.module.base.AppMvpLoadingFragment
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
import ${packageName}.presenter.${presenterClass}
import ${BeanPackageName}.${BeanClass}
import ${ParamPackageName}.${ParamClass}
import ${applicationPackage}.R
/**
 * Created on ${.now}
 * @author: ${USER}
 * @version:1.0
 * Description:${fragmentTitle}
 */
class ${fragmentClass}  : AppMvpLoadingFragment<${presenterClass}>(), GetContract.View<${BeanClass}> {

    /**
     * 参数对象
     */
    private val mParam by lazy {
          ${ParamClass}()
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {

      <#if modlueName?length gt 1>
          val inflate = inflateView(R.layout.${simpleLayoutName}_${modlueName}, container)
      <#else>
          val inflate = inflateView(R.layout.${simpleLayoutName}, container)
      </#if>
        showLoading()
        return inflate
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
    }


    override fun getSuccess(data: ${BeanClass}) {
        //获取数据成功
    }

    override fun getFail(msg: String?) {
        //获取数据失败
    }


    override fun newP(): ${presenterClass}? {
        return ${presenterClass}(this)
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
