
package ${packageName}.presenter
import com.td.framework.model.bean.CodeMsgModel
import com.td.framework.mvp.contract.PostContract
import com.td.framework.mvp.presenter.PostDataPresenter
import ${ParamPackageName}.${ParamClass}
import io.reactivex.Flowable

/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${fragmentTitle}的Presenter
 */
 class ${presenterClass}(view: PostContract.View)
     : PostDataPresenter<${ParamClass}>(view) {
     override fun getPostFlowable(params: ${ParamClass}): Flowable<CodeMsgModel>? {

         return null
     }

 }
