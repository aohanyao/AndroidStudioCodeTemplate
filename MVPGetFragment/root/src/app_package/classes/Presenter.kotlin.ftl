package ${packageName}.presenter

import com.td.framework.model.bean.BaseDataModel
import com.td.framework.mvp.contract.GetContract
import com.td.framework.mvp.presenter.GetDataPresenter
import ${ParamPackageName}.${ParamClass}
import ${BeanPackageName}.${BeanClass}
import io.reactivex.Flowable
import java.util.concurrent.TimeUnit
/**
 * Created on ${.now}
 * @author: ${DevloperName}
 * @version:1.0
 * Description:${fragmentTitle}的Presenter
 */
class ${presenterClass}(view: GetContract.View<${BeanClass}>)
    : GetDataPresenter< ${ParamClass}, ${BeanClass}>(view) {
    override fun getGetFlowable(params:  ${ParamClass}): Flowable<BaseDataModel<${BeanClass}>>? {
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
}
