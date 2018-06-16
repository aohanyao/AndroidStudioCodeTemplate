package ${packageName}.presenter

import com.td.framework.model.bean.ListDataModel
import com.td.framework.mvp.contract.GeneralLoadDataContract
import com.td.framework.mvp.presenter.LoadDataListPresenter
import ${ParamPackageName}.${ParamClass}
import ${BeanPackageName}.${BeanClass}
import io.reactivex.Flowable
import java.util.concurrent.TimeUnit

/**
 * Created on ${.now}
 * @author: jc
 * @version:1.0
 * Description:${fragmentTitle}的Presenter
 */
class  ${presenterClass}(view: GeneralLoadDataContract.GeneralLoadDataView<${BeanClass}>)
    : LoadDataListPresenter<${BeanClass}, ${ParamClass}>(view) {


    override fun getRequestDataObservable(params: ${ParamClass}): Flowable<ListDataModel<${BeanClass}>>? {
        /**
         *pageSize --> 页大小
         *mPagerIndex --> 当前页码
         */
         //-----------------------------模拟数据---------------------------------
         return Flowable.timer(2, TimeUnit.SECONDS)
                 .map {
                     object : ListDataModel<${BeanClass}> {
                         override val maxPage: Int
                             get() = 1
                         override val list: List<${BeanClass}>
                             get() = arrayListOf<${BeanClass}>()
                                     .apply {
                                         add(${BeanClass}())
                                         add(${BeanClass}())
                                         add(${BeanClass}())
                                         add(${BeanClass}())
                                         add(${BeanClass}())
                                         add(${BeanClass}())
                                     }
                     }
                 }
         //-----------------------------模拟数据---------------------------------
    }
}
