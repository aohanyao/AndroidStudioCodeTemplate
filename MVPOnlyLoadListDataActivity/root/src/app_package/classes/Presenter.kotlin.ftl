package ${packageName}.presenter

import com.td.framework.model.bean.ListDataModel
import com.td.framework.mvp.contract.GeneralLoadDataContract
import com.td.framework.mvp.presenter.LoadDataListPresenter
import ${ParamPackageName}.${ParamClass}
import ${BeanPackageName}.${BeanClass}
import io.reactivex.Flowable

/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${activityTitle}的Presenter
 */
class  ${presenterClass}(view: GeneralLoadDataContract.GeneralLoadDataView<${BeanClass}>)
    : LoadDataListPresenter<${BeanClass}, ${ParamClass}>(view) {


    override fun getRequestDataObservable(params: ${ParamClass}): Flowable<ListDataModel<${BeanClass}>>? {
        /**
         *pageSize --> 页大小
         *mPagerIndex --> 当前页码
         */
        return null
    }
}
