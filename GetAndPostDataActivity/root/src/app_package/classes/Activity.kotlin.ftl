package ${packageName}.view.activity

import android.os.Bundle
import android.view.View
import com.td.framework.mvp.base.MvpLoadingActivity
import com.td.framework.mvp.contract.PostAndGetContract
<#if modlueName?length gt 1>
  import kotlinx.android.synthetic.main.${simpleLayoutName}_${modlueName}.*
<#else>
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
</#if>
import ${packageName}.presenter.${presenterClass}
import ${BeanPackageName}.${BeanClass}
import ${ParamPackageName}.${ParamClass}Get
import ${ParamPackageName}.${ParamClass}Post

/**
 * Created on ${.now}
 * @author: ${USER}
 * @version:1.0
 * Description:${activityTitle}Activity
 */
class ${activityClass}  : MvpLoadingActivity<${presenterClass}>(), PostAndGetContract.View<${BeanClass}> {

  /** 获取数据参数对象*/
  private val mParamGet by lazy {
      ${ParamClass}Get()
  }
  /** 提交数据参数对象*/
  private val mParamPost by lazy {
      ${ParamClass}Post()
  }
  override fun onCreate(savedInstanceState: Bundle?) {
      super.onCreate(savedInstanceState)
      <#if modlueName?length gt 1>
        setContentView(inflateView(R.layout.${layoutName}_${modlueName}))
      <#else>
        setContentView(inflateView(R.layout.${layoutName}))
      </#if>
      showLoading()
       p?.getData(mParamGet)

  }

  override fun newP(): ${presenterClass}? {
      return ${presenterClass}(this)
  }


    override fun getDataSuccess(responseData: ${BeanClass}) {
        //获取数据成功
        showContent()
    }

    override fun postDataSuccess() {
       //提交数据成功
    }

    override fun getDataFail() {
        showRetry()
        //获取数据失败
    }

    override fun postDataFail(msg: String?) {
      //提交数据失败
    }

    override fun onRetry() {
      // 重试
    }

}
