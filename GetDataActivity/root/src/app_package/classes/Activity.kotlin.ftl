package ${packageName}.view.activity

import android.os.Bundle
import android.view.View
import com.td.framework.mvp.base.MvpLoadingActivity
import com.td.framework.mvp.contract.GetContract
<#if modlueName?length gt 1>
  import kotlinx.android.synthetic.main.${modlueName}_${simpleLayoutName}.*
<#else>
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
</#if>
import ${packageName}.presenter.${presenterClass}
import ${BeanPackageName}.${BeanClass}
import ${ParamPackageName}.${ParamClass}

/**
 * Created on ${.now}
 * @author: ${DevloperName}
 * @version:1.0
 * Description:${activityTitle}Activity
 */
class ${activityClass} : MvpLoadingActivity<${presenterClass}>(), GetContract.View<${BeanClass}> {


    /** 参数对象*/
    private val mParam by lazy {
        ${ParamClass}()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        <#if modlueName?length gt 1>
          setContentView(inflateView(R.layout.${modlueName}_${layoutName}))
        <#else>
          setContentView(inflateView(R.layout.${layoutName}))
        </#if>
    }

    override fun getSuccess(data: ${BeanClass}) {
      //TODO 加载数据成功
    }


     override fun getFail(msg: String?) {
       //TODO 加载数据失败
     }

     override fun onRetry() {
       //TODO 重试
     }

    override fun newP(): ${presenterClass}? {
        return ${presenterClass}(this)
    }
}
