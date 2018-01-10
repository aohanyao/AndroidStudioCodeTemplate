package ${packageName}.view.activity

import ${applicationPackage}.R
import android.os.Bundle
import android.support.v7.widget.RecyclerView
import android.view.View
import com.chad.library.adapter.base.BaseQuickAdapter
import com.td.framework.mvp.base.MvpLoadListDataBaseActivity
import kotlinx.android.synthetic.main.content_user_list.*
import kotlinx.android.synthetic.main.${layoutName}.*
import ${packageName}.presenter.${presenterClass}
import ${packageName}.view.adapter.${AdapterClass}
import ${BeanPackageName}.${BeanClass}
import ${ParamPackageName}.${ParamClass}

/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${activityTitle}
 */
class ${activityClass} : MvpLoadListDataBaseActivity<${presenterClass}, ${BeanClass}>() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
        <#if isImmersive>
          //初始化线性变化的标题栏
          initChangerToolbarGradientColor(R.color.colorPrimary)
        <#else>
            //初始化纯颜色的标题栏
            initGeneralToolBar(R.color.colorPrimary)
        </#if>
        mocker()
    }

    /**
     * 没有接口的时候请调用这个方法
     */
    private fun mocker() {
        isCreate = false
        initAdapter()
        //模拟数据
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


    override fun getRecyclerView(): RecyclerView? {
        return ${recyclerView}
    }

    override fun getParam(): BaseParamsInfo {
        return ${ParamClass}()
    }
    override fun onRecyclerViewItemChildClick(view: View, position: Int, data: ${BeanClass}) {

    }
}
