package ${packageName}.presenter

import com.td.framework.model.bean.BaseDataModel
import com.td.framework.model.bean.CodeMsgModel
import com.td.framework.mvp.contract.PostAndGetContract
import com.td.framework.mvp.presenter.PostAndGetPresenter
import ${ParamPackageName}.${ParamClass}Get
import ${ParamPackageName}.${ParamClass}Post
import ${BeanPackageName}.${BeanClass}
import io.reactivex.Flowable
import java.util.concurrent.TimeUnit

/**
 * Created on ${.now}
 * @author: ${DevloperName}
 * @version:1.0
 * Description:${activityTitle}的Presenter
 */
class ${presenterClass}(view: PostAndGetContract.View<${BeanClass}>)
    : PostAndGetPresenter<${BeanClass}, ${ParamClass}Get, ${ParamClass}Post>(view) {
    override fun getDataObservable(params: ${ParamClass}Get): Flowable<BaseDataModel<${BeanClass}>>? {
        // 获取数据
        // 这里模拟的是数据
        return Flowable.timer(2, TimeUnit.SECONDS)
                .map {
                    BaseDataModel<${BeanClass}>()
                            .apply {
                                data = ${BeanClass}()
                            }
                }
    }

    override fun postDataObservable(params: ${ParamClass}Post): Flowable<CodeMsgModel>? {
        // 提交数据
        // 这里是模拟提交
        return Flowable.timer(2, TimeUnit.SECONDS)
                .map {
                    CodeMsgModel()
                }
    }

}
