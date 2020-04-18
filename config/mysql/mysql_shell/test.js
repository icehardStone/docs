
/*
 * 创建一个集群，
 * adoptFromGR: 在一个已经存在的组复制上创建一个集群
 */
 // dba.checkInstanceConfiguration('root@127.0.0.1:3308')
 // dba.configureLocalInstance()
var cluster = dba.createCluster('prodCluster',{adoptFromGR:true};
cluster.status();
/*
 * 检查配置
 * dba.checkInstanceConfiguration('root@localhost:3308') 
 * 出现问题:
 * Dba.checkInstanceConfiguration: This function is not available through a session  to an instance belonging to an unmanaged replication group (RuntimeError)
 * 解决方法:
 * 这是由于组复制已启动，需要将启动的组复制关闭。在每个MySQL组复制成员中登陆MySQL执行
 * stop group_replication
 */