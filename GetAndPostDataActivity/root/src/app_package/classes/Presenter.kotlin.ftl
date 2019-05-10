package ${packageName}.presenter

import com.td.framework.model.bean.BaseDataModel
import com.td.framework.model.bean.CodeMsgModel
import com.td.framework.mvp.contract.PostAndGetContract
import com.td.framework.mvp.presenter.PostAndGetPresenter
import ${ParamPackageName}.${ParamClass}Get
import ${ParamPackageName}.${ParamClass}Post
import ${BeanPackageName}.${BeanClass}
import io.reactivex.Flowable

/**
 * Created on ${.now}
 * @author: ${USER}
 * @version:1.0
 * Description:${activityTitle}的Presenter
 */
class ${presenterClass}(view: PostAndGetContract.View<${BeanClass}>)
    : PostAndGetPresenter<${BeanClass}, ${ParamClass}Get, ${ParamClass}Post>(view) {
    override fun getDataObservable(params: ${ParamClass}Get): Flowable<BaseDataModel<${BeanClass}>>? {
        //获取数据
        return null
    }

    override fun postDataObservable(params: ${ParamClass}Post): Flowable<CodeMsgModel>? {
        //提交数据
        return null
    }

}
