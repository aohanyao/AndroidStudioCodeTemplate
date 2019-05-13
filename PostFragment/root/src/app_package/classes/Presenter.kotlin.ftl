
package ${packageName}.presenter
import com.td.framework.model.bean.CodeMsgModel
import com.td.framework.mvp.contract.PostContract
import com.td.framework.mvp.presenter.PostDataPresenter
import ${ParamPackageName}.${ParamClass}
import io.reactivex.Flowable
import java.util.concurrent.TimeUnit
/**
 * Created on ${.now}
 * @author: ${DevloperName}
 * @version:1.0
 * Description:${fragmentTitle}的Presenter
 */
 class ${presenterClass}(view: PostContract.View)
     : PostDataPresenter<${ParamClass}>(view) {
     override fun getPostFlowable(params: ${ParamClass}): Flowable<CodeMsgModel>? {
        // 提交数据
        // 这里是模拟提交
        return Flowable.timer(2, TimeUnit.SECONDS)
                .map {
                    CodeMsgModel()
                }
     }

 }
