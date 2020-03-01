# Client

## Connection and Channel Lifespan

Connections 意味着长时间存在，基础协议被设计和优化为长时间运行连接。这意味着每次操作打开一个新的连接，例如消息发布。

通道也意味着长时间存在，但是很多未可达的协议错误导致通道关闭，通道的生命周期可能会比他的connection 短，所以，关闭和从新创建一个新的通道每次操作不是必须和平常的，但是是适当的，当存在怀疑时,第一时间重用通道。

## Using Exchanges and Queues

客户端应用使用exchanges和queues工作，高等级创建协议块，他们必须被“declared"在被使用之前。