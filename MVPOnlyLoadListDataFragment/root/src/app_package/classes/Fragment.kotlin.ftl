package ${packageName}.view.activity

import android.os.Bundle
import android.support.v7.widget.RecyclerView
import android.view.View
import com.chad.library.adapter.base.BaseQuickAdapter
import com.td.framework.mvp.base.MvpLoadListDataBaseFragment
import kotlinx.android.synthetic.main.${simpleLayoutName}.*
import ${packageName}.presenter.${presenterClass}
import ${packageName}.view.adapter.${AdapterClass}
import ${BeanPackageName}.${BeanClass}
import ${ParamPackageName}.${ParamClass}
import ${applicationPackage}.R
/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${fragmentTitle}
 */
class ${fragmentClass} : MvpLoadListDataBaseFragment<${presenterClass}, ${BeanClass}>() {


  override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
      isCreate=true
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

    override fun newP(): ${presenterClass}? {
        return ${presenterClass}(this)
    }

    override fun getSwipeRefreshLayout(): View? {
        return ${refreshLayout}
    }

    override fun getAdapter(): BaseQuickAdapter<${BeanClass}, *>? {
        return ${AdapterClass}(mDatas)
    }

    override fun getLayoutId(): Int {
        return R.layout.${simpleLayoutName}
    }
    override fun getRecyclerView(): RecyclerView? {
        return ${recyclerView}
    }

    override fun getParam(): ${ParamClass} {
        return ${ParamClass}()
    }
    override fun onRecyclerViewItemChildClick(view: View, position: Int, data: ${BeanClass}) {

    }

    companion object {
      /**
       * 获取${fragmentTitle}的实例
       */
        fun newInstance(): ${fragmentClass} {
            val args = Bundle()
            val fragment = ${fragmentClass}()
            fragment.arguments = args
            return fragment
        }
    }
}
