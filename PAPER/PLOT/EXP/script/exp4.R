A <- matrix(c(19, 3, 1, 2,
              2, 0, 2, 21,
              22, 0, 3, 0,
              6, 0, 0, 19,
              2, 9, 4, 10),
            nrow=4, ncol=5)

pdf("exp4.pdf", width=16/2.54, height=10/2.54,
    pointsize=10)
par(mgp=c(2.2,0.45,0), tcl=-0.4, mar=c(3.3,3.6,1.1,1.1))

barplot(A,
        names.arg=c(1, 2, 3, 4, 5),
        xlab="Run Count",
        ylab="Robot Count",
        col=c("magenta", "blue", "orange", "red"),
        beside=TRUE,
        ylim=c(0,25)
        )
legend(x=20.5, y=25,
       c("room 0", "room 1", "room 2", "room 3"),
       cex=1,
       title="Robot's opinion",
       col=c("magenta", "blue", "orange", "red"),
       pch=c(22,0,0)
       )
dev.off()

