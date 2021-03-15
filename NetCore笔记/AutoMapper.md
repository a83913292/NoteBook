# AutoMapper 组件的使用

## 使用AutoMapper

1.在NuGet搜索AutoMapper.extensions.Microsoft.DependencyInjection 点击下载,安装

2 在StartUp 的 ConfigureServices-> 注册 AutoMapper

```C#
public void ConfigureServices(IServiceCollection services)
{
          ....
   services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
}
```

3.在项目目录下创建一个Profile 文件夹->创建一个Profile后缀的Class

4.改类集成ProFile 父类

5.创建构造函数中用CreateMap方法完成映射

```C#
public class TouristRouteProfile : Profile
    {
        public TouristRouteProfile()
        {
            CreateMap<TouristRoute, TouristRouteDto>()
                
        }
    }
```

7 用CreateMap.ForMember 完成自定义映射

```c#
public class TouristRouteProfile : Profile
{
    public TouristRouteProfile()
    {
        CreateMap<TouristRoute, TouristRouteDto>()
            .ForMember(
            dest => dest.Price,
            opt => opt.MapFrom(src => src.OriginalPrice * (decimal)(src.DiscountPresent ??                               1)
            );

     }
}
```



dest 是Dto 映射对象

opt  是原始对象

opt.MapFrom 自定义原始对象的数据处理

6 给构造函数里面控制器 注入 AutoMapper

```c#
 private readonly IMapper _mapper;
 public TouristRoutesController(IMapper mapper)
 {
      mapper = mapper;
 }
```
7.使用_mapper.Map() 方法映射

```c#
var tourisRouteDto = _mapper.Map<TouristRouteDto>(touristRouteFromRepo);
```

8.可以用AoutMapper 映射列表

```c#
 var touristRoutesDto = _mapper.Map<IEnumerable<TouristRouteDto>>(touristRoutesFromRepo);
```

## 获取嵌套对象关系

