# Design
ChainDemo           - 链式编程 <br>
Business            - 多业务处理 例:多个cell刷新 免indexPath.row判断 <br>
ReflexDemo          - 反射机制  例:无需引入头文件 执行方法 | 动态添加方法 且 动态执行 有些人拿他当玩中间件<br>
RuntimeArchiver     - 解挡归档时 无需写多个属性  获取属性名自动完成 <br>
Semaphore           - 信号量 方法的等待执行 <br>
SemaphoreTaskLock   - 信号量的使用 异步队列执行方法 保证方法耗时执行完毕 才停止 例:音视频写入 <br>
OCAndCPP            - OC ->调用C++ ->中调用 OC  混编<br>
PackageConfig       - 封装 默认参数设置 + 链式设置 <br>
DCPlay              - 相机 GPU渲染 CMSampleBufferRef || 非AVCaptureVideoPreviewLayer <br>
Hook                - 钩子 钩取方法时 Hook load loadView 运行生命 比较 在load里面 交换可能存在问题时 <br>
FactoryDemo         - 工厂方法 | 子类对象的创建时机 就是工厂类干的 <br>
NSThreadSynchronized - 多个线程操作同一文件 造成线程安全问题 <br>
synchronizedObjec    - 单利 - 严谨的copy || 注意函数都会付出取锁的代价 代码中也包含dispatch_once方式 swift中已无once <br>
NSStringCopyStrong   - 字符串strong copy 面试题必问 || 附件讲解一下 深拷贝 浅拷贝 <br>
BlockManage          - block 是怎么循环引用的  weakSelf 延时用对象 解决方案<br>
