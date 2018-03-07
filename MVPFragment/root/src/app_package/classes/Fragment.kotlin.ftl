package ${packageName}.view.fragment

import android.os.Bundle
import android.view.View
import com.td.framework.mvp.base.MvpLoadListDataBaseFragment
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
import ${packageName}.presenter.${presenterClass}
import ${BeanPackageName}.${BeanClass}
import ${ParamPackageName}.${ParamClass}
import ${applicationPackage}.R
/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${fragmentTitle}
 */
class ${fragmentClass} : MvpRequestDataBaseFragment<${presenterClass}, ${BeanClass}>() {

    /**
     * 参数对象
     */
    private val mParam by lazy {
          ${ParamClass}()
    }

    override fun onCreateView(inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View? {

      <#if modlueName?length gt 1>
          val inflate = inflateView(R.layout.${simpleLayoutName}_${modlueName}, container)
      <#else>
          val inflate = inflateView(R.layout.${simpleLayoutName}, container)
      </#if>
        showLoading()
        return inflate
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        isCreate = true
        super.onViewCreated(view, savedInstanceState)
        mocker()
    }

    /**
     * 没有接口的时候请调用这个方法
     */
    private fun mocker() {
        //模拟数据
        showContent()
    }

    override fun requestDataSuccess(data: ${BeanClass}) {
        //请求成功
    }


    override fun requestResultIsEmpty() {
        //请求为空
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
