#Building a summary list for a summary table

my_sum <- 
  list("Archaeological samples" = 
         list("δC13 mean" = ~ mean(C13ap, na.rm=TRUE),
              "δC13 sd" = ~ sd(C13ap, na.rm=TRUE),
              "δO18 mean" = ~ mean(O18ap, na.rm=TRUE),
              "δO18 sd" = ~ sd(O18ap, na.rm=TRUE)),
       "Modern samples" = 
         list("δC13 mean" = ~ mean(modC13, na.rm=TRUE),
              "δC13 sd" = ~ sd(modC13, na.rm=TRUE),
              "δO18 mean" = ~ mean(modO18, na.rm=TRUE),
              "δO18 sd" = ~ sd(modO18, na.rm=TRUE))
  )

summary_table(iso, my_sum[1])
summary_table(modern, my_sum[2])