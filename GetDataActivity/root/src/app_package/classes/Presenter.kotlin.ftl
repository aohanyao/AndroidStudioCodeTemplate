package ${packageName}.presenter

import com.td.framework.model.bean.BaseDataModel
import com.td.framework.mvp.contract.GetContract
import com.td.framework.mvp.presenter.GetDataPresenter
import ${ParamPackageName}.${ParamClass}
import ${BeanPackageName}.${BeanClass}
import io.reactivex.Flowable

/**
 * Created on ${.now}
 * @author: ${USER}
 * @version:1.0
 * Description:${activityTitle}的Presenter
 */
class ${presenterClass}(view: GetContract.View<${BeanClass}>)
    : GetDataPresenter< ${ParamClass}, ${BeanClass}>(view) {
    override fun getGetFlowable(params:  ${ParamClass}): Flowable<BaseDataModel<${BeanClass}>>? {
        return null
    }
}
