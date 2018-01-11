
package ${packageName}.presenter
import com.td.framework.mvp.contract.RequestDataContract
import com.td.framework.mvp.presenter.RequestDataPresenter
import ${ParamPackageName}.${ParamClass}
import ${BeanPackageName}.${BeanClass}
import io.reactivex.Flowable

/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${fragmentTitle}的Presenter
 */
class  ${presenterClass}(view: RequestDataContract.View<${BeanClass}>)
    : RequestDataPresenter<${BeanClass}, ${ParamClass}>(view) {


    override fun getRequestDataObservable(params: ${ParamClass}): Flowable<${BeanClass}>? {

        return null
    }
}
