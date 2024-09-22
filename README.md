## 本项目实现的最终作用是基于SSH汽车票销售管理系统
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 修改车次信息
 - 公告信息管理
 - 管理员登录
 - 订单管理
### 第2个角色为用户角色，实现了如下功能：
 - 我的信息
 - 我的订单
 - 查看车次列表
 - 用户注册
 - 用户登录
 - 系统公告查看
 - 订票
 - 车次查询
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_qichep

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [t_admin](#t_admin) | 管理员表 |
| [t_checi](#t_checi) |  |
| [t_gaiqian](#t_gaiqian) |  |
| [t_gonggao](#t_gonggao) |  |
| [t_user](#t_user) | 用户表 |
| [t_yuding](#t_yuding) |  |

**表名：** <a id="t_admin">t_admin</a>

**说明：** 管理员表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | UserId |   int   | 10 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | userName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | userPw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |

**表名：** <a id="t_checi">t_checi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | shifazhan |   varchar   | 66 |   0    |    Y     |  N   |   NULL    |   |
|  3   | daodazhan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | piaoshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | startshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | endshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | piaojia |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | piaoshu |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  9   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | zhongjian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_gaiqian">t_gaiqian</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | yuanid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xianid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | yid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | tijiaoshijian |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  6   | shenheshijian |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  7   | status |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  8   | bz |   varchar   | 500 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_gonggao">t_gonggao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | gonggao_id |   int   | 10 |   0    |    N     |  Y   |       | 公告ID  |
|  2   | gonggao_title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 公告标题  |
|  3   | gonggao_content |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    | 公告内容  |
|  4   | gonggao_data |   varchar   | 77 |   0    |    Y     |  N   |   NULL    |   |
|  5   | fujian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件  |

**表名：** <a id="t_user">t_user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | loginname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 登录名称  |
|  3   | loginpw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 登录密码  |
|  4   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  5   | sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | age |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 年龄  |
|  7   | ADDRESS |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  8   | tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  9   | email |   varchar   | 45 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  10   | fujian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件  |
|  11   | jifen |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  12   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_yuding">t_yuding</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | user_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  3   | checi_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | shuliang |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | zongjine |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | nidexingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | lianxihua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | songhuodizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | zhifufangshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | yudingshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | zhuangtai |   varchar   | 11 |   0    |    Y     |  N   |   NULL    |   |

