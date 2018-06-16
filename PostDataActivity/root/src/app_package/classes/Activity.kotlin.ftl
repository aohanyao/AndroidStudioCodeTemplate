package ${packageName}.view.activity

import android.os.Bundle
import android.view.View
import com.td.framework.mvp.base.MvpBaseActivity
import com.td.framework.mvp.contract.PostContract
<#if modlueName?length gt 1>
import kotlinx.android.synthetic.main.${simpleLayoutName}_${modlueName}.*
<#else>
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
</#if>

import ${packageName}.presenter.${presenterClass}
import ${ParamPackageName}.${ParamClass}

/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${activityTitle}
 */
class ${activityClass} : MvpBaseActivity< ${presenterClass}>(), PostContract.View {

  /** 参数对象*/
  private val mParam by lazy {
        ${ParamClass}()
  }

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

    override fun postSuccess() {
    }

    override fun postFail(msg: String?) {
    }

}
