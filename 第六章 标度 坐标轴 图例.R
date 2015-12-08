---
title: "第六章 标度 坐标轴 图例"
subtitle: "ggplot2 数据分析与图形艺术"
author: "QinQin0912"
date: "2015年12月5日"
output: html_document
---

```{r}
plot<-qplot(cty,hwy,data=mpg)
plot+aes(x=drv)
plot+aes(x=drv)+scale_x_discrete()
plot
```

```{r}
p<-qplot(sleep_total,sleep_cycle,data=msleep,colour=vore)
p
##显式添加默认标度
p+scale_colour_hue()
##修改默认标度的参数,这里改变了图例的外观
p+scale_colour_hue("What does\nit eat?",
                   breaks=c("herbi","carni","omin",NA),
                   labels=c("plants","meats","both","don't know"))
##使用一种不同的标度
p+scale_colour_brewer(palette = "Set1")
```

```{r}
p<-qplot(cty,hwy,data=mpg,colour=displ)
p
p+scale_x_continuous("City mpg")
p+xlab("City mpg")
p+ylab("Highway mpg")
p+labs(x="City mpg",y="Highway",colour="Displacement")
p+xlab(expression(frac(miles,gallon)))
```

```{r}
p<-plot(cyl,wt,data=mtcars)
p
p+scale_x_continuous(breaks=c(5.5,6.5))
p+scale_x_continuous(limits=c(5.5,6.5))
p<-qplot(wt,cyl,data=mtcars,colour=cyl)
p
p+scale_colour_gradient(breaks=c(5.5,6.5))#影响坐标轴图例
p+scale_colour_gradient(limits=c(5.5,6.5))#影响在图形上的元素
```
